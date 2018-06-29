class AddMemberToFormBarats < ActiveRecord::Migration
  def change
    add_reference :form_barats, :member, index: true, foreign_key: true
  end
end
