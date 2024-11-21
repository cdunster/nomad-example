# Nomad Example

A simple example to run a Rust application as a task in [Nomad](https://www.nomadproject.io).

## Try it locally

To test it out locally first run (from the project root):

```shell
sudo nomad agent -dev -bind 0.0.0.0 -network-interface='{{ GetDefaultInterfaces | attr "name" }}' -config=nomad/agent.conf.hcl
```

> [!Warning]
> This will expose your workloads to other machines on your network and is for development purposes only.
> 
> See: https://developer.hashicorp.com/nomad/tutorials/get-started/gs-start-a-cluster#create-the-cluster

Then to run the job:

```shell
nomad job run nomad/run-scenario.nomad.hcl
```

Then navigate to http://localhost:4646/ui/jobs/run-scenario, scroll down and click on `View Logs` and in `stdout` on the right pannel you should see `Hello, nomad!`.
