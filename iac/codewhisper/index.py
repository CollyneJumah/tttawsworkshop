import boto3


#create s3 bucket called school-1010

s3 = boto3.client('s3')

s3.create_bucket(Bucket='school-1010')
# upload file to the bucket

s3.upload_file('test.txt','school-1010','test.txt')
