# terraform-cicd-example

Example code to create an AWS environment via Bitbucket CI/CD pipline in Bitbucket using Terraform. Leverages Vault for Secret Management and an S3 Remate Backend for central State management.

This example will also require a funcional instance of Vault with working secrets (or a small rewrite passing variables from within the repository variables).

Pipeline leverages Hashicorp's official Terraform Docker Image for use in build process.

Files intended for use in conjuction with the blog post **BitBucket, AWS And Terraform – Flexible CI/CD For Immutable Infrastructure** https://www.tinfoilcipher.co.uk/2020/05/11/bitbucket-aws-and-terraform-flexible-ci-cd-for-immutable-infrastructure/
