
apply-istio-cluster: clean-terraform-files
	terraform -chdir=./istio-terraform init
	terraform -chdir=./istio-terraform apply -auto-approve


clean-terraform-files:
	rm -rf ./istio-terraform/.terraform ./istio-terraform/.terraform.tfstate.lock.info ./istio-terraform/terraform.tfstate
