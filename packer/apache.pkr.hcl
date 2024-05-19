{
  "builders": [
    {
      "type": "amazon-ebs",
      "access_key": "YOUR_AWS_ACCESS_KEY",
      "secret_key": "YOUR_AWS_SECRET_KEY",
      "region": "us-east-1",
      "source_ami": "ami-0747bdcabd34c712a",
      "instance_type": "t2.micro",
      "ssh_username": "ubuntu",
      "ami_name": "apache-ami-{{timestamp}}"
    }
  ],
  "provisioners": [
    {
      "type": "shell",
      "inline": [
        "sudo apt-get update",
        "sudo apt-get install -y apache2"
      ]
    }
  ]
}