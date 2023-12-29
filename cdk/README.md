## Deploying with CDK
Deploying with CDK requires dedicated S3 buckets and other containers to be available to AWS CloudFormation during deployment. Creating this is called `bootstrapping`

<code>

`cdk bootstrap aws://ACCOUNT-NUMBER/REGION`

</code>

