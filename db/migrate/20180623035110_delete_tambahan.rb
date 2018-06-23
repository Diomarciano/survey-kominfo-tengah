class DeleteTambahan < ActiveRecord::Migration
  def change
  	remove_column :survey_forms, :tambahan_image_1_file_name, :string
  	remove_column :survey_forms, :tambahan_image_1_content_type, :string
  	remove_column :survey_forms, :tambahan_image_1_file_size, :integer
  	remove_column :survey_forms, :tambahan_image_1_updated_at, :datetime
  	remove_column :survey_forms, :tambahan_image_2_file_name, :string
  	remove_column :survey_forms, :tambahan_image_2_content_type, :string
  	remove_column :survey_forms, :tambahan_image_2_file_size, :integer
  	remove_column :survey_forms, :tambahan_image_2_updated_at, :datetime
  	remove_column :survey_forms, :tambahan_image_3_file_name, :string
  	remove_column :survey_forms, :tambahan_image_3_content_type, :string
  	remove_column :survey_forms, :tambahan_image_3_file_size, :integer
  	remove_column :survey_forms, :tambahan_image_3_updated_at, :datetime
  	remove_column :survey_forms, :tambahan_image_4_file_name, :string
  	remove_column :survey_forms, :tambahan_image_4_content_type, :string
  	remove_column :survey_forms, :tambahan_image_4_file_size, :integer
  	remove_column :survey_forms, :tambahan_image_4_updated_at, :datetime
  	remove_column :survey_forms, :tambahan_image_5_file_name, :string
  	remove_column :survey_forms, :tambahan_image_5_content_type, :string
  	remove_column :survey_forms, :tambahan_image_5_file_size, :integer
  	remove_column :survey_forms, :tambahan_image_5_updated_at, :datetime
  end
end
