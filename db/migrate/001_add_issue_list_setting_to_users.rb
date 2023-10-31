class AddIssueListSettingToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :issue_list_setting, :integer, default: 1, null: false
  end
end
