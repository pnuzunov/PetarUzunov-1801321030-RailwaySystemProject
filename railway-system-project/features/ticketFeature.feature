Feature: Купуване на електронен билет

	Scenario: Опит за купуване на електронен билет с налични средства.
		Given Потребителят достъпва страницата за купуване на електронен билет
		And Потребителят разполага с "5" BGN
		When Потребителят натиска бутона за купуване на електронен билет
		Then Потребителят вижда съобщение "Успешно закупен електронен билет".

	Scenario: Опит за купуване на електронен билет с недостатъчно средства.
		Given Потребителят достъпва страницата за купуване на електронен билет
		And Потребителят разполага с "1" BGN
		When Потребителят натиска бутона за купуване на електронен билет
		Then Потребителят вижда съобщение "Грешка: недостатъчно средства".