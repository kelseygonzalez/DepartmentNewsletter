library(blastula)

# If this is your first time running this script, you'll need to create your
# credential keys. University of Arizona emails block blastula from working so
# you need to use a personal account. go to
# https://myaccount.google.com/security on your personal account, click 'App
# Passwords' under the 'Signing in to Google' section, and create a new password
# with 'Select App' -> Other.

# create_smtp_creds_key(
#   id = "gmail",
#   user = "your email here",
#   provider = "gmail"
# )


email <- render_email('Extra Scripts/soc_opportunities.Rmd') 

smtp_send(
  email, # the email that you just rendered
  from = "kelseygonzalez@email.arizona.edu",
  to = "socgrads@list.arizona.edu",
  subject = glue::glue("{format(Sys.Date(), '%b %d')}: Sociology Opportunities"),
  credentials = creds_key(id = "gmail")
)