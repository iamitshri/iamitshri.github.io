#!/bin/bash

# Script to create a new blog post with proper naming and template

echo "📝 Creating a new blog post..."

# Get today's date in YYYY-MM-DD format
TODAY=$(date +%Y-%m-%d)

# Ask for the blog post title
echo "Enter your blog post title:"
read -r TITLE

# Convert title to URL-friendly format (lowercase, spaces to hyphens)
URL_TITLE=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' | sed 's/[^a-z0-9-]//g')

# Create filename
FILENAME="_posts/${TODAY}-${URL_TITLE}.md"

# Check if file already exists
if [ -f "$FILENAME" ]; then
    echo "⚠️  File $FILENAME already exists!"
    echo "Do you want to overwrite it? (y/N):"
    read -r OVERWRITE
    if [[ ! $OVERWRITE =~ ^[Yy]$ ]]; then
        echo "❌ Cancelled. No file created."
        exit 1
    fi
fi

# Create the blog post from template
cat > "$FILENAME" << EOF
---
title: "$TITLE"
date: $TODAY
categories: [programming, tutorial]
tags: [add, your, tags, here]
excerpt: "Add a brief description of what this post covers"
---

# $TITLE

A brief introduction to what you're going to cover in this post.

## What You'll Learn

- Point 1
- Point 2  
- Point 3

## Prerequisites

- Thing 1 (e.g., Java 11+)
- Thing 2 (e.g., Basic understanding of X)
- Thing 3 (e.g., IDE like IntelliJ or VS Code)

## Getting Started

Start your content here...

\`\`\`java
// Example code
public class Example {
    public static void main(String[] args) {
        System.out.println("Hello World!");
    }
}
\`\`\`

## Next Steps

Continue with your content...

## Conclusion

- Summarize what was covered
- Key takeaways
- Next steps or related topics

## Resources

- [Link to documentation](https://example.com)
- [Related tutorial](https://example.com)

---

*Found this helpful? Share it with others!*
EOF

echo "✅ Created new blog post: $FILENAME"
echo ""
echo "Next steps:"
echo "1. Edit the file to add your content"
echo "2. Update the categories and tags"
echo "3. Test locally: ./validate.sh"
echo "4. Publish: git add . && git commit -m 'feat: add $TITLE' && git push"
echo ""
echo "Opening the file for editing..."

# Try to open the file in the user's preferred editor
if command -v code &> /dev/null; then
    code "$FILENAME"
elif command -v nano &> /dev/null; then
    nano "$FILENAME"
elif command -v vim &> /dev/null; then
    vim "$FILENAME"
else
    echo "Please edit $FILENAME with your preferred editor"
fi 