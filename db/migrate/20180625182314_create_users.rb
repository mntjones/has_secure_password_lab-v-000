class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.password_digest
      t.timestamps null: false
    end
  end
end
