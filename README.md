## Example: Virtual Machine with Managed Disks from a Public Image and Running a Ansible Playbook

This example provisions a Virtual Machine with Managed Disks from a Custom Image that already exists.

### What does terraform do?

Terraform is used for the provisioning of resources in azure such as virtual machine, storage account, servicebus and so on.

### What does ansible do?

For our case ansible is used for configuration management of virtual machines performing the installation of features, packages and so on.

### Terraform Variables

The variables that are used by terraform and are not sensitive must be entered in the `terraform.tfvars` file

For sensitive variables it is necessary to execute the following commands:

```export TF_VAR_vm_os_profile_admin_username="INSERT-VM-USERNAME"```
```export TF_VAR_vm_os_profile_admin_password="INSERT-VM-PASSWORD"```

These variables above will be used for the user and password credentials of the virtual machine that will be created.

### Ansible Variables

The variables that are used by terraform and are not sensitive must be entered in the `ansible_vars/common-windows.yml` file

For sensitive variables it is necessary to execute the following commands:

```export env_vsts_accesstoken="INSERT-YOUR-VSTS-TOKEN"```

Ansible also uses the TF_VARS_vm_os_profile_admin_username and TF_VARS_vm_os_profile_admin_password variables to authenticate to the created virtual machine and run the playbook.

### How to provisioning?

To perform virtual machine provisioning you must perform some configuration:

 - Fill in the files of ansible and terraform variables.
 - Export sensitive environment variables.
 - Populate the `backend.tf` file to use a shared backend. # Not required but good practice.
 - Fill in the `provider.tf` file with at least the subscription id.
 - Use the `Makefile` to run the provisioning.

### Makefile 

The commands in the `Makefile` file make the following settings:

 - `make update-roles`: - Deletes the ansible dependencies that are configured in the` requirements.yml` file.
 - `make init`: Initializes the terraform backend. (terraform init)
 - `make plan`: Performs the` terraform plan`.
 - `make apply`: Performs` terraform apply`.
 - `make apply`: Performs` terraform destroy`.

### Provisioning options for this examples

In this environment we created the following examples of virtual machine provisioning:

 - Option to install windows feature IIS
Pass the `true` value in the ansible variable` install_iis` The default value is `false`.

 - Installation option of windows feature IIS with WCF
Pass the `true` value in the ansible variable` install_wcf` The default value is `false`.

 - dotnet core installation option
Pass the `true` value in the ansible variable` install_dotnetcore` The default value is `false`.

 - dotnet full installation option
Pass the `true` value in the ansible variable` install_dotnetfull` The default value is `false`.

 - NSSM installation option
Pass the `true` value in the ansible variable` install_nssm`. The default value is `false`.