class AddAttachmentPhotoSketsaToSurveyForms < ActiveRecord::Migration
  def self.up
    change_table :survey_forms do |t|
      
      t.attachment :image_geotagging
      t.attachment :image_surveyor
      t.attachment :image_tambahan_photo_1
      t.attachment :image_tambahan_photo_2
      t.attachment :image_tambahan_photo_3
    end
  end

  def self.down
    
    remove_attachment :survey_forms, :image_geotagging
    remove_attachment :survey_forms, :image_surveyor
    remove_attachment :survey_forms, :image_tambahan_photo_1
    remove_attachment :survey_forms, :image_tambahan_photo_2
    remove_attachment :survey_forms, :image_tambahan_photo_3
  end
end
