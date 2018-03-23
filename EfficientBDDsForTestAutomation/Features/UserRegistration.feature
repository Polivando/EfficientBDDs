Feature: UserRegistration

Scenario: Register new user
	Given I am on home page
	When I add new user:
	| Username | Password | Email  | Phone |
	| user     | 111      | 1@i.ua | valid |
	Then I am able to log in with that user