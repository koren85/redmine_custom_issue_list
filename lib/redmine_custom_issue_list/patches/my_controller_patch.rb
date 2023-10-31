# lib/redmine_custom_issue_list/patches/my_controller_patch.rb

require_dependency 'my_controller'

module RedmineCustomIssueList
  module Patches
    module MyControllerPatch
      def self.included(base)
        base.send(:include, InstanceMethods)
        base.class_eval do
          unloadable # Отправить unloading исключение, чтобы быть перезагруженным в девелопмент-режиме

          alias_method :account_without_issue_list_setting, :account
          alias_method :account, :account_with_issue_list_setting
        end
      end

      module InstanceMethods
        def account_with_issue_list_setting

          #Rails.logger.debug "HTTP method is #{request.method} and #{request.post?}"

          if request.method == "POST"
            # Rails.logger.debug "This is a POST request."
            params.require(:user).permit(:issue_list_setting)
            User.current.issue_list_setting = params[:user][:issue_list_setting]
            User.current.save
          end

          # Вызов оригинального метода
          account_without_issue_list_setting
        end

      end
    end
  end
end
