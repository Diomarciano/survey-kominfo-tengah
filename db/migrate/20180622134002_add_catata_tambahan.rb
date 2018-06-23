class AddCatataTambahan < ActiveRecord::Migration
  def change
  	add_column :survey_forms, :catatan_tambahan, :string
  end
end
