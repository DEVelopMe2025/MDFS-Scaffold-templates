#!/bin/bash

TEMPLATE_TYPE=$1
PROJECT_NAME=$2
DESTINATION="./$PROJECT_NAME"

if [ -z "$TEMPLATE_TYPE" ] || [ -z "$PROJECT_NAME" ]; then
  echo "Usage: generate.sh <template-type> <project-name>"
  exit 1
fi

SRC="./templates/$TEMPLATE_TYPE"

if [ ! -d "$SRC" ]; then
  echo "❌ Template '$TEMPLATE_TYPE' not found in templates/"
  exit 1
fi

echo "📦 Generating project '$PROJECT_NAME' from '$TEMPLATE_TYPE' template..."

cp -r "$SRC" "$DESTINATION"
cd "$DESTINATION" || exit

# Inject default README
echo "# $PROJECT_NAME" > README.md

echo "✅ Project '$PROJECT_NAME' created at '$DESTINATION'"
