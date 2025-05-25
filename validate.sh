#!/bin/bash

echo "🚀 Setting up Jekyll local development environment..."

# Ensure we're using Homebrew Ruby instead of system Ruby
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "❌ Ruby is not installed. Please install Ruby with Homebrew:"
    echo "📖 brew install ruby"
    exit 1
fi

echo "✅ Using Ruby $(ruby --version)"
echo "✅ Using Bundler $(bundle --version)"

# Clean up any old bundler configurations
echo "🧹 Cleaning old cache..."
rm -rf .bundle vendor/bundle Gemfile.lock

# Install dependencies
echo "📦 Installing Jekyll and dependencies..."
bundle config set --local path vendor/bundle
bundle install

# Build the site
echo "🏗️  Building Jekyll site..."
bundle exec jekyll build

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