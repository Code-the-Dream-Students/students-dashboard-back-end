class AddUserToStundets < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :user, null: true, foreign_key: true
  end
end
