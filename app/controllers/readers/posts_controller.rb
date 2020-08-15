# frozen_string_literal: true

module Readers
  class PostsController < ReadersController
    def show
      @post = Post.published.friendly.find(params[:id])
    end
  end
end
