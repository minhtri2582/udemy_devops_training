From: https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-getting-started-hello-world.html

# Step 1 - Download a sample application

```
sam init --runtime python3.7

#Select 1/1/enter/1
```

# Step 2 - Build your application
```
cd sam-app
sam build
```


# Step 3 - Test the function
```
sam local invoke "HelloWorldFunction" -e events/event.json
sam local start-api
curl http://127.0.0.1:3000/hello 
```

# Step 4 - Package your application
```
sam package --output-template-file packaged.yaml --s3-bucket flowlog-onetarget --region ap-southeast-1
```

# Step 5 - Deploy your application
```
sam deploy --template-file packaged.yaml --stack-name aws-sam-getting-started --region ap-southeast-1
```