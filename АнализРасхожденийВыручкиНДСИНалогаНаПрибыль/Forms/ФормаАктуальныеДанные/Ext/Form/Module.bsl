﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	ЗаполнитьЗначенияСвойств(ЭтотОбъект, Параметры, "Имя, Период, ЗначениеПоказателя, ЗначениеАктуальныхДанных");
	Разница = ЗначениеПоказателя - ЗначениеАктуальныхДанных;
	Заголовок = СтрШаблон("Прибыль за %1:", ПредставлениеПериодаФормы(Период));
	Если Имя = "ДоходыОтРеализации" Тогда
		Элементы.ЗначениеПоказателя.Заголовок = "Сумма в декларации (Лист 02, строка 010)";
		Элементы.ЗначениеАктуальныхДанных.Заголовок = "Сумма в учете (Оборот Кт 90.01, НУ)";
	ИначеЕсли Имя = "ВнереализационныеДоходы" Тогда
		Элементы.ЗначениеПоказателя.Заголовок = "Сумма в декларации (Лист 02, строка 020)";
		Элементы.ЗначениеАктуальныхДанных.Заголовок = "Сумма в учете (Оборот Кт 91.01, НУ)";
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Функция ПредставлениеПериодаФормы(Период)

	Если Период = "Квартал1" Тогда
		Возврат "первый квартал";
	ИначеЕсли Период = "Квартал2" Тогда
		Возврат "второй квартал";
	ИначеЕсли Период = "Квартал3" Тогда
		Возврат "третий квартал";
	ИначеЕсли Период = "Квартал4" Тогда
		Возврат "четвертый квартал";
	ИначеЕсли Период = "Месяцев9" Тогда
		Возврат "девять месяцев";
	ИначеЕсли Период = "Полугодие" Тогда
		Возврат "полугодие";
	ИначеЕсли Период = "Год" Тогда
		Возврат "год";
	Иначе
		Возврат Период;
	КонецЕсли;
	
КонецФункции