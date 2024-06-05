// Control Tower Output

output "output_control_tower_id" {
  value       = aws_controltower_control.control_tower.id
  description = "AWS Control Tower ID"
}