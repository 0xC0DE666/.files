#!/bin/bash

OUTPUT_FILE="$HOME/clipboard.txt"
LAST_CLIP=""

while true; do
    # Get the current clipboard content
    CURRENT_CLIP=$(xclip -selection clipboard -o 2>/dev/null)

    # If clipboard content has changed, append it to the file
    if [[ "$CURRENT_CLIP" != "$LAST_CLIP" && -n "$CURRENT_CLIP" ]]; then
        echo "$CURRENT_CLIP" >> "$OUTPUT_FILE"
        echo '\n-------------------------------' >> $OUTPUT_FILE
        sort -u $OUTPUT_FILE -o $OUTPUT_FILE && mv $OUTPUT_FILE $OUTPUT_FILE
        LAST_CLIP="$CURRENT_CLIP"
    fi

    # Wait a short time before checking again
    sleep 1
done
