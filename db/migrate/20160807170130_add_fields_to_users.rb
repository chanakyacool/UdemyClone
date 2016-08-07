class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :title, :string
    add_column :users, :bio, :text
    add_column :users, :avatar, :string
    add_column :users, :fb_link, :string
    add_column :users, :tw_link, :string
    add_column :users, :li_link, :string
    add_column :users, :yt_link, :string
  end
end
