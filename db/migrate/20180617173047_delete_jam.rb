class DeleteJam < ActiveRecord::Migration
  def change
  	remove_column :survey_forms, :jam_operasional, :datetime
  end
end
