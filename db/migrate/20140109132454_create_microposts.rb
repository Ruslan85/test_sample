class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
