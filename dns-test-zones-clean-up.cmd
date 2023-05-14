@echo off
cls
echo Clean up Logs
del /q dns*.txt

echo -----------------------------

echo DNS ZONES All List
del /q "dns-zones-all-list\.terraform.lock.hcl"
del /q "dns-zones-all-list\terraform.tfstate.*"
rmdir /s /q "dns-zones-all-list\.terraform"

echo DNS ZONES Lookup Create
del /q "dns-zones-lookup-create\.terraform.lock.hcl"
del /q "dns-zones-lookup-create\terraform.tfstate.*"
rmdir /s /q "dns-zones-lookup-create\.terraform"

echo DNS ZONES Lookup List
del /q "dns-zones-lookup-list\.terraform.lock.hcl"
del /q "dns-zones-lookup-list\terraform.tfstate.*"
rmdir /s /q "dns-zones-lookup-list\.terraform"

echo DNS ZONES Reverse Lookup Create
del /q "dns-zones-reverse-lookup-create\.terraform.lock.hcl"
del /q "dns-zones-reverse-lookup-create\terraform.tfstate.*"
rmdir /s /q "dns-zones-reverse-lookup-create\.terraform"

echo DNS ZONES Reverse Lookup List
del /q "dns-zones-reverse-lookup-list\.terraform.lock.hcl"
del /q "dns-zones-reverse-lookup-list\terraform.tfstate.*"
rmdir /s /q "dns-zones-reverse-lookup-list\.terraform"

echo -----------------------------

pause
