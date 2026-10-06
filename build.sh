#!/bin/bash

PROJECT_NAME="morning-pills"
BUILD_DIR="build"

rm -rf "$BUILD_DIR"
rm -f "$PROJECT_NAME.pk3"

mkdir -p "$BUILD_DIR"

cp -r maps "$BUILD_DIR/"
cp -r zscript "$BUILD_DIR/"
cp -r sprites "$BUILD_DIR/"
cp -r sounds "$BUILD_DIR/"
cp -r music "$BUILD_DIR/"
cp -r textures "$BUILD_DIR/"
cp -r graphics "$BUILD_DIR/"
cp -r fonts "$BUILD_DIR/" 2>/dev/null

cd "$BUILD_DIR"
zip -r "../$PROJECT_NAME.pk3" . -x "*.dbs" "*.autosave*" "*.backup*"
cd ..

rm -rf "$BUILD_DIR"

echo "Done: $PROJECT_NAME.pk3"
