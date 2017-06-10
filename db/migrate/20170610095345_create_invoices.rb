class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :invoice_name
      t.date :invoice_date
      t.decimal :invoice_amount

      t.timestamps null: false
    end
  end
end
