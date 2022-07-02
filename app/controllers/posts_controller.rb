# frozen_string_literal: true

class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.find_by(slug: params[:slug])
  end
end