Feature: Rule Sample

  Rule: This is a rule

    @smoke
    Example: A passing example
      Given this will pass
      When I do an action
      Then some results should be there

    @regression
    Example: A failing example
      Given this will fail
      When I do an action
      Then some results should be there
