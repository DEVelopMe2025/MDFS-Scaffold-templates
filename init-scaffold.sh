#!/bin/bash

echo "🔧 Initializing MDFS scaffold directory structure..."

# Core directories
mkdir -p templates/{web,mobile,backend,data-science,cli}
mkdir -p config
mkdir -p .github/workflows
mkdir -p docs

# Root files
touch README.md .gitignore

echo "✅ Scaffold initialized successfully!"
