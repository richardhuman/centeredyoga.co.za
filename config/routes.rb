CenterdyogaCoZa::Application.routes.draw do
  
  
  get "classes" => "pages#classes"
  get "about" => "pages#about"
  get "contact" => "pages#contact"
  get "principles" => "pages#principles"
  get "private_lessons" => "pages#private_lessons"
  
  root :to => "pages#index"
end
