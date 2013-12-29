class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :app_name

      t.timestamps
    end
  end
end
