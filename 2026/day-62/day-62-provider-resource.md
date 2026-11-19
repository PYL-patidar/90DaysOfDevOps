# Day 62 -- Providers, Resources and Dependencies

## Task 1: Explore Providers

### Terraform Block –

Terraform block defines Terraform's own configuration and requirements.

Its main responsibilities are:
- Required Terraform version.
- Required providers.
- Provider source addresses.
- Provider version constraints.
- Backend configuration for storing Terraform state.

Example:

```hcl
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
```

### Provider Block - 

Provider block configures the provider that Terraform will use to communicate with an external platform like AWS, Azure, GCP.

Work: It tells Terraform how to connect to AWS and which region to work with.

```hcl
provider "aws" {
  region = "ap-south-1"
}
```
Important difference:
- `required_providers` tells Terraform which provider plugin is needed.
- `provider` configures how that provider should work.

### Terraform init -

Terraform initializes the working directory and downloads the required provider plugins and modules specified in the Terraform configuration.

What happens when you execute it?
1. Terraform reads your configuration files.
2. Identifies the required providers.
3. Downloads the required provider plugins.
4. Creates a .terraform directory.
5. Creates or updates the .terraform.lock.hcl file to record selected provider versions.

Work: It prepares our project so Terraform can execute further commands.

Think of it as: Setting up the Terraform environment and downloading dependencies.

- .terraform/ – Contains downloaded provider plugins and related initialization data.
- .terraform.lock.hcl – Records the selected provider version and checksums.

## Q. What does ~> 5.0 mean? How is it different from >= 5.0 and = 5.0.0?

### Provider Version Constraints

Terraform uses version constraints to specify which versions of a provider are acceptable for a project.

1. Pessimistic Constraint (~>):
The ~> operator allows compatible updates within a specified version range while restricting upgrades beyond the defined boundary.

Example:
```
version = "~> 5.0"
```
Meaning:
- Allows versions greater than or equal to 5.0.0.
- Allows minor and patch version updates within the 5.x series
- Does not allow version 6.0.0 or above.
- Allowed: 5.0.0, 5.1.0, 5.25.0, 5.99.0
- Not Allowed: 4.9.0, 6.0.0

2. Greater Than or Equal To (>=)
The >= operator allows the specified version and all higher versions. It does not define an upper version limit.

Example:
```
version = ">= 5.0"
```
Meaning:
- Allows version 5.0.0 and above.
- Allows minor, patch, and major version updates.
- Does not restrict upgrades to version 6 or later.
- Allowed: 5.0.0, 5.5.0, 6.0.0, 7.0.0

3. Exact Version (=)
The = operator specifies an exact provider version that Terraform must use.

Example:
```
version = "= 5.0.0"
```

Meaning:
- Allows only version 5.0.0.
- Does not allow newer or older versions.
- Allowed: 5.0.0
- Not Allowed: 5.0.1, 5.1.0, 6.0.0

Why Are Version Constraints Important?

Prevent unexpected major version upgrades.

Maintain compatibility with existing Terraform configurations.

Control provider updates.

Improve consistency across development and production environments.

Key Takeaway:

Version constraints define which provider versions Terraform is allowed to select. The ~> operator provides a controlled update range, >= allows all higher versions, and = fixes the provider to an exact version.

## Task 2: Build a VPC from Scratch

These are the steps i follwed:
```
1. aws_vpc
2. aws_subnet
3. aws_internet gateway
4. aws_route_table
5. aws_route_table_association
```
terraform init -> terraform validate -> terraform plan -> terraform apply auto-approve

Now configured infrasturce has provisioned.

## Task 3: Understand Implecit Dependencies 

### Q How does Terraform know to create the VPC before the subnet?

An Implicit dependency occurs when one Terraform resource reference to annother resource.
Terraform automatically identify this reference and understand that one resource must be created before another. 
Example: A subnet requires a VPC ID so that Terraform must create a VPC before creating a subnet.

### Q What would happen if you tried to create the subnet before the VPC existed?
If we try to create a subnet before its VPC existed, AWS will not be able to create the subnet because a subnet requires a valid VPC ID. Without a valid VPC, AWS rejects the subnet creation request.

### Q Find all implicit dependencies in your config and list them
```
Resource                       Depends On                         Reference Used

aws_subnet                     aws_vpc                            aws_vpc.main.id
aws_internet_gateway           aws_vpc                            aws_vpc.main.id
aws_route_table                aws_vpc and aws_internet_gateway   aws_vpc.main.id, aws_internet_gateway.main.id
aws_route_table_association    aws_subnet and aws_route_table     aws_subnet.public.id, aws_route_table.public.id
```

## Task 4: Add a Security Group and EC2 Instance

## Task 5: Explicit Dependencies with depends_on

`depends_on` is a Terraform meta-argument used to explicitly define a dependency between resources.

It tells Terraform that a particular resource must be created or updated only after another specified resource has completed its operation.

## Task 6: Lifecycle Rules and Destroy

Terraform lifecycle rules control how Terraform creates, updates, and deletes resources.

They are defined inside the lifecycle block of a resource.

1. create_before_destroy
- Creates a new resource before destroying the existing one.
- Helps reduce downtime during replacement.
- Use case: Replacing an EC2 instance without interrupting service.

2. prevent_destroy
- Prevents Terraform from destroying a resource.
- Terraform returns an error if a plan tries to destroy it.
- Use case: Protecting important resources like production databases.

3. ignore_changes
- Tells Terraform to ignore changes to specified resource attributes after creation.
- Prevents Terraform from overwriting certain manual changes.
- Use case: Ignoring EC2 tags that are updated manually.