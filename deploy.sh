
if [ -z "$1" ]
  then
    echo "No artifact supplied"
    return
fi
if [ -z "$2" ]
  then
    echo "No artifact supplied"
    return
fi

if [ -z "$3" ]
  then
    $3= "mycicdstackTimeFunctionQQ8HEDFP1V63"
fi
sed 's/{lambda_function_name}/'$3'/g' deployTemplate.yaml > deploy.yaml
aws cloudformation deploy --template-file deploy.yaml --stack-name mycicdstack \
    --capabilities CAPABILITY_IAM --parameter-overrides \
    "bucket"=$1 "bucketKey"=$2 
