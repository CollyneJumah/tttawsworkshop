# Policy allowing and denying access to EC2 instance based on tags
- The policy allows all actions for EC2 tagged as `Env-dev`.
- It also allows `describe-related actions` for all EC2 instances.
- It denies `create and delete tags action` to prevent users from modifying tags arbitrarily.
- Note that the `deny effect` takes precedence over allow effect.

`{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "ec2:*",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "ec2:ResourceTag/Env": "dev"
                }
            }
        },
        {
            "Effect": "Allow",
            "Action": "ec2:Describe*",
            "Resource": "*"
        },
        {
            "Effect": "Deny",
            "Action": [
                "ec2:DeleteTags",
                "ec2:CreateTags"
            ],
            "Resource": "*"
        }
    ]
}
`

### JSON Policy structure
- `Version:` use the latest 2012-10-07 version.
- `Statement:` Can include more than one statement in a policy.
- `Sid(optional):` An optional statement ID.
- `Effect:` Use `allow` or `deny` to indicate the policy allows or denies access. `Deny` has a priority.
- `Principal:` If you have a resource-based policy, you must indicate the account, user, role or federated user to which you would like to allow or deny access. If you are creating an IAM permissions policy, you cannot include this statement. The principal is implied as that user or role.
- `Action:` A list of actions that the policy allows or denies.
- `Resource:` If you create an IAM permission policy, you must specify a list of resources to which the action is apply. If you create a resource-based policy, this element is optional. If you do not include this element, then the resource to which the action applies is the resource to which the policy is applied.
- `Condition Block(optional):` Specifies the circumstances under which the policy grants permissions.

