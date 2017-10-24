
# Create vaults
#  > ansible-vault create vault_cloud_vars
#  > ansible-vault create vault_app_vars


# Execute playbook bare - fails since can't decrypt
>  ansible-playbook vault_multi_passwords.yml

# Execute playbook and provide a single credential.
# Fails when attempting to decrypt the second vault file
>  ansible-playbook --vault-id @prompt vault_multi_passwords.yml

# Execute playbook and provide two credentials at runtime.
# The naming "cloud" or "app" is not significant, just needs to be different
> ansible-playbook --vault-id cloud@prompt --vault-id app@prompt vault_multi_passwords.yml

