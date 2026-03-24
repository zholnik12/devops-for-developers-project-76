### Hexlet tests and linter status:
[![Actions Status](https://github.com/zholnik12/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/zholnik12/devops-for-developers-project-76/actions)

## Application Link
[https://hexlet-devops-project-ansible.ru/](https://hexlet-devops-project-ansible.ru/)

## Description
This project automates the deployment of a Redmine instance with a PostgreSQL database on Yandex Cloud VMs using Ansible. It also includes monitoring setup via Datadog.

## System Requirements
- **OS**: Linux (tested on Ubuntu 22.04) or macOS.
- **Ansible**: 2.9+
- **SSH Access**: Configured SSH keys for the target servers.
- **Datadog Account**: To use the monitoring roles.

## Installation & Setup
1.  **Clone the repository**:
    ```bash
    git clone https://github.com/zholnik12/devops-for-developers-project-76.git
    cd devops-for-developers-project-76
    ```
2.  **Install dependencies**:
    Install required Ansible roles and collections:
    ```bash
    make install-deps
    ```
3.  **Configure Ansible Vault**:
    Create a `.ansible_vault_pass` file with your vault password (this file is ignored by Git):
    ```bash
    echo "your_vault_password" > .ansible_vault_pass
    ```
4.  **Edit secrets** (optional):
    If you need to change the encrypted database password or Datadog API key:
    ```bash
    make vault-edit
    ```

## Deployment
To prepare target servers (install Pip, Docker, etc.):
```bash
make setup
```

To deploy the application and monitoring agent:
```bash
make deploy
```

## Monitoring
The project installs and configures the Datadog Agent on the `webservers` group. It includes an HTTP health check for Redmine.

## Development & Tests
GitHub Actions are used to run automated checks (linters and Hexlet-specific tests). 
To run local checks or simulate deployment, ensure your `inventory.ini` is correctly populated with your host information.
