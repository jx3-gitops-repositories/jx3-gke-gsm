## Create Cloud Resources

These instructions will walk you through setting up Jenkins X with Terraform

### Prerequisites

These instructions assume you have cloned this git repository and run `cd` into the clone directory so that you can see this `README.md` file by running:

```bash 
ls -al bin/README.md
```

You will also need to configure which GCP project you wish to use for your infrastructure. You can do this via an environment variable:

```bash 
export PROJECT_ID="my-gcp-project"
./bin/configure.sh
```


### Setup your resources

Run the `./bin/apply.sh` script which effectively invokes:

```bash 
terraform init
terraform apply
```

When prompted by terraform enter `yes` to proceed if you are happy with the plan.

Terraform will then setup your resources. 

Now make sure you git commit any modified files...

```bash 
git commit -a -m "fix: configured project"
git push
```


### Install the git operator

Please install the git operator via:

```bash
export GIT_USER="myPipelineUsername"
export GIT_TOKEN="myPipelineUserToken"
jx admin operator
```

You can see more instructions 