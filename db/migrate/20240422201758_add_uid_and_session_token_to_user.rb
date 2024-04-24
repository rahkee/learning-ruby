# frozen_string_literal: true

class AddUidAndSessionTokenToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :uid, :string
    add_column :users, :session_token, :string
    add_index :users, :uid, unique: true
  end
end
