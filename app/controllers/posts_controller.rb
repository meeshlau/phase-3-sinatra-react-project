class PostsController < ApplicationController

    get "/posts" do
        @posts = Post.all
        @posts.to_json(include: [:employee])
    end

    post "/posts" do
        post = Post.create(
            message: params[:message])
        post.to_json
    end

    patch "/posts/:id" do
        post = Post.find(params[:id])
        post.update(
            message: params[:message]
        )
        post.to_json
    end

    delete "/posts/:id" do
        post = Post.find(params[:id])
        post.destroy
        post.to_json
    end

end