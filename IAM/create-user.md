## Steps to create IAM User in AWS Console
- Create IAM user. [Do not provide console access and do not add user to a group].
- Explain how this user can access AWS account:
1. Console Access [Demo how to add user to the console under security section]
1. Programmatic Access [Demo how to generate access keys]

### Login as a new IAM user
- Try accessing resources i.e S3 buckets. [By default any new users created has no permissions].
- Add permission to user [S3] by creating a policy

<code>

    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "VisualEditor0",
                "Effect": "Allow",
                "Action": "s3:*",
                "Resource": "*"
            }
        ]
    }
</code>

### Control access at Group level
- Create a group aand add user to the group
- Attach permissions at the group level.
- All users in the group inherits the permissions.