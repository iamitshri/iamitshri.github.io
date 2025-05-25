# Quick Reference Card 📋

## 🆕 Create New Post

```bash
./new-post.sh
```

## 🧪 Test Locally

```bash
./validate.sh
```

Then open: `http://localhost:4000`

## 📤 Publish

```bash
git add .
git commit -m "feat: add new post about [topic]"
git push origin main
```

## 📂 File Locations

- **Blog posts:** `_posts/YYYY-MM-DD-title.md`
- **Images:** `assets/images/`
- **Templates:** `blog-post-template.md`

## 📝 Post Template (Front Matter)

```yaml
---
title: "Your Title"
date: 2025-01-20
categories: [programming, tutorial]
tags: [java, spring-boot, aws]
excerpt: "Brief description"
---
```

## 🏷️ Common Categories

- `programming` - Code tutorials
- `devops` - Deployment, CI/CD, cloud
- `tutorial` - Step-by-step guides
- `learning` - Your experiences
- `tools` - Software tools

## 🔧 Emergency Commands

```bash
# Reset if something breaks
git checkout .
./validate.sh

# Get latest version
git pull origin main
bundle install --path vendor/bundle
```

## 📷 Add Images

1. Put in `assets/images/`
2. Reference: `![Alt text](/assets/images/my-image.jpg)`

## 🐛 Common Issues

- **Post not showing:** Check filename format `YYYY-MM-DD-title.md`
- **Formatting weird:** Check front matter has `---` before and after
- **Images broken:** Use `/assets/images/filename.jpg` (note the `/`)

---
**Remember:** Always test with `./validate.sh` before publishing!
