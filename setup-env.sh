#!/bin/bash

echo "🔧 Setting up Ruby environment for Jekyll..."

# Add Homebrew Ruby to PATH
echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc

echo "✅ Ruby environment configured!"
echo "📝 Added Homebrew Ruby to your ~/.zshrc"
echo "🔄 Please run: source ~/.zshrc"
echo "   Or restart your terminal"
echo ""
echo "🧪 Test with: which ruby && ruby --version" 