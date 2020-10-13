﻿Процедура ОбработкаЗаполнения(ДанныеЗаполнения, ТекстЗаполнения, СтандартнаяОбработка)
	Автор = ПараметрыСеанса.ТекущийПользователь;
	Разделитель = " ";
    Строки = СтрЗаменить(ПользователиИнформационнойБазы.ТекущийПользователь(), Разделитель, Символы.ПС);
	Фамилия = СтрПолучитьСтроку(Строки, 2);
	Имя = СтрПолучитьСтроку(Строки, 3);
	Отчество = СтрПолучитьСтроку(Строки, 4);                                    
КонецПроцедуры

Процедура ПриУстановкеНовогоКода(СтандартнаяОбработка, Префикс)
	Префикс = "К";
КонецПроцедуры

Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	Если Договор Тогда
		ПроверяемыеРеквизиты.Добавить("Контрагент");
		ПроверяемыеРеквизиты.Добавить("КонтактноеЛицо");
	КонецЕсли;
		
КонецПроцедуры
