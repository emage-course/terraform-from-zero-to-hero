### Introduction to terraform

1. **Purpose of Terraform**
   •	Terraform is an open-source IaC tool created by HashiCorp that allows you to define, manage, and provision infrastructure in a declarative configuration language.
   •	Terraform works across multiple cloud providers like AWS, Azure, GCP, and on-premises systems, enabling consistent infrastructure management.
2. **Declarative Language (HCL)**
   •	Terraform uses HashiCorp Configuration Language (HCL), which is human-readable and describes what the final state of your infrastructure should be.
   •	Instead of scripting step-by-step commands, you declare the desired resources (e.g., an EC2 instance), and Terraform determines how to achieve that state.
3. **State Management**
   •	Terraform maintains a state file (terraform.tfstate) that keeps track of the resources it has created and their current configurations.
   •	This state file is essential for managing and updating infrastructure. You should secure it properly and use remote state backends for collaboration.
4. **Plan-Apply Workflow**
   •	terraform plan: Previews changes Terraform will make to your infrastructure without executing them.
   •	terraform apply: Implements the planned changes to provision, modify, or destroy resources.
   •	This workflow ensures safe and predictable infrastructure changes.
5. **Provider Plugins**
   •	Providers are plugins that allow Terraform to interact with different platforms (e.g., AWS, Azure, Kubernetes).
   •	You must configure the provider (e.g., AWS access keys) to manage resources within that ecosystem.
   •	Example configuration for AWS:

### Item Needed:

1. Security Group to allow SSH
2. Create an EC2 Key Pair
3. Create an EC2 instance
4. Access the EC2 instance
