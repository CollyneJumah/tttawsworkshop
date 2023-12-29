## SET UP
### Creating DynamoDB table
> Use the below command

<code>
aws dynamodb create-table \
    --table-name ProductCatalog \
    --attribute-definitions \
        AttributeName=Id,AttributeType=N \
    --key-schema \
        AttributeName=Id,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5

aws dynamodb wait table-exists --table-name ProductCatalog

aws dynamodb create-table \
    --table-name Forum \
    --attribute-definitions \
        AttributeName=Name,AttributeType=S \
    --key-schema \
        AttributeName=Name,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5

aws dynamodb wait table-exists --table-name Forum

aws dynamodb create-table \
    --table-name Thread \
    --attribute-definitions \
        AttributeName=ForumName,AttributeType=S \
        AttributeName=Subject,AttributeType=S \
    --key-schema \
        AttributeName=ForumName,KeyType=HASH \
        AttributeName=Subject,KeyType=RANGE \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5

aws dynamodb wait table-exists --table-name Thread

aws dynamodb create-table \
    --table-name Reply \
    --attribute-definitions \
        AttributeName=Id,AttributeType=S \
        AttributeName=ReplyDateTime,AttributeType=S \
    --key-schema \
        AttributeName=Id,KeyType=HASH \
        AttributeName=ReplyDateTime,KeyType=RANGE \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5

aws dynamodb wait table-exists --table-name Reply
</code>

### Load Sample data
Download and unzip sample data:
`wget https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/samples/sampledata.zip`

`unzip sampledata.zip`

> Load the sample data using the `batch-write-item` CLI:

`aws dynamodb batch-write-item --request-items file://ProductCatalog.json`

`aws dynamodb batch-write-item --request-items file://Forum.json`

`aws dynamodb batch-write-item --request-items file://Thread.json`

`aws dynamodb batch-write-item --request-items file://Reply.json`

> Each data load should get the message

`    {
        "UnprocessedItems": {}
    }
`

### Read sample data

`aws dynamodb scan --table-name ProductCatalog`

### If we wanted to read just a single item, we would use the `GetItem API` 
Which can be invoked using the `get-item CLI command`. 

<code>
aws dynamodb get-item \
    --table-name ProductCatalog \
    --key '{"Id":{"N":"101"}}'
</code>

GetItem is the fastest and cheapest way to get data out of DynamoDB as you must specify the full Primary Key so the command is guaranteed to match at most one item in the table.

> By default, reads from DynamoDB is `eventual consistency` because eventually consistency reads are half the price of a strongly consistent read.

### Scan table

aws dynamodb scan --table-name Reply


### Inserting data

>The DynamoDB `PutItem API` is used to create a new item or to replace existing items completely with a new item.
<code>
aws dynamodb put-item \
    --table-name Reply \
    --item '{
        "Id" : {"S": "Amazon DynamoDB#DynamoDB Thread 2"},
        "ReplyDateTime" : {"S": "2021-04-27T17:47:30Z"},
        "Message" : {"S": "DynamoDB Thread 2 Reply 3 text"},
        "PostedBy" : {"S": "User C"}
    }' \
    --return-consumed-capacity TOTAL
</code>

### Updating data

>The DynamoDB `UpdateItem API` is used to create a new item or to replace existing items completely with a new item. 
> The update-item API call also allows you to specify a ConditionExpression, meaning the Update request will only execute if the ConditionExpression is satisfied. 

<code>
aws dynamodb update-item \
    --table-name Forum \
    --key '{
        "Name" : {"S": "Amazon DynamoDB"}
    }' \
    --update-expression "SET Messages = :newMessages" \
    --condition-expression "Messages = :oldMessages" \
    --expression-attribute-values '{
        ":oldMessages" : {"N": "4"},
        ":newMessages" : {"N": "5"}
    }' \
    --return-consumed-capacity TOTAL

</code>