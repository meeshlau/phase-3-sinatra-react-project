class EmployeesController < ApplicationController
     
    get "/employees" do
        employee = Employee.all
        employee.to_json(include: [:posts])
    end

    post "/employees" do
        find_employee = Employee.find_by(
            email: params[:email]
        )

        if find_employee
            "Error: Unable to save employee."
        else 
            post = Employee.create(
                first_name: params[:first_name],
                last_name: params[:last_name],
                email: params[:email])
            post.to_json
        end
    end

    delete "/employees/:id" do
        employee = Employee.find(params[:id])
        employee.destroy
        employee.to_json
    end

end