// Control Tower

resource "aws_controltower_control" "control_tower" {
  control_identifier = var.control_tower_control_identifier
  target_identifier  = var.control_tower_target_identifier
}