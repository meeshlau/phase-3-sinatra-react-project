class EmployeesController < ApplicationController
     
    get "/employees" do
        employee = Employee.all
        employee.to_json
    end

    post "/employees" do
        employee = Employee.create(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            department_id: params[:department_id],
            position: params[:position]
        )
        if employee.save
            employee.to_json
        else
            "Error!"
        end
    end

    patch "/employees/:id" do
        employee = Employee.find(params[:id])
        employee.update(
            department_id: params[:department_id],
            position: params[:position]
        )
        employee.to_json
    end

    delete "/employees/:id" do
        employee = Employee.find(params[:id])
        employee.destroy
        employee.to_json
    end

end