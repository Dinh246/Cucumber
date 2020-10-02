Feature: Count total products search
    As a tester,
    I want to test the search function when I search something
    So that I can the how many results will appear

Scenario: Search function
Given Open firefox/chrome and go to tiki homepage
When Search 'anything' and press 'search button'
Then Total results: '24' should appear