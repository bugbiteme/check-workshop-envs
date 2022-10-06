# check-workshop-envs

Just simple script that checks if Red Hat workshop student environments are up and running after being provisioned.

Assumes the max (49) environments have been provisioned. If there are less than that, script will still work for the 
first number of systems

Usage: `check-workshop-envs.sh <env>`

Example:
    `./check-workshop-envs.sh rhf630`
