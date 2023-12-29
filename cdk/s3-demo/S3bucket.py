# create S3 bucket

import boto3

s3 = boto3.client('s3')

s3.create_bucket(Bucket='MyBucket')

# create SQS queue

import boto3

sqs = boto3.client('sqs')

response = sqs.create_queue()
