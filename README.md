# Sinatra Template

## Initial Set Up

`bundle init`
`bundle add sinatra activerecord sinatra-activerecord sinatra-contrib rake faraday puma haml`
`bundle add sqlite3 tux dotenv rubocop standardrb --group "development"`
`bundle add pg --group "production"`

## Development

`rake server # starts server`
`rake console # starts console`
