Feature: Setup should bootstrap a new repository
  Scenario: Setting up configuration for the new middleman app
    Given a fixture app "example-app"
    When I run `middleman setup`
    Then a git repository should exist
    And a remote named "origin" has value "remote_url"
