alias dw-uat-o='export AWS_PROFILE=gp-datawizards-uat; okta-aws-cli --profile=gp-datawizards-uat -e'
alias dw-dev-o='export AWS_PROFILE=gc-datawizards-dev; okta-aws-cli --profile=gc-datawizards-dev -e'
alias dw-ci-o='export AWS_PROFILE=gc-datawizards-ci-cd; okta-aws-cli --profile=gc-datawizards-ci-cd -e'
alias dw-backup-o='export AWS_PROFILE=gc-datawizards-backup; okta-aws-cli --profile=gc-datawizards-backup -e'
alias dw-live-o='export AWS_PROFILE=gc-datawizards-live; okta-aws-cli --profile=gc-datawizards-live -e'

alias p-dev-o='export AWS_PROFILE=stepstone-platform-dev; okta-aws-cli --profile=stepstone-platform-dev -e'

alias dd-dev-o='export AWS_PROFILE=data-democratization-dev; okta-aws-cli --profile=data-democratization-dev -e'
alias dd-uat-o='export AWS_PROFILE=data-democratization-uat; okta-aws-cli --profile=data-democratization-uat -e'
alias dd-live-o='export AWS_PROFILE=data-democratization-live; okta-aws-cli --profile=data-democratization-live -e'

alias ds-dev-o='export AWS_PROFILE=data-science-daas-dev; okta-aws-cli --profile=data-science-daas-dev -e'
alias ds-live-o='export AWS_PROFILE=data-science-daas-live; okta-aws-cli --profile=data-science-daas-live -e'

alias gdp-dev='export AWS_PROFILE=sgp-aws-gdp-core-dev; okta-aws-cli --profile=sgp-aws-gdp-core-dev -e'
alias gdp-preprod='export AWS_PROFILE=sgp-aws-gdp-core-preprod; okta-aws-cli --profile=sgp-aws-gdp-core-preprod -e'
alias gdp-prod='export AWS_PROFILE=sgp-aws-gdp-core-prod; okta-aws-cli --profile=sgp-aws-gdp-core-prod -e'

alias tfc='rm -rf .terraform; rm -f .terraform.lock.hcl'
alias ti='terraform init'
alias tp='terraform plan'
alias ta='terraform apply'
alias tv='terraform validate'
