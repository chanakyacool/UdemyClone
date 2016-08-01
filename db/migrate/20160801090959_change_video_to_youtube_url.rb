class ChangeVideoToYoutubeUrl < ActiveRecord::Migration[5.0]
  def change
    def change
     rename_column :courses, :video, :youtube_url
  end
  end
end
