class RemoveCurrentCityFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :current_city
  end
end
