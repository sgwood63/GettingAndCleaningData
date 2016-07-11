library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
oauth_endpoints("github")

# 2. To make your own application, register at at
#    https://github.com/settings/applications. Use any URL for the homepage URL
#    (http://github.com is fine) and  http://localhost:1410 as the callback url
#
#    Replace your key and secret below.
myapp <- oauth_app("DataScienceQuiz",
                   key = "f353a53320d036ca13a3",
                   secret = "3a3712d82a5d53e8d61e41da17971ff7412c1371")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/rate_limit", gtoken)
stop_for_status(req)
content(req)

# OR:
req <- with_config(gtoken, GET("https://api.github.com/rate_limit"))
stop_for_status(req)
content(req)

c('week','nino1','nino1SSTA', 'nino3', 'nino3SSTA', 'nino34SSTA', 
  'nino4', 'nino4SSTA')

c('week','nino1', 'nino3', 'nino34', 'nino4')

con <- url('https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for')

a <- read.table('temp.txt', stringsAsFactors = FALSE, sep=' ',
      col.names = c('blank', 'week','nino1','nino1SSTA', 'nino3', 'nino3SSTA', 'nino34SSTA', 
                    'nino4', 'nino4SSTA'))

a <- read.table('temp.txt', stringsAsFactors = FALSE, sep=' ')