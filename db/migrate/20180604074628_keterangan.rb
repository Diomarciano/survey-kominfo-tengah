class Keterangan < ActiveRecord::Migration
  def change
  	add_column :survey_forms, :keterangan_menuju_lokasi, :string
  end
end
