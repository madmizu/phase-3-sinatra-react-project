class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |m|
      m.date :purchase_date
    end
  end
end
