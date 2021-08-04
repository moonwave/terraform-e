###[Overview](https://www.terraform.io/docs/language/index.html)
```text
The main purpose of the Terraform language is declaring resources, which represent infrastructure objects. All
other features exist only to make the definition of resources more flexible and convenient.

The Terraform language is declarative, describing an intended goal rather than the steps to reach that goal. 
The ordering of blocks and the files they are organized into are generally not significant; Terraform only 
considers implicit and explicit relationships between resources when determining an order of operations.
```
###[Resources](https://www.terraform.io/docs/language/resources/index.html)

###[Version Constraints](https://www.terraform.io/docs/language/providers/requirements.html#version-constraints)
###[Version Constraints](https://www.terraform.io/docs/language/expressions/version-constraints.html)
```text
The following operators are valid:

= (or no operator): Allows only one exact version number. Cannot be combined with other conditions.

!=: Excludes an exact version number.

>, >=, <, <=: Comparisons against a specified version, allowing versions for which the comparison is true. 
    "Greater-than" requests newer versions, and "less-than" requests older versions.

~>: Allows only the rightmost version component (number) to increment. For example, to allow new patch releases within 
    a specific minor release, use the full version number: ~> 1.0.4 will allow installation of 1.0.5 and 1.0.10 but 
    not 1.1.0. This is usually called the pessimistic constraint operator.
```
###[Provisioners](https://www.terraform.io/docs/language/resources/provisioners/index.html)

###[Variables and Outputs](https://www.terraform.io/docs/language/values/index.html)
```text
The Terraform language includes a few kinds of blocks for requesting or publishing named values.
Input Variables - serve as parameters for a Terraform module, so users can customize behavior without editing the source.
Output Values   - are like return values for a Terraform module.
Local Values    - are a convenience feature for assigning a short name to an expression.
```

resource calling
Calling a module 