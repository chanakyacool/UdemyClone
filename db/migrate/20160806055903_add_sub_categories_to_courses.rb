class AddSubCategoriesToCourses < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :sub_category, foreign_key: true
  end
end
