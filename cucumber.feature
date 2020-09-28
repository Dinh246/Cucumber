Feature: Cucumber Basket
    As a gardener,
    I want to carry cucumbers in a basket,
    So that I don't drop them all.
    Scenario: Add cucumbers to a basket
        Given The basket has 2 cucumbers
        When 4 cucumbers are added to the basket
        Then The basket contains 6 cucumbers