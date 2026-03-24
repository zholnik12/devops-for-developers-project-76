setup:
	ansible-playbook -i inventory.ini playbook.yml --tags setup

vault-edit:
	ansible-vault edit group_vars/webservers/vault.yml --vault-password-file .ansible_vault_pass

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --vault-password-file .ansible_vault_pass