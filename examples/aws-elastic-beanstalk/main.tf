resource "aws_elastic_beanstalk_application" "flask_api_eb_app" {
  name        = "flask-api"
  description = "A Flask API"
}

resource "aws_elastic_beanstalk_environment" "flask_api_eb_env" {
  name                = "flask-api-env"
  application         = aws_elastic_beanstalk_application.flask_api_eb_app.name
  solution_stack_name = "64bit Amazon Linux 2 v3.3.10 running Python 3.8"
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.micro"
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = "SingleInstance"
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "LoadBalancerType"
    value     = "application"
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment:proxy"
    name      = "StickinessEnabled"
    value     = "false"
  }
  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "AWS_EB_APP_SOURCE_CODE_URL"
    value     = "https://github.com/your-username/flask-api.git"
  }
  setting {
    namespace = "aws:elasticbeanstalk:application:environment"
    name      = "AWS_EB_APP_SOURCE_CODE_BRANCH"
    value     = "main"
  }
}


# resource "aws_elastic_beanstalk_environment" "flask_api_eb_env" {
#   name                = "flask-api-env"
#   application         = aws_elastic_beanstalk_application.flask_api_eb_app.name
#   solution_stack_name = "64bit Amazon Linux 2 v3.3.10 running Multi-container Docker 18.06.1-ce (Generic)"
#   setting {
#     namespace = "aws:autoscaling:launchconfiguration"
#     name      = "InstanceType"
#     value     = "t2.micro"
#   }
#   setting {
#     namespace = "aws:elasticbeanstalk:environment"
#     name      = "EnvironmentType"
#     value     = "SingleInstance"
#   }
#   setting {
#     namespace = "aws:elasticbeanstalk:environment"
#     name      = "LoadBalancerType"
#     value     = "application"
#   }
#   setting {
#     namespace = "aws:elasticbeanstalk:environment:proxy"
#     name      = "StickinessEnabled"
#     value     = "false"
#   }
#   setting {
#     namespace = "aws:elasticbeanstalk:container:python:environment"
#     name      = "AWS_EB_APP_IMAGE_URL"
#     value     = "${aws_ecr_repository.flask_api_ecr_repo.repository_url}:latest"
#   }
# }

# resource "aws_ecr_repository" "flask_api_ecr_repo" {
#   name = "flask-api"
# }
