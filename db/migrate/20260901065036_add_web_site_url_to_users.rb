class AddWebSiteUrlToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :web_site_url, :string
  end
end
