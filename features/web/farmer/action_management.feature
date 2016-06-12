Feature: Actions management
  In order to manage information about my actions in the field
  As a farmer
  I need to be able to read/create/edit/delete/list my actions

  @clear_data @loadInterventions
  Scenario: Create/Edit/Delete an action for a specific crop cycle
    Given I am logged in as a farmer with email "farmer@repair.nc" and password "farmer"
    And I have a crop cycle "Ananas 1" on plot "Parcelle A"
    When I follow "Ajouter une intervention"
    And I fill in "Nom" with "Labour #1"
    And I select "Labour" from "Intervention"
    And I press "Enregistrer"
    Then I should see "Labour #1"
    Given I follow "Editer"
    And I fill in "Nom" with "Labour #2"
    When I press "Enregistrer"
    Then I should see "Labour #2"
    Given I follow "Editer"
    When I press "Supprimer"
    Then I should see "Interventions culturales"
    And I should not see "Labour #2"


