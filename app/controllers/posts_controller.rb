class PostsController < ApplicationController

    get "/posts" do
        post = Post.all
        post.to_json(include: [:employee])
    end

    post "/posts" do
        find_employee = Employee.find_by(
            first_name: params[:first_name],
            last_name: params[:last_name]
        )

        if find_employee
            post = Post.create(
                message: params[:message],
                employee_id: find_employee.id)
            post.to_json
        else
            "Error: Must be an employee to post an update."
        end
    end

    patch "/posts/:id/edit" do
        post = Post.find(params[:id])
        post.update(
            message: params[:message]
        )
        post.to_json
    end

    delete "/posts/:id" do
        find_post = Post.find_by(
            id: params[:id])
        if find_post
            find_post.destroy
            find_post.to_json
        else
            "Error!"
        end
    end

end