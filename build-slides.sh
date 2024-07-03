#!/usr/bin/env sh

# Arguments
course="$1" # course, 1 or 2
name="$2"   # slides name, e.g. 01
mod="$3"    # handout or pause

source_file_name="fp$course-slides-$name.tex"
target_file_name="mse2024-fp$course-slides-$name-$mod.tex"
echo "Compiling $source_file_name as $target_file_name"
cp "$source_file_name" "$target_file_name"
if [ "$mod" = "handout" ]
then
  echo "\handouttrue" > flags.tex
elif [ "$mod" = "pause" ]
then
  echo "\handoutfalse" > flags.tex
else
  echo "ERROR: mod (3 arg) should be handout or pause"
  exit 42
fi
echo "Compiling..."
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf --shell-escape "$target_file_name"
if [ "$source_file_name" != "$target_file_name" ]
then
  echo "Removing temporary $target_file_name"
  rm "$target_file_name"
fi
echo "Slides compilation finished"
