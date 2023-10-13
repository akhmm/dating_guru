class AddDetailsDescriptionToActivity < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :details_description, :string
  end
end
