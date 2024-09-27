# Custom image for running bun on CodeBuild

## Usage

- Build image

```
docker build -t bun-ecr-codebuild .
```

- Tagging

```
docker tag bun-ecr-codebuild:latest xxxxxxxxxxxx.dkr.ecr.[your-region].amazonaws.com/bun-ecr-codebuild:latest
```

- Push to ECR

```
docker push xxxxxxxxxxxx.dkr.ecr.[your-region].amazonaws.com/bun-ecr-codebuild:latest
```