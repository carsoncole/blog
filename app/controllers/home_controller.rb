class HomeController < ApplicationController
  def index
    @posts = Post.published.order(date: :desc)
  end

  def disclosures
    @title = 'Disclosures | Thinking Money | NUKU'
  end
end
