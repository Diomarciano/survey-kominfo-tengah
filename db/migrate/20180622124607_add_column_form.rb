class AddColumnForm < ActiveRecord::Migration
  def change
  	add_column :survey_forms, :nama_site_id, :string
  	add_column :survey_forms, :surveyor, :string
  	add_column :survey_forms, :project, :string
  	add_column :survey_forms, :perangkat_lainnya, :string

  end
end
