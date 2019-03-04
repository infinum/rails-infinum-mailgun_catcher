MailgunCatcher::Engine.routes.draw do
  resources :webhooks, only: [:create], path: MailgunCatcher::Engine.config.resource_name
end
