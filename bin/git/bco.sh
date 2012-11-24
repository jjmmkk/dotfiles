#!/bin/bash

branches=()
eval "$(git for-each-ref --shell --format='branches+=(%(refname:short))' refs/heads/)"

PS3="Select a branch or 'q' to quit: "

select branch in "${branches[@]}"
do
    if [ -n "$branch" ]; then
        git checkout $branch
    fi
    break
done
