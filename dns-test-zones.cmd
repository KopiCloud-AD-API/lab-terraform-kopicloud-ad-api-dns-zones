@echo off
echo -----------------------------

echo Test Running [DNS ZONES All List]
cd dns-zones-all-list
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-zones-all-list-result.txt
terraform apply -auto-approve -no-color >> ..\dns-zones-all-list-result.txt
cd ..

echo Test Running [DNS ZONES Lookup Create] - Create
cd dns-zones-lookup-create
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-zones-lookup-create-result.txt
terraform apply -auto-approve -no-color >> ..\dns-zones-lookup-create-result.txt

echo Test Running [DNS ZONES Lookup Create] - Destroy
terraform destroy -auto-approve -no-color >> ..\dns-zones-lookup-create-result.txt
cd ..

echo Test Running [DNS ZONES Lookup List]
cd dns-zones-lookup-list
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-zones-lookup-list-result.txt
terraform apply -auto-approve -no-color >> ..\dns-zones-lookup-list-result.txt
cd ..

echo Test Running [DNS ZONES Reverse Lookup Create] - Create
cd dns-zones-reverse-lookup-create
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-zones-reverse-lookup-create-result.txt
terraform apply -auto-approve -no-color >> ..\dns-zones-reverse-lookup-create-result.txt

echo Test Running [DNS ZONES Reverse Lookup Create] - Destroy
terraform destroy -auto-approve -no-color >> ..\dns-zones-reverse-lookup-create-result.txt
cd ..

echo Test Running [DNS ZONES Reverse Lookup List] - Create
cd dns-zones-reverse-lookup-list
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-zones-reverse-lookup-list-result.txt
terraform apply -auto-approve -no-color >> ..\dns-zones-reverse-lookup-list-result.txt

echo Test Running [DNS ZONES Reverse Lookup List] - Destroy
terraform destroy -auto-approve -no-color >> ..\dns-zones-reverse-lookup-list-result.txt
cd ..

echo -----------------------------
