variable "filename" {
  type    = set(string)
  default = ["/home/santosh/pigs.txt", 
  "/home/santosh/pets.txt",
  "/home/santosh/horses.txt"]

}

variable "users" {
    type = list(string)
    default = [ "/root/user10", "/root/user11", "/root/user12", "/root/user10"]
}
variable "content" {
    default = "password: S3cr3tP@ssw0rd"
  
}
