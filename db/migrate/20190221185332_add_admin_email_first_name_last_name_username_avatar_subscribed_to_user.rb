class AddAdminEmailFirstNameLastNameUsernameAvatarSubscribedToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :avatar, :string
    add_column :users, :subscribed, :boolean
  end
end
