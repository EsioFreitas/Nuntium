class HomeController < ApplicationController
  def index
    @home = Article.all.order("id DESC").limit 6
    @tag = Tag.all
  end
end
