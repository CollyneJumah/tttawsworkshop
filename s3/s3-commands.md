# Create a bucket
aws s3 mb s3://[bucket name]

## List all buckets in your account
aws s3 ls

## To list objects in a bucket
aws s3 ls s3://[bucketname]

## insert file in a bucket
 aws s3 api put-object --bucket [BUCKET NAME] --key [FILENAME] --tagging "PROPERTY=VALUE"

 or 
 aws s3 cp [FILENAME] s3://[BUCKET NAME]