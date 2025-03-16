#!/bin/bash

if [ ! -d ".vscode" ]; then
    mkdir .vscode
fi

rm -f .vscode/*.code-snippets

find . -type f -name "*.code-snippets" | while read -r file; do
    cp "$file" .vscode/
done
