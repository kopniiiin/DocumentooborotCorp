﻿
&НаСервере
Процедура ПередЗаписьюНаСервере(Отказ, ТекущийОбъект, ПараметрыЗаписи)
	
	Запрос = Новый Запрос;
	Запрос.Текст = 
		"ВЫБРАТЬ
		|	ФизическиеЛица.Ссылка КАК Ссылка
		|ИЗ
		|	Справочник.ФизическиеЛица КАК ФизическиеЛица
		|ГДЕ
		|	ФизическиеЛица.Ссылка = &Ссылка";
	
	Запрос.УстановитьПараметр("Ссылка", Запись.ФизическоеЛицо);
	
	РезультатЗапроса = Запрос.Выполнить();
	
	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();
	
	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
		ОбъектФизЛицо = ВыборкаДетальныеЗаписи.Ссылка.ПолучитьОбъект();
		ОбъектФизЛицо.Фамилия = Запись.Фамилия;
		ОбъектФизЛицо.Имя = Запись.Имя;
		ОбъектФизЛицо.Отчество = Запись.Отчество;
		ОбъектФизЛицо.Записать();
	КонецЦикла;

КонецПроцедуры
