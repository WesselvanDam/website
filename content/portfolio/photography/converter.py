import os
from PIL import Image

def ensure_webp_format(directory):
    """Ensure all images in the directory are in webp format."""
    for filename in os.listdir(directory):
        if not filename.lower().endswith('.webp'):
            print(f"Warning: {filename} in {directory} is not in webp format.")

def compress_and_convert_images(originals_dir, compressed_dir):
    """Compress and convert images from originals_dir to compressed_dir."""
    if not os.path.exists(compressed_dir):
        os.makedirs(compressed_dir)

    originals = {os.path.splitext(f)[0]: f for f in os.listdir(originals_dir) if os.path.isfile(os.path.join(originals_dir, f))}
    compressed = {os.path.splitext(f)[0]: f for f in os.listdir(compressed_dir) if os.path.isfile(os.path.join(compressed_dir, f))}

    for original_name, original_file in originals.items():
        if original_name not in compressed:
            original_path = os.path.join(originals_dir, original_file)
            compressed_path = os.path.join(compressed_dir, f"{original_name}.webp")

            with Image.open(original_path) as img:
                # Resize image if width exceeds 1600 pixels
                if img.width > 1600:
                    new_height = int((1600 / img.width) * img.height)
                    img = img.resize((1600, new_height), Image.LANCZOS)

                # Save image in webp format with 90% quality
                img.save(compressed_path, "webp", quality=80)
                print(f"Compressed and converted: {original_file} -> {compressed_path}")

def main():
    originals_dir = "./originals"
    compressed_dir = "./compressed"

    if not os.path.exists(originals_dir):
        print(f"Error: Originals directory '{originals_dir}' does not exist.")
        return

    if not os.path.exists(compressed_dir):
        print(f"Warning: Compressed directory '{compressed_dir}' does not exist. It will be created.")

    ensure_webp_format(compressed_dir)
    compress_and_convert_images(originals_dir, compressed_dir)

if __name__ == "__main__":
    main()