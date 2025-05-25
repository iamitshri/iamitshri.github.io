# Quick Blogging Guide 📝

*For people who want to blog, not learn Jekyll*

## 🚀 One-Time Setup

### 1. Get Your Environment Ready
```bash
# Clone your blog repository
git clone https://github.com/iamitshri/iamitshri.github.io.git
cd iamitshri.github.io

# Install dependencies (only needed once)
./validate.sh
```

**That's it!** The script handles everything for you.

---

## ✏️ Creating a New Blog Post

### Option 1: Use the Script (Recommended)
```bash
./new-post.sh
```
This creates the file with the right name and template automatically!

### Option 2: Manual Creation

#### Step 1: Create the File
In the `_posts` folder, create a new file with this naming pattern:
```
YYYY-MM-DD-your-blog-title.md
```

**Example:** `2025-01-20-my-awesome-tutorial.md`

#### Step 2: Copy This Template
```markdown
---
title: "Your Blog Post Title"
date: 2025-01-20
categories: [programming, tutorial]
tags: [java, spring-boot, backend]
excerpt: "A short description of what this post is about"
---

# Your Main Heading

Write your content here using regular Markdown.

## Section 1

Your content...

### Subsection

More content...

## Code Examples

```java
public class Example {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}
```

## Conclusion

Wrap up your thoughts here.
```

#### Step 3: Preview Your Post
```bash
./validate.sh
```

Open `http://localhost:4000` in your browser to see your post.

---

## 🔧 Common Blog Tasks

### Testing Your Changes Locally
**Always do this before publishing:**
```bash
./validate.sh
```
- Opens your blog at `http://localhost:4000`
- Press `Ctrl+C` to stop the server

### Publishing Your Blog
```bash
# Save your changes
git add .
git commit -m "feat: add new blog post about [topic]"
git push origin main
```

**Your blog goes live in 2-3 minutes!**

### Editing an Existing Post
1. Find the file in `_posts/` folder
2. Edit the content
3. Test locally with `./validate.sh`
4. Publish using the git commands above

### Adding Images
1. Put images in `assets/images/` folder
2. Reference them in your post:
   ```markdown
   ![Description of image](/assets/images/my-image.jpg)
   ```

---

## 📚 Writing Tips

### Front Matter (The stuff at the top)
- **title**: What shows up as the post title
- **date**: When you wrote it (YYYY-MM-DD format)
- **categories**: Broad topics like `[programming, tutorial, devops]`
- **tags**: Specific keywords like `[java, spring-boot, aws, docker]`
- **excerpt**: Short description for previews

### Good Categories to Use
- `programming` - For coding tutorials
- `devops` - For deployment, CI/CD, cloud stuff
- `tutorial` - Step-by-step guides
- `learning` - Your learning experiences
- `tools` - About software tools you use

### Good Tags to Use
- Programming languages: `java`, `python`, `javascript`
- Technologies: `spring-boot`, `docker`, `kubernetes`, `aws`
- Concepts: `microservices`, `api`, `database`, `testing`

---

## 🐛 Fixing Common Issues

### "My post doesn't show up"
- Check the filename format: `YYYY-MM-DD-title.md`
- Make sure the date in the filename matches the date in the front matter
- Ensure the file is in the `_posts/` folder

### "The formatting looks weird"
- Check your Markdown syntax
- Make sure there are blank lines before and after headings
- Verify your front matter has `---` at the start and end

### "Images don't load"
- Put images in `assets/images/`
- Use the correct path: `/assets/images/filename.jpg`
- Don't forget the leading slash `/`

### "Categories/Tags pages are empty"
- Make sure your posts have `categories` and `tags` in the front matter
- Use the format: `categories: [item1, item2]`

---

## 🔄 Maintenance Tasks

### Monthly
- **Update dependencies:**
  ```bash
  bundle update
  ```
- **Check for broken links** by running `./validate.sh` and clicking through your posts

### When You Have Time
- **Optimize images** before adding them (use tools like TinyPNG)
- **Review old posts** for outdated information
- **Add tags/categories** to old posts that don't have them

### If Something Breaks
1. Run `./validate.sh` and check the error messages
2. Most errors are in the front matter (the `---` section)
3. Check for typos in file names
4. Ask for help if you're stuck!

---

## 🎯 Quick Reference

### Start Blogging
1. `cd` to your blog folder
2. Create new file: `_posts/2025-01-20-my-title.md`
3. Copy the template above
4. Write your content
5. Test: `./validate.sh`
6. Publish: `git add . && git commit -m "feat: new post" && git push`

### File Structure
```
your-blog/
├── _posts/           ← Your blog posts go here
├── assets/images/    ← Your images go here
├── _pages/           ← Don't touch these
├── _config.yml       ← Don't touch this
└── validate.sh       ← Your testing script
```

### Emergency Commands
```bash
# Something's broken? Reset everything:
git status              # See what changed
git checkout .          # Undo all changes
./validate.sh           # Test again

# Start fresh:
git pull origin main    # Get latest version
bundle install          # Reinstall dependencies
./validate.sh           # Test
```

---

## 📋 Quick Reference

Need a quick reminder? Check [QUICK_REFERENCE.md](QUICK_REFERENCE.md) for a one-page cheat sheet!

**Remember:** When in doubt, test locally with `./validate.sh` before publishing!

**Happy blogging! 🎉** 