help:                                                                           ## shows this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_\-\.]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

ANSIBLE_PLAYBOOK_CMD = ansible-playbook -u root -i inventory/local

install-ansible:
	curl https://bootstrap.pypa.io/get-pip.py | sudo -H python3
	python3 -m pip install ansible

setup:                                                   ## setup workstation
	$(ANSIBLE_PLAYBOOK_CMD) playbooks/setup.yml --ask-become-pass

update:                                                  ## update workstation
	$(ANSIBLE_PLAYBOOK_CMD) playbooks/update.yml

.PHONY: install-ansible setup update
