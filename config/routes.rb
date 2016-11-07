Rails.application.routes.draw do
  get 'authors/index'

  get 'authors/show'

  get 'authors/new'

  get 'authors/edit'

  get 'authors/delete'

  get 'categories/index'

  get 'categories/show'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/delete'

  get 'books/index'

  get 'books/show'

  get 'books/new'

  get 'books/edit'

  get 'books/delete'

  get 'about/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
