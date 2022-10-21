resource null_resource packaging {
# install dependencies to the folder

  provisioner "local-exec" {
    command = "python3 -m venv ."
  }
  provisioner "local-exec" {
    command = "source ./bin/activate"
  }
  provisioner local-exec {
    command = "pip3 install ${join(" ", var.pip_dependencies)}"
  }
}
