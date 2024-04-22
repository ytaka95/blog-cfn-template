aws cloudformation deploy \
    --stack-name auto-deploy-pipeline \
    --template-file ./template_pipeline.yml \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
    --parameter-overrides \
    OAuthToken=GitHubPersonalAccessToken \
    Owner=GitHubRepoOwnerName \
    Repo=GitHubRepoName \
    Branch=GitHubBranchName \
    ModuleName=deploy-test-module \
    ModuleStackName=test-module
