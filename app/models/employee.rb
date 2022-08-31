class Employee < ActiveRecord::Base
    belongs_to :department

    # validates :first_name, presence: true, uniqueness: true
end