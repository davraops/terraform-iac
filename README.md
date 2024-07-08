# Terraform Infrastructure as Code (IaC) with GCP, AWS, and Azure

This repository contains Terraform configurations for deploying infrastructure on AWS, Azure, and GCP. It demonstrates the use of Terraform modules, state management, and best practices for configuration.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Project Structure](#project-structure)
- [Usage](#usage)
  - [Prerequisites](#prerequisites)
  - [Steps to Deploy](#steps-to-deploy)
- [Best Practices](#best-practices)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This repository provides comprehensive Terraform configurations to deploy scalable and secure multi-tier application architectures on AWS, Azure, and GCP.

## Features

- Multi-cloud support (AWS, Azure, GCP)
- Modular Terraform configurations
- State management with remote backends
- Implementation of best practices
- Example configurations for multi-tier architectures

- ## Project Structure

```plaintext
.
├── aws
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── versions.tf
│   └── modules
│       ├── vpc
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── README.md
│       ├── ec2
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── README.md
│       └── rds
│           ├── main.tf
│           ├── variables.tf
│           ├── outputs.tf
│           └── README.md
├── azure
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── versions.tf
│   └── modules
│       ├── vnet
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── README.md
│       ├── vm
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── README.md
│       └── sql
│           ├── main.tf
│           ├── variables.tf
│           ├── outputs.tf
│           └── README.md
├── gcp
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── versions.tf
│   └── modules
│       ├── vpc
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── README.md
│       ├── compute
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── README.md
│       └── sql
│           ├── main.tf
│           ├── variables.tf
│           ├── outputs.tf
│           └── README.md
└── README.md
```
## Usage

### Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- Cloud provider credentials configured

### Steps to Deploy

1. Clone the repository:

    ```bash
    git clone https://github.com/davraops/terraform-iac.git
    cd terraform-iac
    ```

2. Navigate to the desired cloud provider directory (e.g., `aws`, `azure`, `gcp`):

    ```bash
    cd aws
    ```

3. Initialize Terraform:

    ```bash
    terraform init
    ```

4. Apply the configuration:

    ```bash
    terraform apply
    ```

5. Destroy the infrastructure:

    ```bash
    terraform destroy
    ```

## Best Practices

- Use Terraform modules to encapsulate and reuse configuration.
- Store Terraform state remotely to enable team collaboration.
- Use variables and outputs for flexible configuration and resource referencing.
- Implement proper IAM roles and policies for security.

## Contributing

We welcome contributions! Please read our [contributing guidelines](CONTRIBUTING.md) for more details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
