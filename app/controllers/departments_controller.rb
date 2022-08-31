class DepartmentsController < ApplicationController

    get "/departments" do
        department = Department.all
        department.to_json
    end

    post "/departments" do
        department = Department.create(
            name: params[:name]
        )
    end

    patch "/departments/:id" do
        department = Department.find(params[:id])
        department.update(
            name: params[:name]
        )
    end


end