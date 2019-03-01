# Stingar-CLI

Deploy and Manage STINGAR in to a cloud environment

# Requirements

Ensure that you have the following env variables set

```
AWS_ACCESS_KEY=foo
AWS_SECRET_KEY=bar
```

Install dependancies using:

```
pip install -r requirements.txt
```

Be sure your pip matches the version ansible is using

Other Software needed

[Terraform Inventory](https://github.com/adammck/terraform-inventory)
[Ansible](https://www.ansible.com/)


# Usage

Deploy to AWS using the following script

```
./stingar deploy
```

If you would like to debug, you can ssh in using

```
./stingar ssh $server_type
```

`$server_type` should be one of `api`, `cowrie`

# Notes

Some local configuration, including a new SSH RSA key will be placed in
`~/.stingar_deployment` for later use
