# /path/to/your/redmine/plugins/redmine_custom_issue_list/init.rb
require 'redmine_custom_issue_list/hooks/user_preferences_hook'
require 'redmine_custom_issue_list/patches/my_controller_patch'

Redmine::Plugin.register :redmine_custom_issue_list do
  name 'Redmine Custom Issue List plugin'
  author 'Your Name'
  description 'This is a plugin for Redmine to customize the issue list view'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end


Rails.configuration.to_prepare do
  MyController.send(:include, RedmineCustomIssueList::Patches::MyControllerPatch)
end