variable "sample" {
  default = 100
}

variable "sample1" {
 default = "Hello World"
}

output "sample" {
 value = var.sample

}

output "sample1" {
 value = var.sample1
}

output "sample-ext" {
  value = "Value of Sample - ${var.sample}"
}

##Plain

variable "course" {
 default = "DevOps Training"
}

##list

variable "courses" {
  default = [
    "DevOps",
    "AWS",
    "Python"
      ]
}

##Maps

variable "course_details" {
  default = {
   DevOps = {
     name = "DevOps"
     timing = "10am"
     duration = 90

   }
   AWS = {
    name ="AWS"
    timing = "11am"
    duration = 30
   }
  }
}


output "course" {
 value = var.course
}

output "courses" {
 value = var.courses
}


output "course_details" {
 value = var.course_details
}