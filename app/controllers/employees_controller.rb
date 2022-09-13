class EmployeesController < ApplicationController
     
    get "/employees" do
        employee = Employee.all
        employee.to_json(include: [:posts])
    end

    post "/employees" do
        employee = Employee.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
        )
        if employee.save
            employee.to_json
        else
            "Error: Unable to save employee."
        end
    end

    delete "/employees/:id" do
        employee = Employee.find(params[:id])
        employee.destroy
        employee.to_json
    end

end