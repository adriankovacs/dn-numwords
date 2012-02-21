DnNumwords::Application.routes.draw do
  root :to => "application#index"
  match "/get_numwords" => "application#get_numwords", :as => :get_numwords
end
