set -e

check_version() {
  local dateVersionFormat="%Y%m%d%H%S"
  local dateString=$(date +"$dateVersionFormat")
  local git_hash=$(git rev-parse HEAD | jq -R .)

  echo "{\"version\":\"$git_hash\"}" | jq --slurp .
}