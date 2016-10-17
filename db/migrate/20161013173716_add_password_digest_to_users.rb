class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string #name of table, name of column or attribute, it is of type string
  end
end
