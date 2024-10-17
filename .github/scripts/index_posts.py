import os
import yaml
import json
from datetime import date

POSTS_DIR = os.path.join(os.path.dirname(__file__), '..', '..', 'posts')
OUTPUT_DIR = os.path.join(os.path.dirname(__file__), '..', '..', 'index')

os.makedirs(OUTPUT_DIR, exist_ok=True)

def parse_frontmatter(file_path):
    with open(file_path, 'r') as file:
        content = file.read()
        frontmatter = content.split('---')[1]
        return yaml.full_load(frontmatter)
    
def get_featured_slugs():
    with open(os.path.join(POSTS_DIR, 'featured.txt'), 'r') as file:
        return file.read().splitlines()
    
class DateTimeEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, date):
            return obj.isoformat()
        return super().default(obj)

def main():
    featured = get_featured_slugs()
    featured_array = []

    for category in os.listdir(POSTS_DIR):
        category_folder = os.path.join(POSTS_DIR, category)
        if not os.path.isdir(category_folder):
            # Skip files like the featured.txt file
            continue
        
        json_array = []
        for post in os.listdir(category_folder):
            post_folder = os.path.join(category_folder, post)
            if not os.path.isdir(post_folder):
                continue
            
            index_file = os.path.join(post_folder, 'index.md')
            if not os.path.isfile(index_file):
                continue
            
            frontmatter = parse_frontmatter(index_file)
            frontmatter['slug'] = post
            frontmatter['category'] = category
            if post in featured:
                featured_array.append(frontmatter)
            json_array.append(frontmatter)

        json_output_file = os.path.join(OUTPUT_DIR, f'{category}.json')
        with open(json_output_file, 'w') as json_file:
            json.dump(json_array, json_file, indent=None, cls=DateTimeEncoder)

    json_output_file = os.path.join(OUTPUT_DIR, 'featured.json')
    with open(json_output_file, 'w') as json_file:
        json.dump(featured_array, json_file, indent=None, cls=DateTimeEncoder)

if __name__ == '__main__':
    main()
