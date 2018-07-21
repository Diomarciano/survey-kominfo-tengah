class AddAttachmentImageToSurveyForms < ActiveRecord::Migration
  def self.up
    change_table :survey_forms do |t|
      t.attachment :image_gedung
      t.attachment :image_rencana_tempat_perangkat
      t.attachment :image_genset
      t.attachment :image_lingkungan_depan
      t.attachment :image_lingkungan_belakang
      t.attachment :image_lingkungan_kiri
      t.attachment :image_lingkungan_kanan
      t.attachment :image_akses_ke_site
      t.attachment :image_akses_ke_site_1
    end
  end

  def self.down
    remove_attachment :survey_forms, :image_gedung
    remove_attachment :survey_forms, :image_rencana_tempat_perangkat
    remove_attachment :survey_forms, :image_genset
    remove_attachment :survey_forms, :image_lingkungan_depan
    remove_attachment :survey_forms, :image_lingkungan_belakang
    remove_attachment :survey_forms, :image_lingkungan_kiri
    remove_attachment :survey_forms, :image_lingkungan_kanan
    remove_attachment :survey_forms, :image_akses_ke_site
    remove_attachment :survey_forms, :image_akses_ke_site_1
  end
end
