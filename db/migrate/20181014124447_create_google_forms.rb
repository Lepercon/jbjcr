class CreateGoogleForms < ActiveRecord::Migration[5.2]
  def change
    create_table :google_forms do |t|
    	t.string :formalname
    	t.string :formallink
    	t.string :description
      t.timestamps
    end
  end
end
