class CreateEmployee < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
