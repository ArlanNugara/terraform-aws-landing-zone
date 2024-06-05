data "aws_organizations_organization" "root_org" {}

locals {
  ou-l1 = {
    "ALV" = {
      name   = "ALV"
      parent = data.aws_organizations_organization.root_org.roots[0].id
      tags   = var.ou_tags
    }
  }
  ou-l2 = {
    "Apps" = {
      name   = "Apps"
      parent = module.ou-l1["ALV"].output_ou_id
      tags   = var.ou_tags
    }
    "Core" = {
      name   = "Core"
      parent = module.ou-l1["ALV"].output_ou_id
      tags   = var.ou_tags
    }
    "Platform" = {
      name   = "Platform"
      parent = module.ou-l1["ALV"].output_ou_id
      tags   = var.ou_tags
    }
  }
  ou-l3 = {
    "Apps-Prod" = {
      name   = "Apps-Prod"
      parent = module.ou-l2["Apps"].output_ou_id
      tags   = var.ou_tags
    }
    "Apps-QA" = {
      name   = "Apps-QA"
      parent = module.ou-l2["Apps"].output_ou_id
      tags   = var.ou_tags
    }
    "Apps-Dev" = {
      name   = "Apps-Dev"
      parent = module.ou-l2["Apps"].output_ou_id
      tags   = var.ou_tags
    }
    "Apps-Sandbox" = {
      name   = "Apps-Sandbox"
      parent = module.ou-l2["Apps"].output_ou_id
      tags   = var.ou_tags
    }
    "Security" = {
      name   = "Security"
      parent = module.ou-l2["Core"].output_ou_id
      tags   = var.ou_tags
    }
    "Infrastructure" = {
      name   = "Infrastructure"
      parent = module.ou-l2["Core"].output_ou_id
      tags   = var.ou_tags
    }
    "Sandbox" = {
      name   = "Sandbox"
      parent = module.ou-l2["Platform"].output_ou_id
      tags   = var.ou_tags
    }
    "Marketplace" = {
      name   = "Marketplace"
      parent = module.ou-l2["Platform"].output_ou_id
      tags   = var.ou_tags
    }
    "Policy" = {
      name   = "Policy"
      parent = module.ou-l2["Platform"].output_ou_id
      tags   = var.ou_tags
    }
    "Unmanaged" = {
      name   = "Unmanaged"
      parent = module.ou-l2["Platform"].output_ou_id
      tags   = var.ou_tags
    }
    "Decommissioned" = {
      name   = "Decommissioned"
      parent = module.ou-l2["Platform"].output_ou_id
      tags   = var.ou_tags
    }
    "Quarantined" = {
      name   = "Quarantined"
      parent = module.ou-l2["Platform"].output_ou_id
      tags   = var.ou_tags
    }
  }
}

locals {
  account = {
    "app-prod" = {
      name  = "app-prod"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Apps-Prod"].output_ou_id
      tags  = var.ou_tags
    }
    "app-qa" = {
      name  = "app-qa"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Apps-QA"].output_ou_id
      tags  = var.ou_tags
    }
    "app-dev" = {
      name  = "app-dev"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Apps-Dev"].output_ou_id
      tags  = var.ou_tags
    }
    "app-sandbox" = {
      name  = "app-sandbox"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Apps-Sandbox"].output_ou_id
      tags  = var.ou_tags
    }
    "app-security-audit" = {
      name  = "app-security-audit"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Security"].output_ou_id
      tags  = var.ou_tags
    }
    "app-security-log-archive" = {
      name  = "app-security-log-archive"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Security"].output_ou_id
      tags  = var.ou_tags
    }
    "infrastructure-network" = {
      name  = "infrastructure-network"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Infrastructure"].output_ou_id
      tags  = var.ou_tags
    }
    "infrastructure-shared-services" = {
      name  = "infrastructure-shared-services"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Infrastructure"].output_ou_id
      tags  = var.ou_tags
    }
    "sandbox" = {
      name  = "sandbox"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Sandbox"].output_ou_id
      tags  = var.ou_tags
    }
    "marketplace" = {
      name  = "marketplace"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Marketplace"].output_ou_id
      tags  = var.ou_tags
    }
    "policy" = {
      name  = "policy"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Policy"].output_ou_id
      tags  = var.ou_tags
    }
    "unmanaged" = {
      name  = "unmanaged"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Unmanaged"].output_ou_id
      tags  = var.ou_tags
    }
    "decommissioned" = {
      name  = "decommissioned"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Decommissioned"].output_ou_id
      tags  = var.ou_tags
    }
    "quarantined" = {
      name  = "quarantined"
      email = "someone@somedomain.com"
      ou    = module.ou-l3["Quarantined"].output_ou_id
      tags  = var.ou_tags
    }
  }
}