provider "aws" {
    region          = "${var.region}"
    access_key      = "${data.vault_generic_secret.kv-aws-terraform-iam.data["access_key"]}"
    secret_key      = "${data.vault_generic_secret.kv-aws-terraform-iam.data["secret_key"]}"
}
