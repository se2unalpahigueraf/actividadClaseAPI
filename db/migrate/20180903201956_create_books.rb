class CreateBooks < ActiveRecord::Migration[5.2]
  #rails generate model book name:string code:integer available:boolean year:integer
  def change
    create_table :books do |t|
      t.string :name
      t.integer :code
      t.boolean :available
      t.integer :year

      t.timestamps
    end
  end
end
