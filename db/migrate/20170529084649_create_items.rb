class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :service_name
      t.decimal :service_price

      t.timestamps null: false
    end
  end
end
