# eb-deploy-action

Make sure you run `configure-aws-credentials` action beforehand to set your aws envs.

```
      - name: Configure AWS Credentials
        uses: aws-actions/configure-aws-credentials@v1
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: us-east-2
      - name: deploy beanstalk
        uses: tqhdesilva/eb-deploy-action@master
```
