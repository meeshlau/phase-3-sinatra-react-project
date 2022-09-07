class Employee < ActiveRecord::Base
    has_many :posts

    # validates :first_name, presence: true, uniqueness: true
end