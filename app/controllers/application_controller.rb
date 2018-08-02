class ApplicationController < Sinatra::Base


 configure do
   set :public_folder, 'public'
   set :views, 'app/views'
 end
 
   get '/charity_quiz' do
   erb :charity_quiz
 end

post '/charity' do
 @name = params[:username]
 @answer = params[:q1]  
 
 if @answer == "animal"
 erb :animal
 else 
  erb :human 
end 
end 

get '/charity' do 
erb :charity
 end
 
end