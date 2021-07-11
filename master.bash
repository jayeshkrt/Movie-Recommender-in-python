#!/bin/bash

echo "Welcome to Last Moment Revisor ;)"

# taking input from user about what he wants to do
echo "1 -> Add note"
echo "2 -> Get Recommended"
echo "3 -> Browse all notes"
echo "q -> Quit"

read -p "Enter your choice: " choice

echo "You chose $choice"

# Rscript add_note.R
if (($choice == 1));then
    Rscript add_note.R;
fi
if (($choice == 2));then
    python3 note_recommender.py;
fi
if (($choice == 3));then
    Rscript print_notes.R;
fi
