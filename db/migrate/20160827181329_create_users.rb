class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, :last_name, :email_address, :phone_number, :city, :blocked_users
      t.float :rating
      
      t.timestamps null: false
    end
  end
end
