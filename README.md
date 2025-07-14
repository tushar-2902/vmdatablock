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
  <img src="https://img.shields.io/badge/Security-KeyVault-darkblue?style=for-the-badge&logo=microsoftazure"/>
</p>

---

## 🚀 Overview

> This project automates the provisioning of **Azure Infrastructure** using **Terraform**.  
> It creates a **Virtual Network**, **Linux VMs**, **Azure SQL Server + DB**, installs **NGINX**, and uses **Azure Key Vault** to fetch secrets securely.

✅ Fully modular Terraform structure  
🔐 Secrets secured via Azure Key Vault  
🌐 NGINX auto-installed using remote-exec  
🧱 CI/CD & GitOps ready architecture  

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
```

---

## 💡 Key Features

- 🚀 Provision **multiple Linux VMs** using `for_each`
- 🔐 Admin username & password fetched from **Azure Key Vault**
- 🌐 Installs **NGINX** via remote shell (provisioner)
- 💾 Creates Azure SQL Server + Database
- 📦 Clean modular `.tf` structure for all resources
- ✅ `.gitignore` handles sensitive Terraform state & lock files

---

## 🧪 How to Deploy

```bash
# 1. Login to Azure
az login

# 2. Move to env directory
cd todo-env

# 3. Initialize Terraform
terraform init

# 4. Preview changes
terraform plan

# 5. Apply configuration
terraform apply -auto-approve

# 6. Destroy infrastructure
terraform destroy -auto-approve
```

> 🔑 Make sure Azure Key Vault contains the secrets:
> - `adminname1` (admin username)
> - `adminpass1` (admin password)

---

## 📸 Screenshots

> Put your screenshots in a `screenshots/` folder and reference them like:

```html
<img src="./screenshots/terraform_apply.png" width="700"/>
```

---

## 📄 .gitignore

```gitignore
.terraform/
*.tfstate
*.tfstate.*
*.tfvars
*.tfvars.json
*.tfplan
*.backup
terraform.lock.hcl
```

---

## 👨‍💻 Author

**Tushar Mishra** – DevOps | Azure | Terraform  
📧 tusharmishra2902@gmail.com  
🔗 [LinkedIn](https://linkedin.com/in/tushar-mishra-02461235a)  
🐙 [GitHub](https://github.com/tushar-2902)

---

## ⚖️ License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT)

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&colorGradient=5C4EE5,0A66C2&height=120&section=footer"/>
</p>
