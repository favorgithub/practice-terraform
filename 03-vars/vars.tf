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

output "sample-txt" {
  value = "Value of Sample - ${var.sample}"

}