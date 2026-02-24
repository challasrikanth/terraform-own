terraform {
    backend "s3" {
        bucket = "dynamodb-state-locking"
        key = "srikanth/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table  = "dynamodb-state-locking_1"
      
    }
}



#lock id example from dynamodb table 

# resource "azapi_resource" "" {
#   type      = "@TODO"
#   parent_id = "/subscriptions/$${var.subscriptionId}/resourceGroups/$${var.resourceGroupName}"
#   name      = ""
#   body = {
#     Created   = "2026-02-23T18:36:56.4890753Z"
#     ID        = "84a910ff-243e-0f34-eeb8-a8e1a647e323"
#     Info      = ""
#     Operation = "OperationTypeApply"
#     Path      = "dynamodb-state-locking/srikanth/terraform.tfstate"
#     Version   = "1.14.5"
#     Who       = "CORP\\csrikant@LUS-5CG5173HV6"
#   }
# }
