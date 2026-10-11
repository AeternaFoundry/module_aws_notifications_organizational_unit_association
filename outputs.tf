output "notifications_organizational_unit_associations_notification_configuration_arn" {
  description = "Map of notification_configuration_arn values across all notifications_organizational_unit_associations, keyed the same as var.notifications_organizational_unit_associations"
  value       = { for k, v in aws_notifications_organizational_unit_association.notifications_organizational_unit_associations : k => v.notification_configuration_arn if v.notification_configuration_arn != null && length(v.notification_configuration_arn) > 0 }
}
output "notifications_organizational_unit_associations_organizational_unit_id" {
  description = "Map of organizational_unit_id values across all notifications_organizational_unit_associations, keyed the same as var.notifications_organizational_unit_associations"
  value       = { for k, v in aws_notifications_organizational_unit_association.notifications_organizational_unit_associations : k => v.organizational_unit_id if v.organizational_unit_id != null && length(v.organizational_unit_id) > 0 }
}

