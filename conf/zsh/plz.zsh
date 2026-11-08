() {
  local stamp="$HOME/.cache/plz-last-run"
  # 20h, not 24h, so it still fires when tomorrow's first tab opens a bit earlier
  local -a fresh=($stamp(N.mh-20))
  if (( ! $#fresh )); then
    # Stamp first, so Ctrl-C during the upgrade doesn't make every new tab retry
    mkdir -p "${stamp:h}" && touch "$stamp"
    brew upgrade
  fi
}
