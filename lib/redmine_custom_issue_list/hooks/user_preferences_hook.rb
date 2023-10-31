# redmine_custom_issue_list/lib/redmine_custom_issue_list/hooks/user_preferences_hook.rb

module RedmineCustomIssueList
  module Hooks
    class UserPreferencesHook < Redmine::Hook::ViewListener
      render_on :view_my_account_preferences, :partial => "users/issue_list_setting"
    end
  end
end
