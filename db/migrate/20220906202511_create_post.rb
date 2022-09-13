class CreatePost < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :message
      t.integer :employee_id
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
