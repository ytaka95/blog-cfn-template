aws cloudformation update-stack \
    --stack-name auto-deploy-pipeline \
    --template-body file://template_pipeline.yml \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
    --parameters \
    ParameterKey=OAuthToken,ParameterValue=GitHubPersonalAccessToken \
    ParameterKey=Owner,ParameterValue=GitHubRepoOwnerName \
    ParameterKey=Repo,ParameterValue=GitHubRepoName \
    ParameterKey=ModuleName,ParameterValue=deploy-test-module \
    ParameterKey=DevModuleStackName,ParameterValue=dev-test-module \
    ParameterKey=ProdModuleStackName,ParameterValue=prod-test-module
