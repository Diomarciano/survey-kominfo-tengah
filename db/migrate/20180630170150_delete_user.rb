class DeleteUser < ActiveRecord::Migration
  def change
  	remove_reference :survey_forms, :user, index: true, foreign_key: true
  	remove_reference :form_barats, :member, index: true, foreign_key: true

  end
end
