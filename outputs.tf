#Outputs
output "PublicIP" {
  value = "ssh ${aws_instance.WellspringCloud.public_ip} -l ec2-user -i MyAWS2023Key.pem -N -D 9090"
}
