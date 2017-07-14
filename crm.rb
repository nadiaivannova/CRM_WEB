require_relative 'contact'
require 'sinatra'

get '/' do

erb :index

end

get '/contacts' do

@contacts = Contact.all

  erb :contacts
end

get '/contacts/:id' do
  contact_id = params[:id]
  @contacts = Contact.find[contact_id]

  erb :contact
end

get '/about' do

  erb :about
end
after do
  ActiveRecord::Base.connection.close
end
