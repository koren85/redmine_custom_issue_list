# /path/to/your/redmine/plugins/redmine_custom_issue_list/lib/redmine_custom_issue_list/patches/issues_controller_patch.rb

require_dependency 'issues_controller'

module RedmineCustomIssueList
  module Patches
    module IssuesControllerPatch
      def self.included(base)
        base.class_eval do
          helper :custom_issue_list
        end
      end
    end
  end
end
