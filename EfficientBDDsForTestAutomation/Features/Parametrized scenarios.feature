@tag
Feature: Parametrized scenarios
	In order to avoid losing coverage
	As an enthusiastic tester
	I want to learn how to write independent atomic BDDs

	@anotherTag
Scenario Outline: Filtering products
	Given I opened main screen of the application
	And I opened Frozen products
	When I filter by '<filter>' with value '<value>'
	Then I see only 'seafood' products displayed

	@smoke
	Examples: 
	| filter  | value   |
	| Catalog | seafood |

	@fullregression
	Examples: 
	| filter  | value   |
	| Country | Ukraine |
	| weight  | 71g-90g |
	
	Scenario Outline: Quantity can be raised
	Given I opened Packets, Cereals products
	When I buy packed product '<quantity>' times
	Then I see it in basket with <quantity> quantity and correct Total

	Examples:
	| quantity |
	| 5        |