Rails.application.routes.draw do
  get("/", {:controller=>"games",:action=>"homepage"})
  
  get("/dice/:number_of_times/:number_of_sides", {:controller=>"games",:action=>"process_roll"})
end
