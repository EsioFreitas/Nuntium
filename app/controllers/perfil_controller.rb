class PerfilController < ApplicationController
  def index
    @perfil = current_user
  end
end
