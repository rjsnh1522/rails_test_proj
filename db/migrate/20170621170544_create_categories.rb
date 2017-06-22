class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.string :category_type
      t.string :category_id
      t.string :category_name
      
      t.timestamps
    end
    add_index :categories,[:id],:unique=>true
  end
end
