class NamaLokasi < ActiveRecord::Migration
  def change
  	add_column :survey_forms, :nama_lokasi, :string
  end
end
