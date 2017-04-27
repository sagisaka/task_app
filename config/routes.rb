TaskApp::Application.routes.draw do

  devise_for :users
  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end
    post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'
    root 'projects#index'
end
