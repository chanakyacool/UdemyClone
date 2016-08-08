class AddFieldsToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :price, :integer
    add_column :courses, :sale_price, :integer
    add_column :courses, :is_private, :boolean
  end
end
