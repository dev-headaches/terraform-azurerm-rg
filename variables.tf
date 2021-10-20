variable "enviro" {
  type        = string
  description = "define the environment ex. dev,tst,prd,stg"
}

variable "prjname" {
  type        = string
  description = "define the project name ex. prj02"
}

variable "prjnum" {
  type        = string
  description = "define the project number for TFstate file ex. 4858"
}

variable "location" {
  type        = string
  description = "location of your resource group"
}

variable "orgname" {
  type        = string
}

variable "prefix" {
  type        = string
}

variable "resource_groups" {
  type = list
}
/**
variable "rgnames" {
  type = list(string)
  
}
**/