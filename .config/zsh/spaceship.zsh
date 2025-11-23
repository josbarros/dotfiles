# Display username always
SPACESHIP_USER_SHOW=always

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false

SPACESHIP_ASYNC_SHOW_COUNT=true

# Add custom Ember section
# See: https://github.com/spaceship-prompt/spaceship-ember
#spaceship add ember

# Add a custom vi-mode section to the prompt
# See: https://github.com/spaceship-prompt/spaceship-vi-mode
#spaceship add --before char vi_mode
#spaceship add --after line_sep vi_mode

SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
 #  git            # Git section (git_branch + git_status)
  package        # Package version
  #node           # Node.js section
  # python         # Python section
  # golang         # Go section
  # php            # PHP section
  # rust           # Rust section
  # kotlin         # Kotlin section
  # java           # Java section
  # lua            # Lua section
  # docker         # Docker section
  # docker_compose # Docker section
  # aws            # Amazon Web Services section
  # venv           # virtualenv section
  # terraform      # Terraform workspace section
  exec_time      # Execution time
  async          # Async jobs indicator
  line_sep       # Line break
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)
