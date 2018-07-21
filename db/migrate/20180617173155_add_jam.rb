class AddJam < ActiveRecord::Migration
  def change
  	add_column :survey_forms, :jam_operasional, :string
  end
end
