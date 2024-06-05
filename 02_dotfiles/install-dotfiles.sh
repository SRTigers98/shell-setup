#!/bin/bash

chezmoi init https://github.com/srtigers98/dotfiles.git >/dev/null
chezmoi apply -v >/dev/null

# adjust ssh config
ssh_config="${HOME}/.ssh/config"
if [ ! -f "${ssh_config}" ]; then
  touch "${ssh_config}"
  echo "created ${ssh_config}"
fi

ssh_config_value="AddKeysToAgent yes"
if ! grep -Fxq "${ssh_config_value}" "${ssh_config}"; then
  echo "${ssh_config_value}" >>"${ssh_config}"
  echo "updated ${ssh_config}"
fi

# adjust gpg config
gpg_agent_config="${HOME}/.gnupg/gpg-agent.conf"
if [ ! -f "${gpg_agent_config}" ]; then
  touch "${gpg_agent_config}"
  echo "created ${gpg_agent_config}"
fi

gpg_config_values=(
  "pinentry-program /usr/bin/pinentry-qt"
  "default-cache-ttl 43200"
  "max-cache-ttl 43200"
)
for config_value in "${gpg_config_values[@]}"; do
  if ! grep -Fxq "${config_value}" "${gpg_agent_config}"; then
    echo "${config_value}" >>"${gpg_agent_config}"
    echo "updated ${gpg_agent_config}"
  fi
done
