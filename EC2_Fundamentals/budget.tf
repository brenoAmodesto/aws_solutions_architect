resource "aws_budgets_budget" "monthly_budget" {
  name         = "Monthly-Budget"
  budget_type  = "COST" # Pode ser "COST", "USAGE" ou "RI_UTILIZATION"
  limit_amount = "5"    # Limite de orçamento em dólares
  limit_unit   = "USD"
  time_unit    = "MONTHLY" # Pode ser "DAILY", "MONTHLY", ou "QUARTERLY"

  cost_types {
    include_tax          = true # Incluir taxas
    include_subscription = true # Incluir assinaturas
  }

  # Configuração de notificação
  notification {
    comparison_operator = "GREATER_THAN" # Pode ser "GREATER_THAN", "LESS_THAN", ou "EQUAL_TO"
    notification_type   = "ACTUAL"       # Pode ser "FORECASTED" ou "ACTUAL"
    threshold           = 80             # Percentual de alerta
    threshold_type      = "PERCENTAGE"   # Tipo de limiar: pode ser "PERCENTAGE" ou "ABSOLUTE_VALUE"

    subscriber_email_addresses = [var.alert_email]
  }
}