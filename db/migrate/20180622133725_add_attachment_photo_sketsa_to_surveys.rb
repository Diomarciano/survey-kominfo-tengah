class AddAttachmentPhotoSketsaToSurveys < ActiveRecord::Migration
  def self.up
    change_table :survey_forms do |t|
      t.attachment :photo_sketsa
      
    end
  end

  def self.down
    remove_attachment :survey_forms, :photo_sketsa
    
  end
end
