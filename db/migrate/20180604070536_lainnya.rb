class Lainnya < ActiveRecord::Migration
  def change
  	add_column :survey_forms, :lainnya_listrik, :string
  	add_column :survey_forms, :lainnya_internet, :string
  end
end
