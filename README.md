# VM Deployment with Terraform on Google Cloud

This Terraform project deploys a VM instance on Google Cloud with Docker and Nginx installed. The Nginx server is configured to run on port 3000.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your machine.
- A Google Cloud account with a created project.
- A Google Cloud service account key in JSON format.

## Configuration

1. **Setting up Google Cloud Credentials**:
    - Place your Google Cloud service account key JSON file in a secure location on your machine.
    - Update the `provider.tf` file with the path to your service account key JSON file. Replace `<PATH_TO_YOUR_SERVICE_ACCOUNT_KEY>.json` with the actual path to your JSON file.

## Usage

1. **Initialize Terraform**:
    - Run `terraform init` in your project directory to initialize Terraform.

2. **Plan the Deployment**:
    - Execute `terraform plan` to preview the infrastructure changes.

3. **Apply the Configuration**:
    - Run `terraform apply` to apply the infrastructure changes. Confirm the action when prompted.

4. **Accessing the VM**:
    - Once the deployment is complete, the external IP address of the VM will be displayed.
    - Access Nginx on the VM using the external IP address followed by `:3000` (e.g., `http://<EXTERNAL_IP>:3000`).


