<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=cylinder&colorGradient=0A66C2,5C4EE5&height=200&fontSize=45&fontColor=FFFFFF&text=Azure%20VM%20%2B%20SQL%20IaC&animation=fadeIn&desc=Terraform%20%E2%80%94%20NGINX%20%E2%80%94%20Key%20Vault&descSize=20&descAlign=64&descAlignY=75" alt="Azure VM + SQL IaC"/>
</p>

<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=22&pause=1000&color=5C4EE5&center=true&vCenter=true&width=435&lines=Scalable+IaC;Secure+by+Design;Ready+for+CI%2FCD" alt="Typing SVG" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Tool-Terraform-5C4EE5?style=for-the-badge&logo=terraform&logoColor=white"/>
  <img src="https://img.shields.io/badge/Cloud-Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white"/>
  <img src="https://img.shields.io/badge/VM-Linux%20VM-blue?style=for-the-badge&logo=linux"/>
  <img src="https://img.shields.io/badge/Database-AzureSQL-green?style=for-the-badge&logo=microsoftsqlserver&logoColor=white"/>
</p>

---

## 🚀 Overview

> Production-grade Terraform project that automates deployment of Azure Infrastructure.  
> Provisions Azure Virtual Network, Linux Virtual Machines, Public IP, Subnet, SQL Server + DB, and installs NGINX. All credentials securely fetched from Azure Key Vault.

✅ Fully modular architecture  
✅ Secrets secured via Azure Key Vault  
✅ NGINX installation with remote-exec  
✅ Perfect for real-world CI/CD and GitOps pipelines

---

## 📁 Folder Structure

```bash
vm_datablock/
├── azurerm_public_ip/
├── azurerm_resource_group/
├── azurerm_sql_database/
├── azurerm_sql_server/
├── azurerm_subnet/
├── azurerm_virtual_machine/
├── azurerm_virtual_network/
├── todo-env/
│   └── terraform.tfstate (ignored)
├── .gitignore
└── README.md

💡 Key Features
🔧 Feature	✅ Description
for_each on VMs	Provision multiple VMs dynamically
NGINX provisioning	Remote shell installs NGINX on each VM
Key Vault integration	Admin credentials securely fetched from Azure Key Vault
Modular .tf structure	Each Azure resource handled separately
Statefile handling	.gitignore protects all sensitive Terraform state
CI/CD Ready	Compatible with GitHub Actions & remote backends

# 1. Authenticate Azure CLI
az login

# 2. Move to working environment directory
cd todo-env

# 3. Initialize Terraform
terraform init

# 4. Preview Infrastructure Changes
terraform plan

# 5. Apply Infrastructure
terraform apply -auto-approve

# 6. Destroy Infrastructure
terraform destroy -auto-approve

.terraform/
*.tfstate
*.tfstate.*
*.tfvars
*.tfvars.json
*.tfplan
*.backup
terraform.lock.hcl

👨‍💻 Author
Tushar Mishra – DevOps | Azure | Terraform
📧 tusharmishra2902@gmail.com
🔗 LinkedIn

🐙 GitHub

⚖️ License
This project is licensed under the MIT License


