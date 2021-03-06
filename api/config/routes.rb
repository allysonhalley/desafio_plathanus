Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post "roman", to: "convert_to_roman#convert"

  resource :roman, default: {format: :json}
  resource :arabic, default: {format: :json}

end
