class AddVideoToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :video, :string
  end
end
