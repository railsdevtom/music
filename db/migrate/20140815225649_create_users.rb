class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|
      t.string :fname
      t.string :firstname
      t.string :lname
      t.string :email
      t.text :summary
      t.timestamps
    end
  end

  # def self.down
  # 	 drop_table :users
  # 	end


end
