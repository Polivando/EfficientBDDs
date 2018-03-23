Feature: ImperativeDeclarativeStyle
	In order to avoid scenarios overcomplexity
	As an enthusiastic tester
	I want to learn how to write declarative BDDs

Scenario: Buying products for a recipe
	Given I opened main screen of the application
	And I clicked Shop by recipes button
	And I clicked on 'Peperonata' recipe
	And I am on page of 'Peperonata' recipe
	When I click + Add products to cart button
	And I click Add products to card button
	Then I see list of products added to cart on the left
	When I press 'Checkout' button
	Then I see authorization popup