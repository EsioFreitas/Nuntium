class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:about])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])

  end
end

def busca
  @nome_a_buscar = params[:nome]
    @produtos = Produto.where "nome like ?", "%#{@nome_a_buscar}%"
end