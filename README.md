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
