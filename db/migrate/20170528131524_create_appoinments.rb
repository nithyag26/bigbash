class CreateAppoinments < ActiveRecord::Migration
  def change
    create_table :appoinments do |t|
      t.string :name
      t.string :email
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
