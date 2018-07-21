class AddAttachmentPhotoSketsaToFormBarats < ActiveRecord::Migration
  def self.up
    change_table :form_barats do |t|
      t.attachment :photo_sketsa
      t.attachment :image_gedung
      t.attachment :image_rencana_tempat_perangkat
      t.attachment :image_genset
      t.attachment :image_lingkungan_depan
      t.attachment :image_lingkungan_belakang
      t.attachment :image_lingkungan_kiri
      t.attachment :image_lingkungan_kanan
      t.attachment :image_akses_ke_site
      t.attachment :image_akses_ke_site_1
      t.attachment :image_geotagging
      t.attachment :image_surveyor
      t.attachment :image_tambahan_photo_1
      t.attachment :image_tambahan_photo_2
      t.attachment :image_tambahan_photo_3
    end
  end

  def self.down
    remove_attachment :form_barats, :photo_sketsa
    remove_attachment :form_barats, :photo_sketsa
    remove_attachment :form_barats, :image_gedung
    remove_attachment :form_barats, :image_rencana_tempat_perangkat
    remove_attachment :form_barats, :image_genset
    remove_attachment :form_barats, :image_lingkungan_depan
    remove_attachment :form_barats, :image_lingkungan_belakang
    remove_attachment :form_barats, :image_lingkungan_kiri
    remove_attachment :form_barats, :image_lingkungan_kanan
    remove_attachment :form_barats, :image_akses_ke_site
    remove_attachment :form_barats, :image_akses_ke_site_1
    remove_attachment :form_barats, :image_geotagging
    remove_attachment :form_barats, :image_surveyor
    remove_attachment :form_barats, :image_tambahan_photo_1
    remove_attachment :form_barats, :image_tambahan_photo_2
    remove_attachment :form_barats, :image_tambahan_photo_3
  end
end
