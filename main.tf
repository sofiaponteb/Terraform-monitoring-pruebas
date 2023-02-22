terraform {
  required_version = ">= 1.0.0, < 2.0.0"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.33.0"
    }
  }
}

provider "ibm" {
  region = var.region
}

data "ibm_resource_group" "all_rg" {
  name = var.resource_group_name
}

#Sysdig service
resource "ibm_resource_instance" "sysdig" {
  name              = "${var.enviroment_name}-sysdig-monitor"
  service           = "sysdig-monitor"
  plan              = var.sysdig_plan
  location          = var.region
  resource_group    = data.ibm_resource_group.all_rg.id
}

#LogDNA service
resource "ibm_resource_instance" "logdna-flowlog" {
  name              = "${var.enviroment_name}-logdna-flowlog"
  resource_group_id    = data.ibm_resource_group.all_rg.id
  service           = "logdna"
  plan              = "lite"
  location          = "us-south"
}

#Activity tracker instance
resource "ibm_resource_instance" "activityt" {
  name              = "${var.enviroment_name}-activity-tracker"
  service           = "logdnaat"
  plan              = var.activityt_plan
  location          = var.region
  resource_group    = data.ibm_resource_group.all_rg.id
}