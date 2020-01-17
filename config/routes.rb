Rails.application.routes.draw do
  root 'produtos#index'
  get 'funcionarios', to: 'funcionarios#index'
  get 'funcionarios/catalogo', to: 'funcionarios#catalogo'
  get 'funcionarios/new', to: 'funcionarios#new'
  post 'funcionarios', to: 'funcionarios#create'
  get 'produtos/catalogo', to: "produtos#catalogo"
  get 'produtos/new', to: 'produtos#new'
  post 'produtos', to: 'produtos#create'
  get 'produtos/:id/delete', to: 'produtos#destroy'
  get 'funcionarios/:id/delete', to: 'funcionarios#destroy'
end
