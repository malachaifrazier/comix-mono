# frozen_string_literal: true

class Api::V1::PostsController < ApplicationController
  def latest
    @posts = Post.published.last(3)
  end
end