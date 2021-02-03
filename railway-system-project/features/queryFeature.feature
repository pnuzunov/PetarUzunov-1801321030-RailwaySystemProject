Feature: Търсене в разписанието по критерии

  Scenario: Търсене в разписанието по критерии
    Given Потребителят достъпва страницата за търсене в разписанието по критерии
    And Потребителят въвежда начална гара "<fromStation>"  
    And Потребителят въвежда крайна гара "<toStation>"
    And Потребителят въвежда начални дата и час "<date1>"
    And Потребителят въвежда крайни дата и час "<date2>"
    When Потребителят натиска бутона за търсене
    Then Потребителят вижда съобщение "<expectedMessage>"


| fromStation  | toStation | date1  		| date2  			| expectedMessage  																		|
| Sofia				 | Sofia     | 01-01-2021	| 02-01-2021	|	Начална и крайна гара трябва да са различни.				|
| Sofia				 | London    | 01-01-2021	| 02-01-2021	|	Няма данни за направеното търсене.									|
| Sofia				 | Plovdiv   | 02-01-2021	| 01-01-2021	|	Началната дата трябва да е по-скоро от крайната.		|
| Sofia				 | 				   | 01-01-2021	| 02-01-2021	|	Моля, въведете крайна спирка.												|
| 						 | Plovdiv   | 01-01-2021	| 02-01-2021	|	Моля, въведете начална спирка.											|
| Sofia				 | Plovdiv   | 01-01-2021	|           	|	Моля, въведете крайна дата.													|
| Sofia				 | Plovdiv   |           	| 02-01-2021	|	Моля, въведете начална дата.												|
| Sofia				 | Plovdiv   | 01-01-2021	| 02-01-2021	|	Направление София-Пловдив в периода 01.01 - 02.01		|