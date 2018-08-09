RailsApiAuth.tap do |raa|
  raa.user_model_relation = :user # this will set up the belongs_to relation from the Login model to the Account model automatically (of course if your application uses a User model this would be :user)

  # Facebook configurations
  raa.facebook_app_id       = '<your Facebook app id>'
  raa.facebook_app_secret   = '<your Facebook app secret>'
  raa.facebook_redirect_uri = '<your Facebook app redirect uri>'

  # Google configurations
  raa.google_client_id     = '<your Google client id>'
  raa.google_client_secret = '<your Google client secret>'
  raa.google_redirect_uri  = '<your app redirect uri>'

  # Edx configurations
  raa.edx_client_id     = '<your Edx client id>'
  raa.edx_client_secret = '<your Edx client secret>'
  raa.edx_domain        = '<your Edx app domain>'
  raa.edx_redirect_uri  = 'your Edx app redirect uri'

  # Force SSL for Oauth2Controller; defaults to `false` for the development environment, otherwise `true`
  raa.force_ssl = false
end