variable "instances" {
    type = list
    default = [ "mongo" , "redis" , "mysql"  , "rabbitmq"  ] #list to converting map using toset in ec2.tf
    #  map = key value pair for-each  # looping
      # default = {
      #   mongo = "t3.micro"
      #   redis = "t3.micro"
      #   mysql = "t3.small"    
      #   rabbitmq = "t3.micro"

      }


variable "zone_id" {
    default = "Z047469215J1D0LB4YHQK"

}

variable "domanin_name" {
    default = "zyna.space"          
}   

                                                                  