# HCL Syntax Basics

HCL is designed to be both human-readable and machine-friendly. It uses a structure that is easy to write and understand, making it an ideal language for defining complex configurations.

_**Basic Structure**_

HCL files are made up of blocks, arguments, expressions, and comments.

- Blocks: The fundamental units of HCL, defined by a block type and enclosed in {}.
- Arguments: Key-value pairs that define the settings within a block.
- Expressions: Values or computations used within arguments.

**Example:**
```
resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}
```
_**resource**_ is a block type.

_**"aws_instance"**_ is the resource type (AWS EC2 instance in this case).

_**"example"**_ is the resource name.

_**ami and instance_type**_ are arguments within the block.

# Deep dive into [HCL](https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md)
