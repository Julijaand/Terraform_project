provider "aws" { 
    region = "eu-north-1"
} 

resource "aws_instance" "web_instance"{ 
    ami = "ami-06c326063d3b494f1" 
    instance_type = "t2.micro" 
    key_name = "julias_key_pair"
    tags = { Name = "PythonWebAppInstance" } 
}
    
connection { 
    type = "ssh" 
    user = "ubuntu" 
    private_key = file("C:/Users/julij/OneDrive - North Sea Management AS/Desktop") 
}