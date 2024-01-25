source_if_exists() {
  FILEPATH=$1
  # include file if it exists
  if [ -f "$FILEPATH" ]; then
    . "$FILEPATH"
  fi
}

