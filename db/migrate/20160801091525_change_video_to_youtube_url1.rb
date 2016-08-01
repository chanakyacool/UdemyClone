class ChangeVideoToYoutubeUrl1 < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :courses, :video, :youtube_url
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
