# don't put boto3 inside: you have boto3 in Lambda python env
# you have a limit of 5MB package!
variable pip_dependencies {
  default = [] 
}
 