Feature: Маркиране на запис в любими

  Scenario: Маркиране на запис като гост
    Given Потребителят достъпва страницата за маркиране на запис в любими
    When Потребителят натисне бутона за маркиране на запис
    Then Потребителят вижда съобщение от страницата за маркиране на запис "Грешка: не сте логнати".

	Scenario: Маркиране на вече маркиран запис като обикновен потребител
    Given Потребителят достъпва страницата за маркиране на запис в любими
    And Потребителят е логнат като обикновен потребител
    And Потребителят вече има маркиран запис с идентификатор 0
		When Потребителят маркира запис с идентификатор 0
		And Потребителят натисне бутона за маркиране на запис
    Then Потребителят вижда съобщение от страницата за маркиране на запис "Грешка: записът вече е маркиран".

	Scenario: Маркиране без избран запис като обикновен потребител
    Given Потребителят достъпва страницата за маркиране на запис в любими
    And Потребителят е логнат като обикновен потребител
		When Потребителят натисне бутона за маркиране на запис
    Then Потребителят вижда съобщение от страницата за маркиране на запис "Моля, изберете запис".
     
	Scenario: Маркиране на немаркиран запис като обикновен потребител
    Given Потребителят достъпва страницата за маркиране на запис в любими
    And Потребителят е логнат като обикновен потребител
		When Потребителят маркира запис с идентификатор 1
		And Потребителят натисне бутона за маркиране на запис
    Then Потребителят вижда съобщение от страницата за маркиране на запис "Успешно маркиран запис".