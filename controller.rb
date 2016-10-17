require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require ('json')
require_relative('./models/formatter')
# home
get '/' do
  erb(:home)
end
# address page
get '/address' do
  content_type(:json)
  formatter = Formatter.new()
  results = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: formatter.upcase('e13 zqf'),
    phone: '0131558030'
  }
  return results.to_json
end
# camelcase page
get '/camelcase/:text' do
  text = params[:text]
  formatter = Formatter.new()
  @camelcase = formatter.camelcase(@text)
  erb(:camelcase)
end

