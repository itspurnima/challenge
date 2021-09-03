# Piclo Code Challenge: Cloud Engineer

## The code so far

We have a simple Python 3 application that needs to be run to look for key words related to energy in files via their URLs. The application code is in `filescanner/`

The aim of this technical challenge is to deploy the filescanner application to the cloud,
using a cloud automation tool such as CDK, ansible, terraform or CloudFormation and
to add that infrastructure code to a pull request against this repository.


## Running locally

You can run the application code directly under Linux, with eg.:
```
$ cd filescanner
$ ./local_test.sh
```
To run it locally under MacOS or Windows you will need docker and docker-compose.

### Docker and Docker Compose

Install Docker (CE) by following the steps
[here](https://docs.docker.com/install/).


Install Docker Compose by following one of the methods described
[here](https://docs.docker.com/compose/install/).


In order to use Docker as a non-root user, follow the steps
[here](https://docs.docker.com/install/linux/linux-postinstall/).

### Build and run the file scanner code

There is an included makefile which you can use to run the code using docker.

```
make filescanner_build
```

Run the code locally under docker:
```
make filescanner_local
```

This should give you some output searching two test files provided. See `filescanner/local_test.sh`
to see what it is running.

Run a bash shell in the same environment as the code runs locally (useful for debugging):
```
make filescanner_bash
```


## Tasks:

Please read through to the end of this document before starting the tasks. You should spend no more than 2 hours on all the tasks.
Don't worry if you don't finish all the tasks - we want to see how you solve
the problems in the tasks and not on how much you can get done.


### 1. Create a PR to deploy the 'filescanner' code

Create a pull request to show how you would deploy this code on the cloud provider of your choice and using the cloud automation tool of your choice.

Requirements for the application deployed to the cloud:
 - Needs to run once an hour (lets assume the content of these files could change) to scan the two files specified in `filescanner/local_test.sh`
 - Needs access to the internet to get the files it scans
 - Needs to be able to scan any input file URL (e.g. by a developer)
 - Nice to have a way of confirming the code ran and the output
 - Nice to have this be deployed or triggered by Github Actions (you can choose another CI provider you're familiar with too)

This is not dependant on any vendor. You can choose whatever you are familiar with and would satisfy the requirements. If the deployment doesn't work because it needs special credentials don't worry as long as there is code showing how it would be done. Feel free to adapt the application if needed as long as the logic stays the same.

Please explain in your pull request what you have chosen and how you have decided to implement the deployment to make it easier to review.

(BONUS QUESTION): How much would your chosen solution cost to run for a year?

### 2. Further improvements

Either document how you would do these in a markdown file as a PR or write the code for a PR which follows on from the first.

- The handler needs to be accessible via a public API with a parameter for the URL of the file to scan. How would you set up the endpoint?
- We want the files it scans once an hour to be updatable by a team-member (e.g. a non developer). What would you do to enable this?
