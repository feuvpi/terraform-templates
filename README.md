# Terraform Basics

Welcome to the Terraform Basics repository! This repository is designed to help you get started with Terraform, a popular open-source Infrastructure as Code (IaC) tool.

## Table of Contents

- [Terraform Basics](#terraform-basics)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Core Concepts](#core-concepts)
  - [Setup](#setup)
  - [Usage](#usage)
  - [Examples](#examples)
  - [Modules](#modules)
  - [Scripts](#scripts)
  - [Documentation](#documentation)
  - [Managing Credentials](#managing-credentials)
    - [Environment Variables](#environment-variables)
    - [Credentials Files](#credentials-files)

## Introduction

Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. It allows you to define and provision infrastructure resources using a declarative configuration syntax.

## Core Concepts

- **Providers:** Terraform uses plugins called providers to interact with cloud providers, SaaS providers, and other APIs. This repository includes examples for AWS and Azure providers.
- **Resources:** Resources are the most important element in the Terraform language. Each resource block describes one or more infrastructure objects.
- **Modules:** Modules are containers for multiple resources that are used together. Modules can be reused and can be shared with others.

## Setup

To install Terraform, follow the instructions for your operating system: [https://learn.hashicorp.com/tutorials/terraform/install-cli](https://learn.hashicorp.com/tutorials/terraform/install-cli)

## Usage

1. Clone this repository: `git clone https://github.com/your-username/Terraform-Basics.git`
2. Navigate to the example directory of your choice (e.g., `cd examples/aws-ec2`).
3. Initialize the working directory: `terraform init`
4. Review the changes that Terraform plans to make: `terraform plan`
5. Apply the changes: `terraform apply`

## Examples

- `examples/aws-ec2`: An example of creating an EC2 instance on AWS.
- `examples/azure-vm`: An example of creating a virtual machine on Azure.

## Modules

- `modules/aws-vpc`: A module for creating a VPC on AWS with subnets and route tables.
- `modules/azure-network`: A module for creating a virtual network on Azure with subnets and route tables.

## Scripts

- `scripts/format.sh`: A script for formatting all Terraform files in the repository using the `terraform fmt` command.
- `scripts/validate.sh`: A script for validating all Terraform files in the repository using the `terraform validate` command.

## Documentation

Additional documentation can be found in the `docs` directory.

## Managing Credentials

To manage your AWS and Azure credentials securely, you can use environment variables, credentials files, or a secrets manager.

### Environment Variables

You can set your AWS and Azure credentials as environment variables on your local machine. For AWS, you can set the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` environment variables. For Azure, you can set the `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_SUBSCRIPTION_ID`, and `ARM_TENANT_ID` environment variables.

### Credentials Files

You can also store your AWS and Azure credentials in credentials files. For AWS, you can create a `~/.aws/credentials` file with the following content:

```
[default]
aws_access_key_id = YOUR_ACCESS_KEY
aws_secret_access_key = YOUR_SECRET_ACCESS_KEY
```
For Azure, you can create a `~/.azure/credentials` file with the following content:

```
[default]
subscription_id = YOUR_SUBSCRIPTION_ID
client_id = YOUR_CLIENT_ID
secret = YOUR_CLIENT_SECRET
tenant = YOUR_TENANT_ID
```


