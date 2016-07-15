class CreateCmsAdministrators < ActiveRecord::Migration[5.0]
  def change
    create_table :cms_administrators do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :cms_administrators, :email, unique: true
  end
end
