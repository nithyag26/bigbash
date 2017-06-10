class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :password_hash
      t.string :password_salt
      t.string :employee_number

      t.timestamps null: false
    end
  end
end
