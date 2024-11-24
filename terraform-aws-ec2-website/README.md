The tree command shows a hierarchical view of the directory structure, as demonstrated below:

```sh
√ terraform-from-zero-to-hero ✪—➤ tree 

├── README.md
└── terraform-aws-ec2-website
    ├── README.md
    ├── backend
    │   ├── main.tf
    │   ├── output.tf
    │   ├── provider.tf
    │   └── variables.tf
    ├── backend.tf
    ├── main.tf
    ├── output.tf
    ├── provider.tf
    └── variables.tf

3 directories, 11 files
```

**Deploying the Terraform Module**

Follow these steps to deploy the module:

**Step 1: Create an S3 Bucket for Remote Terraform State**

1. Navigate to the backend directory:

```sh
cd terraform-aws-ec2-website/backend
```

2. Update the bucket name in the configuration file as needed.

**Step 2: Execute Terraform Commands to Deploy the Backend Configuration**

Run the following commands sequentially or combine them using &&. These commands will validate the configuration and use the plan command to preview the planned changes before deployment. 

```sh
terraform init
terraform fmt
terraform validate
terraform plan
```

**Alternative Single-Line Execution:**

```sh
terraform init && terraform fmt && terraform validate && terraform plan
```

### Deploy the Backend Configuration using terraform apply command: 

```sh
terraform fmt && terraform validate && terraform apply -auto-approve
```

**Step 3: Navigate Back to the Main Directory**

Return to the parent directory to deploy the main Terraform
module:

```sh
cd ../
```

Execute the Terraform commands again to initialize and apply the configuration:

```sh
terraform init
terraform fmt
terraform validate
terraform plan
```

**Alternative Single-Line Execution:**

```sh
terraform init && terraform fmt && terraform validate && terraform plan
```

### Deploy the EC2 Configuration using terraform apply command: 
```sh
terraform fmt && terraform validate && terraform apply -auto-approve
```

**Step 4: Access the Deployed Website**

After a successful deployment, Terraform will output a URL
for your website.

You can access it using either:

* **Public Domain:** http://your_public_domain
* **Public IP:** https://your_public_IP
