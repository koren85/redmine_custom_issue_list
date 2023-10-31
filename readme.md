# Redmine Custom Issue List Plugin

## Overview

This Redmine plugin allows users to switch between two different views for the issue list. Users can set their preferred view in their profile settings.

### Views

1. **Standard View**: Only parent issues are displayed in the list.
2. **Extended View**: Parent issues are displayed along with their child issues.

## Compatibility

This plugin has been tested and is known to work on Redmine version 4.1. Compatibility with other versions is not guaranteed.

## Installation

1. Clone this repository into your Redmine's `plugins/` directory.
   git clone https://github.com/koren85/redmine_custom_issue_list

markdown
Copy code
2. Run the database migration.
   rake redmine:plugins:migrate RAILS_ENV=production

python
Copy code
3. Restart the Redmine application.

## Usage

1. Navigate to your profile settings by clicking on your username in the top-right corner and then clicking on "My Account".
2. Scroll down to find the "Issue List View" setting.
3. Choose your preferred view (Standard or Extended).
4. Save your settings.

Your preferred view for the issue list will now be activated.

## Language Support

Currently, the plugin is only available in Russian. Support for other languages is not planned at the moment.

## License

This project is licensed under the MIT License

## Contributing

Contributions are welcome. Please fork the project and create a pull request with your changes.

## Author

Chernyaev Alexandr