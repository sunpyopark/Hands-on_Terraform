## Install Terraform 

## Install Terraform on AWS

1. Download Terraform Source Code
```
$ wget https://releases.hashicorp.com/terraform/0.12.12/terraform_0.12.12_linux_amd64.zip
```

2. Install unzip package
```
$ sudo apt-get install unzip
```

3. Unzip the source code.

```
$ unzip terraform_0.12.12_linux_amd64.zip
```

4. Move the package to /usr/local/bin

```
$ sudo mv terraform /usr/local/bin/ && rm terraform_0.12.12_linux_amd64.zip
```

5. Check if terraform working properly

```
terraform --version
```

