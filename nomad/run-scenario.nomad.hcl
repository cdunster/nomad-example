job "run-scenario" {
  type = "batch"

  group "scenarios" {
    count = 1

    task "scenario-task" {
      driver = "raw_exec"

      config {
        command = "test-scenario"
      }

      artifact {
        source = "https://github.com/cdunster/nomad-example/releases/download/v0.1.0/test-scenario-v0.1.0.zip"
      }
    }
  }
}
