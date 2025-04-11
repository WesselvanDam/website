# GitHub Copilot Instructions for Personal Website Project

import os
from PIL import Image

def compress_images():
  originals_dir = './originals'
  compressed_dir = './compressed'

  # Ensure compressed directory exists
  os.makedirs(compressed_dir, exist_ok=True)

  # Get list of files in both directories
  original_files = {os.path.splitext(f)[0]: f for f in os.listdir(originals_dir) if os.path.isfile(os.path.join(originals_dir, f))}
  compressed_files = {os.path.splitext(f)[0]: f for f in os.listdir(compressed_dir) if os.path.isfile(os.path.join(compressed_dir, f))}

  # Check and compress images
  for original_name, original_file in original_files.items():
    if original_name not in compressed_files:
      original_path = os.path.join(originals_dir, original_file)
      compressed_path = os.path.join(compressed_dir, f"{original_name}.webp")

      # Open and compress the image
      with Image.open(original_path) as img:
        img = img.convert("RGB")  # Ensure compatibility with webp
        img.thumbnail((1600, img.height * 1600 // img.width) if img.width > 1600 else img.size)
        img.save(compressed_path, 'webp', quality=90)

  # Validate compressed images are in webp format
  for compressed_file in compressed_files.values():
    if not compressed_file.endswith('.webp'):
      print(f"Warning: {compressed_file} is not in webp format.")

if __name__ == "__main__":
  compress_images()

This file provides context to GitHub Copilot about the structure, technologies, and conventions used in this personal website project.

## Core Technologies

* **Static Site Generator:** Hugo. Configuration is primarily in `hugo.yaml`.
* **CSS Framework:** Tailwind CSS. Configuration is in `tailwind.config.js` (not provided, but assumed). Styling is processed via PostCSS, managed with npm.
* **Content:** Markdown (`.md`) files located in the `content/` directory.
* **Templating:** Hugo's Go Template engine is used within HTML files in the `layouts/` directory.
* **Package Management:** npm is used for managing Node.js dependencies (Tailwind, PostCSS, etc.). See `package.json`.

## Hugo Conventions

* **Configuration:** Main site settings, menus, taxonomies, and parameters are defined in `hugo.yaml`.
* **Content Structure:** Content is organized into sections based on the folders within `content/` (e.g., `portfolio`, `thoughts`, `career`, `content`). Each content file uses YAML front matter for metadata (title, date, tags, params, etc.). The `archetypes/default.md` file defines the default front matter for new content.
* **Layouts:**
    * Base templates are in `layouts/_default/` (e.g., `baseof.html`, `list.html`, `single.html`). Your project uses `home.html`, `section.html`, and `single.html`.
    * Reusable template snippets are located in `layouts/partials/`. Pay attention to subfolders like `nav`, `head`, `footer`, `components`, `cards`, `utils`.
    * Custom reusable content snippets callable from Markdown are in `layouts/shortcodes/` (e.g., `button.html`, `video.html`).
* **Assets:** CSS source files are located in `assets/css/`. Hugo Pipes process these (likely configured in `layouts/partials/head/css.html` or similar).
* **Output:** The final static site is generated into the `public/` directory. Do not suggest edits directly within the `public/` directory.

## Tailwind CSS & Styling Conventions

* **Utility-First:** Prioritize using Tailwind utility classes directly within the HTML templates (`layouts/**/*.html`) for styling.
* **Configuration:** Refer to `tailwind.config.js` for theme customizations (colors, fonts, spacing), plugins, and crucially, the `content` array which tells Tailwind where to scan for classes to purge.
* **CSS Entry Point:** The primary CSS file processed by Hugo Pipes is `assets/css/styles.css`. This file likely includes the core Tailwind directives (`@tailwind base;`, `@tailwind components;`, `@tailwind utilities;`) and imports for other custom CSS like `assets/css/components/fonts.css` and `assets/css/components/markdown.css`.
* **Custom CSS:** Minimize custom CSS. When necessary (e.g., complex components, Markdown styling), add it to dedicated files in `assets/css/components/` and use Tailwind's `@apply` directive sparingly within these files, preferring utility classes where possible.
* **Purging:** Remember that Tailwind purges unused classes in production builds based on the paths defined in `tailwind.config.js`. Ensure generated HTML uses class names Tailwind can detect.

## Development & Build Workflow

* **Dependencies:** Install Node.js dependencies using `npm install`.
* **Development Server:** Use the script defined in `package.json` (likely `npm run start` or `npm run dev`) which should run `hugo server -D` (or similar) and potentially watch Tailwind files. If running manually, use `hugo server -D` to view the site locally, including draft content.
* **Production Build:** Use the build script in `package.json` (likely `npm run build`). This typically runs Tailwind/PostCSS to generate the final CSS and then runs `hugo` to build the static site into the `public/` directory.

## Content Guidelines

* The site features distinct sections: Portfolio, Thoughts, Career, and Content.
* When creating new content pages, use the structure and front matter fields defined in `archetypes/default.md` as a base.
* Use appropriate shortcodes (`{{< shortcode >}}`) for elements like buttons or videos rather than raw HTML in Markdown where applicable.

## Code Style

* Follow standard Go Template syntax within HTML files.
* Maintain readable HTML structure with consistent indentation.
* Keep Tailwind class lists organized, potentially grouping related utilities (e.g., layout, typography, color).