Rails.application.routes.draw do
  mount Cms::Engine, at: "/cms"
end
