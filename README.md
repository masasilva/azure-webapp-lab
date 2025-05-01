
# 🌐 Azure WebApp Infra Lab – Terraform Deployment

## 📘 Descrição
Este projeto provisiona uma infraestrutura básica porém robusta no Microsoft Azure utilizando Terraform, incluindo:
- Grupo de Recursos
- Rede Virtual com Subnets segmentadas
- Duas VMs Windows com IIS
- Preparação para Application Gateway, Firewall e Bastion

## 📁 Estrutura do Projeto

```
├── main.tf         # Código Terraform
├── variables.tf    # Variáveis (opcional)
├── outputs.tf      # Saídas
└── README.md       # Documentação do projeto
```

## 🚀 Requisitos

- Conta Azure com permissões Contributor
- Terraform instalado (v1.4+)
- Azure CLI logado (`az login`)

## ⚙️ Como Usar

```bash
# Clone este repositório
git clone https://github.com/seuusuario/azure-webapp-lab.git
cd azure-webapp-lab

# Inicializar Terraform
terraform init

# Validar
terraform validate

# Aplicar
terraform apply -auto-approve
```

## 📦 Recursos Criados

| Recurso            | Nome          |
|--------------------|---------------|
| Resource Group     | RG-Lab-Infra  |
| Virtual Network    | VNET-LAB      |
| Subnets            | App, Gateway, FW, Management |
| VMs                | VM-Web-01, VM-Web-02 |
| IP Público         | pip-appgw     |

## 📌 Observações

- As VMs não recebem IP público – o acesso deve ser via Azure Bastion (a ser incluído).
- Application Gateway com WAF e Azure Firewall podem ser adicionados facilmente.
- Senha padrão das VMs: `P@ssword1234!` (altere para produção)

## 📜 Licença


