class HomeController < ApplicationController
  def index
    @home = Article.all.limit 6
  end
end
