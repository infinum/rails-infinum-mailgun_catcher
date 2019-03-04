MailgunCatcher::Engine.routes.draw do
  resources :webhooks, only: [:create], path: MailgunCatcher::Engine.config.webhooks_path
end
