################################################################################
## Setup Environment
################################################################################

# The Git branch this environment should be attached to.
set :branch, 'master'

# The environment's name. To be used in commands and other references.
set :stage, :staging

# The URL of the website in this environment.
set :stage_url, 'http://testdeploy381.upliftconnect.com'

# The environment's server credentials
server '52.53.47.17', user: 'ubuntu', roles: %w(web app db)

# The deploy path to the website on this environment's server.
set :deploy_to, '/DATA/public_html/testwpdeploy381.upliftconnect.com'



set :ssh_options, {
   keys: %w(/Users/hgetrost/.ssh/uplift-californiaB.pem)
 #   forward_agent: false,
 #   auth_methods: %w(password)
  }
