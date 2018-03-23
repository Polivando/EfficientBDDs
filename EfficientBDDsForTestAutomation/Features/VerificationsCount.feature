Feature: VerificationsCount
	In order to avoid losing coverage
	As an enthusiastic tester
	I want to learn how to write independent atomic BDDs

Scenario: Filtering products
	Given I opened main screen of the application
	And I opened Frozen products
	When I filter by 'Catalog' with value 'seafood'
	Then I see only 'seafood' products displayed
	When I filter by 'weight' with value '71g-90g'
	Then I see only '71g-90g' products displayed