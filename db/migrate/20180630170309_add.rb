class Add < ActiveRecord::Migration
  def change
  	        add_reference :survey_forms, :user, index: true, foreign_key: true

  end
end
