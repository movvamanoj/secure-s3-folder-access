Sure! Below is a detailed and documented version of the project structure along with explanations for each file. You can add this content to your README.md file.

---

# Secure S3 Folder Access Terraform Configuration

This Terraform configuration sets up an S3 bucket with restricted access for a single IAM user. The IAM user is granted permissions to upload/download files only from a folder named `/docs` within the bucket.

## Project Structure

```
secure-s3-folder-access
│
├── s3_bucket
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── README.md
│
├── iam_user
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── README.md
│
├── data.tf
├── main.tf
├── variables.tf
├── s3_bucket.tfvars
├── iam_user.tfvars
└── README.md
```

### `s3_bucket` Directory
This directory contains the Terraform module for creating the S3 bucket.

- `main.tf`: Defines the AWS provider and creates the S3 bucket with specified ACL and tags.
- `variables.tf`: Declares input variables for the S3 bucket module.
- `outputs.tf`: Specifies outputs for the S3 bucket module, such as bucket ID and ARN.
- `README.md`: Provides documentation for the S3 bucket module, including input variables and outputs.

### `iam_user` Directory
This directory contains the Terraform module for creating the IAM user and managing its access key and policies.

- `main.tf`: Creates the IAM user, access key, and attaches policies for S3 bucket access.
- `variables.tf`: Declares input variables for the IAM user module.
- `outputs.tf`: Specifies outputs for the IAM user module, such as the access key ID.
- `README.md`: Provides documentation for the IAM user module, including input variables and outputs.

### `data.tf`
This file contains a data source block to fetch the AWS region dynamically.

### `main.tf`
This file is the main Terraform configuration file. It uses the modules defined in `s3_bucket` and `iam_user` directories to provision the S3 bucket and IAM user.

### `variables.tf`
This file declares input variables that are used across the Terraform configuration.

### `s3_bucket.tfvars` and `iam_user.tfvars`
These files contain input variable values in key-value pairs, allowing users to provide specific configuration values without modifying the main Terraform files.

## Usage

1. **Clone the Repository**: 
   ```
   git clone https://github.com/movvamanoj/secure-s3-folder-access.git
   cd secure-s3-folder-access
   ```

## Create a New Repository

To create a new repository on the command line, run the following commands:

```bash
echo "# secure-s3-folder-access" >> README.md
```
git init
```
```
git add README.md
```
```
git commit -m "first commit"
```
```
git branch -M main
```
```
git remote add origin https://github.com/movvamanoj/secure-s3-folder-access.git
```
```
git push -u origin main
```

push an existing repository from the command line
```
git remote add origin https://github.com/movvamanoj/secure-s3-folder-access.git
```
```
git branch -M main
```
```
git push -u origin main
```

2. **Initialize Terraform**: 
   ```
   terraform init
   ```

3. **Review the Plan**: 
   ```
   terraform plan -var-file=s3_bucket.tfvars -var-file=iam_user.tfvars
   ```

4. **Apply the Configuration**: 
   ```
   terraform apply -var-file=s3_bucket.tfvars -var-file=iam_user.tfvars
   ```

   Terraform will prompt for confirmation before applying the changes. Type `yes` and press Enter to proceed.

## Input Variables

- `s3_bucket.tfvars`: Contains variables for configuring the S3 bucket.
- `iam_user.tfvars`: Contains variables for configuring the IAM user.

## Output

After applying the Terraform configuration, you will receive outputs containing relevant information such as the S3 bucket ID, ARN, and IAM user access key.

## Clean Up

To clean up the resources created by this Terraform configuration, simply run:
   ```
   terraform destroy -var-file=s3_bucket.tfvars -var-file=iam_user.tfvars
   ```

   This will remove all resources created by Terraform, including the S3 bucket and IAM user.

**Note:** Ensure you have appropriate permissions to delete the resources.

---

You can copy and paste this content into your README.md file. Feel free to customize it further to fit your specific needs.