Rails.application.routes.draw do
  root as: "root_without_locale", to: "application#root_without_locale"
  mount Cms::Engine => '/'
  mount Ckeditor::Engine => '/ckeditor'
  get "admin(/*admin_path)", to: redirect{|params| "/#{ I18n.default_locale}/admin/#{params[:admin_path]}"}


  localized do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    devise_for :users, module: "users", path: "", path_names: {
        sign_in: "login",
        sign_out: 'logout',
    }



    controller :pages do
      root action: "index"
      get "about", action: "about"
      get "faq", action: "faq"
      get "special_offer_all", action: "special_offer_all"
      get "special_offer_one", action: "special_offer_one"
      get "division_all", action: "division_all"
      get "division_one", action: "division_one"
      get "portfolio", action: "portfolio"
      get "contacts", action: "contacts"
      get "terms_of_use", action: "terms_of_use"
    end
  end

  match "*url", to: "application#render_not_found", via: [:get, :post, :path, :put, :update, :delete]
end