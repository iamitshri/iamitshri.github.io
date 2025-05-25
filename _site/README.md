# Learning Journey - Jekyll Blog Site

A personal blog site built with Jekyll and hosted on GitHub Pages, sharing learning experiences in backend engineering.

## 🚀 **Quick Run Local Site**

```bash
bundle exec jekyll serve --livereload --drafts
```
**Visit: http://localhost:4000**

## 📝 **Want to Blog? Start Here!**

**👉 [BLOGGING_GUIDE.md](BLOGGING_GUIDE.md) - Simple guide for creating blog posts**

This guide is for people who want to write blogs without learning Jekyll internals.

## 🚀 Quick Start

### Prerequisites

- Ruby 2.7+ installed
- Git installed
- Text editor of choice

### Local Development Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/iamitshri/iamitshri.github.io.git
   cd iamitshri.github.io
   ```

2. **Run the validation script:**

   ```bash
   ./validate.sh
   ```

   Or manually:

   ```bash
   bundle install
   bundle exec jekyll serve --livereload --drafts
   ```

3. **Visit your local site:** `http://localhost:4000`

## 📝 Creating Blog Posts

### Step 1: Create a New Post File

Create a new file in the `_posts` directory with the naming convention:

```
YYYY-MM-DD-title-with-hyphens.md
```

**Example:** `2025-01-15-my-first-blog-post.md`

### Step 2: Add Front Matter

Every post must start with YAML front matter:

```yaml
---
title: "Your Post Title"
date: 2025-01-15
categories: [programming, learning]
tags: [java, spring-boot, tutorial]
excerpt: "A brief description of your post for previews"
header:
  image: /assets/images/your-header-image.jpg  # Optional
  teaser: /assets/images/your-teaser-image.jpg # Optional
---
```

### Step 3: Write Your Content

Use Markdown for content. Here's a template:

```markdown
---
title: "Getting Started with Spring Boot"
date: 2025-01-15
categories: [programming, java]
tags: [java, spring-boot, backend, tutorial]
excerpt: "A comprehensive guide to building your first Spring Boot application"
---

## Introduction

Brief introduction to your topic...

## Prerequisites

- Java 11+
- Maven or Gradle
- Your favorite IDE

## Step-by-Step Guide

### 1. Setting Up the Project

```java
// Your code examples here
@SpringBootApplication
public class MyApplication {
    public static void main(String[] args) {
        SpringApplication.run(MyApplication.class, args);
    }
}
```

### 2. Next Steps

Continue with your content...

## Conclusion

Wrap up your thoughts and key takeaways.

## Resources

- [Official Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [Spring Boot GitHub Repository](https://github.com/spring-projects/spring-boot)

```

### Step 4: Preview Locally
```bash
./validate.sh
```

Navigate to `http://localhost:4000` to see your post.

## 🔧 Local Validation

### Using the Validation Script (Recommended)

```bash
./validate.sh
```

This script will:

- Check if Ruby is installed
- Install Bundler if needed
- Install all dependencies
- Build the site with verbose output
- Start a local server with live reload

### Manual Validation

```bash
# Install dependencies
bundle install

# Build the site (check for errors)
bundle exec jekyll build --verbose

# Serve locally with live reload
bundle exec jekyll serve --livereload --drafts

# Serve on different port
bundle exec jekyll serve --port 4001
```

### Test URLs

After starting the local server, test these pages:

- Home: `http://localhost:4000`
- All Posts: `http://localhost:4000/posts/`
- Categories: `http://localhost:4000/categories/`
- Tags: `http://localhost:4000/tags/`
- Archive: `http://localhost:4000/year-archive/`

## 📁 Site Structure

```
iamitshri.github.io/
├── _config.yml          # Site configuration
├── _data/               # Data files (YAML, JSON, CSV)
├── _pages/              # Static pages
│   ├── category-archive.md
│   ├── posts.md
│   ├── tag-archive.md
│   └── year-archive.md
├── _posts/              # Blog posts
│   └── YYYY-MM-DD-title.md
├── assets/              # CSS, images, JS files
│   └── css/
├── Gemfile              # Ruby dependencies
├── README.md            # This file
├── index.html           # Homepage
└── validate.sh          # Local validation script
```

## ⚙️ Configuration

### Site Settings (`_config.yml`)

Key configurations in `_config.yml`:

```yaml
# Basic site info
title: "Learning Journey"
description: "Backend engineer sharing learning experiences"
url: "https://iamitshri.github.io"

# Theme
remote_theme: "mmistakes/minimal-mistakes@4.24.0"
minimal_mistakes_skin: "dark"

# Author info
author:
  name: "Amit Shri"
  bio: "Backend Software Engineer"
  # Add your social links here

# Archives
category_archive:
  type: liquid
  path: /categories/
tag_archive:
  type: liquid
  path: /tags/
```

### Post Defaults

All posts automatically get these settings:

- Layout: `single`
- Author profile: enabled
- Read time: enabled
- Social sharing: enabled
- Related posts: enabled

## 🎨 Customization

### Adding Images

1. Place images in `assets/images/`
2. Reference in posts:

   ```markdown
   ![Alt text](/assets/images/my-image.jpg)
   ```

### Custom CSS

1. Create files in `assets/css/`
2. Reference in `_config.yml` or individual posts

### Navigation Menu

Edit `_data/navigation.yml` to customize the main navigation.

## 🚀 Deployment

### Automatic Deployment (GitHub Pages)

1. Push changes to the `main` branch
2. GitHub Pages automatically builds and deploys
3. Site is live at `https://iamitshri.github.io`

### Manual Testing Before Deployment

```bash
# Test locally first
./validate.sh

# Create a feature branch
git checkout -b feature/new-post

# Make changes, test locally
# Commit and push
git add .
git commit -m "feat: add new blog post about spring boot"
git push origin feature/new-post

# Create pull request and merge
```

## 🛠️ Maintenance

### Regular Tasks

1. **Update dependencies:**

   ```bash
   bundle update
   ```

2. **Check for broken links:**

   ```bash
   bundle exec jekyll build --verbose
   ```

3. **Optimize images** before adding to `assets/images/`

4. **Review analytics** and update content based on popular posts

### Troubleshooting

#### Build Errors

- Check `_config.yml` syntax
- Ensure all required front matter fields are present
- Validate Markdown syntax in posts

#### 404 Errors

- Verify permalink structure in `_config.yml`
- Check that page files exist in `_pages/`
- Ensure navigation links are correct

#### Slow Build Times

- Optimize large images
- Consider using `--incremental` flag for development

## 📚 Resources

### Jekyll Documentation

- [Jekyll Official Docs](https://jekyllrb.com/docs/)
- [Minimal Mistakes Theme](https://mmistakes.github.io/minimal-mistakes/)
- [GitHub Pages + Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll)

### Markdown Guide

- [Markdown Cheatsheet](https://www.markdownguide.org/cheat-sheet/)
- [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/)

### Tools

- [Markdown Editor](https://typora.io/) - WYSIWYG Markdown editor
- [Jekyll Plugin List](https://jekyllrb.com/docs/plugins/)
- [Image Optimization](https://tinypng.com/)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test locally using `./validate.sh`
5. Submit a pull request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

**Happy blogging! 🎉**

For questions or issues, please [open an issue](https://github.com/iamitshri/iamitshri.github.io/issues) on GitHub.
