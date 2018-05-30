if [ -z "$2" ]
  then
    $2= "mycicdstackTimeFunctionQQ8HEDFP1V63"
fi
sed 's/{lambda_function_name}/mycicdstackTimeFunctionQQ8HEDFP1V63/g' deployTemplate.yaml > deploy.yaml
aws cloudformation deploy --template-file deployTemplate.yaml --stack-name mycicdstack  --capabilities CAPABILITY_IAM --parameter-overrides "bucketKey"=$1
