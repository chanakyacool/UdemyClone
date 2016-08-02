class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.string :title
      t.string :youtube_url
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
