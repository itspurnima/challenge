DC_BUILD=docker-compose build
DC_RUN=docker-compose run

filescanner_build:
	$(DC_BUILD) --no-cache filescanner

filescanner_local:--
	$(DC_RUN) filescanner

filescanner_bash:
	$(DC_RUN) filescanner bash

filescanner_lint:
	$(DC_RUN) filescanner "pylint *.py"
---
we have to create a lambda function with aws APIgateway 
Create a rule to run your Lambda function on a schedule:
a.open Cloud watch-Events-Create rule.
For Event source choose schedule and specify the schedule intervel.
for targets,choose target,Lambda function.
-to view the output from lambda function choose logs.

The handler needs to be accessible via a public API with a parameter for
 the URL of the file to scan. How would you set up the endpoint?
1. Create new API resource.
2.Go to Method Request on the Method Execution page
3. Add your params under URL Query String Parameters. You can set some params to be Required as well.
4. Leave the Integration type set to Lambda Function.

5.Choose Use Lambda Proxy integration.
6. After you finish all, click on Actions and Deploy API. You can get your Invoke URL under the Stages tab on the left menu.