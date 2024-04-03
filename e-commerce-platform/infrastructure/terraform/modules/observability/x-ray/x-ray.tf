resource "aws_iam_role" "xray_service_role" {
  name = "xray_service_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = ["ec2.amazonaws.com", "lambda.amazonaws.com", "ecs-tasks.amazonaws.com"]
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
  tags = {
    "Name" = "XRayServiceRole"
  }
}

resource "aws_iam_policy" "xray_policy" {
  name        = "xray_policy"
  description = "Policy that allows services to send data to AWS X-Ray"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "xray:PutTraceSegments",
          "xray:PutTelemetryRecords",
          "xray:GetSamplingRules",
          "xray:GetSamplingTargets",
          "xray:GetSamplingStatisticSummaries"
        ],
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "xray_policy_attachment" {
  role       = aws_iam_role.xray_service_role.name
  policy_arn = aws_iam_policy.xray_policy.arn
}
