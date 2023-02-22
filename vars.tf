variable "enviroment_name" {
  description = "enviroment name"
  default     = "landingzonevpc"
}

variable "region" {
  description = "The IBM Cloud region to deploy the resources under. "
  default = "us-south"
}

variable "sysdig_plan" {
  description = "Plan for your Sysdig instance in IBM Cloud."
  default = "lite"
}

variable "sysdig_instance_name" {
  description = "Name of your Sysdig instance in IBM Cloud."
  default = " IBM-Cloud-sysdig-monitoring-"
}

variable "activityt_plan" {
  description = "Plan for your Sysdig instance in IBM Cloud."
  default = "lite"
}

variable "activityt_instance_name" {
  description = "Name of your Sysdig instance in IBM Cloud."
  default = " IBM-Cloud-activity-tracker-"
}

variable "ibm_is_resource_group_id" {
}
