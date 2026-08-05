jqschema() {
  local jq_filter='walk(if type == "array" then map(type) | unique elif type == "object" then . else type end)'
  jq "$jq_filter" "$@"
}

alias jqs="jqschema"

jqischema() {
  jnv --default-filter 'walk(if type == "array" then map(type) | unique elif type == "object" then . else type end)' "
}

alias jqi="jnv"
alias jqis="jqischema"
