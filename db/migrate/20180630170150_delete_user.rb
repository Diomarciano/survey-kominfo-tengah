class DeleteUser < ActiveRecord::Migration
  def change
  	remove_reference :survey_forms, :user, index: true, foreign_key: true

  end
end
