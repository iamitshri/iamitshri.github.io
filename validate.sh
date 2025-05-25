#!/bin/bash

echo "🚀 Setting up Jekyll local development environment..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed. Please install Ruby first."
    echo "📖 Visit: https://www.ruby-lang.org/en/downloads/"
    exit 1
fi

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "📦 Installing Bundler..."
    gem install bundler
fi

# Install dependencies
echo "📦 Installing Jekyll and dependencies..."
bundle install --path vendor/bundle

# Build the site
echo "🏗️  Building Jekyll site..."
bundle exec jekyll build --verbose

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo ""
    echo "🌐 Starting local server..."
    echo "📱 Your site will be available at: http://localhost:4000"
    echo "🔍 Test these URLs:"
    echo "   - http://localhost:4000/categories/"
    echo "   - http://localhost:4000/posts/"
    echo "   - http://localhost:4000/tags/"
    echo "   - http://localhost:4000/year-archive/"
    echo ""
    echo "🛑 Press Ctrl+C to stop the server"
    echo ""
    
    # Start the server
    bundle exec jekyll serve --livereload --drafts
else
    echo "❌ Build failed. Please check the errors above."
    exit 1
fi 