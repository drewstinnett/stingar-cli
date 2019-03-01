# Cloud-Deply

Deploy STINGAR in to a cloud environment

# Requirements

Ensure that you have the following env variables set

```
AWS_ACCESS_KEY=foo
AWS_SECRET_KEY=bar
```

Software needed

[Terraform Inventory](https://github.com/adammck/terraform-inventory)
[Ansible](https://www.ansible.com/)


# Usage

Deploy to AWS using the following script

`$prefix` prefixes the terraform environment, so you can install multiple
STINGAR instances inside the same AWS instance

```
./deploy.sh $prefix
```

If you would like to debug, you can ssh in using

```
./ssh.sh $prefix $server_type
```

`$server_type` should be one of `api`, `cowrie`, `dionea`
