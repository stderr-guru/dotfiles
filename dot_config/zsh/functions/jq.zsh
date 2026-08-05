jqschema() {
  local jq_filter='walk(if type == "array" then map(type) | unique elif type == "object" then . else type end)'
  jq -C "$jq_filter" "$@"
}

alias jqs="jqschema"
alias jqi="jnv"

