#!/bin/bash

tok=$(cat .token-openai)
export OPENAI_API_KEY=$tok

mkdir -p data
mkdir -p store

case $1 in
	query) python backend/query.py ;;
	store) python backend/store.py ;;
	*) echo "?"
esac