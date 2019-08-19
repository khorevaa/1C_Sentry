﻿#Область Интерфейс	

// Инициализация базовых параметров
//
//
Процедура Инициализировать() Экспорт

    Тело = Новый Соответствие;

	Тело.Вставить("function", "external_code");
	
КонецПроцедуры // Инициализировать()


// Указать имя процедуры\функции, где возникла исключительная ситуация
// 
// Параметры:
// 	ИмяФункции - Строка - имя функции
// Возвращаемое значение:
// 	ОбработкаОбъект.ЭлементТрассировкиСтекаSentry - сама обработка
Функция ИмяФункция(ЗНАЧ ИмяФункции) Экспорт
	
	Тело.Вставить("function", ИмяФункции);
	
	Возврат ЭтотОбъект;
	
КонецФункции


// Указать имя модуля, где возникла исключительная ситуация
// 
// Параметры:
// 	ИмяМодуля - Строка - Имя модуля
// Возвращаемое значение:
// 	ОбработкаОбъект.ЭлементТрассировкиСтекаSentry - сама обработка
Функция Модуль(ЗНАЧ ИмяМодуля) Экспорт
	
	Тело.Вставить("module", ИмяМодуля);
	
	Возврат ЭтотОбъект;
	
КонецФункции


// Указать путь к исходному коду модуля
// 
// Параметры:
// 	Путь - Строка - путь к файлу, относительный
// Возвращаемое значение:
// 	ОбработкаОбъект.ЭлементТрассировкиСтекаSentry - сама обработка
Функция ПутьКФайлу(Знач Путь) Экспорт
	
	Тело.Вставить("filename", Путь);
	
	Возврат ЭтотОбъект;
	
КонецФункции

Функция ИсходныйКод(ЗНАЧ Код, ЗНАЧ НомерСтроки, ОграничениеВывода = 5) Экспорт
	
	Тело.Вставить("lineno", НомерСтроки);
	
	КодПострочно = СтрРазделить(Код, Символы.ПС);
	КоличествоСтрокКодаВсего = КодПострочно.Количество();
 	КодПострочно.Вставить(0, "Отбивка");
	
	Тело.Вставить("pre_context", Новый Массив);
	Тело.Вставить("context_line", "");
	Тело.Вставить("post_context", Новый Массив);
	
	Для Сч = Макс(0, НомерСтроки - ОграничениеВывода - 1) По НомерСтроки - 2 Цикл
		
		Тело["pre_context"].Добавить(КодПострочно[Сч]);
		
	КонецЦикла;
	
	Тело["context_line"] = КодПострочно[НомерСтроки];
	
	Для Сч = НомерСтроки + 1 По Мин(КоличествоСтрокКодаВсего, НомерСтроки + ОграничениеВывода) Цикл
		
		Тело["post_context"].Добавить(КодПострочно[Сч]);
		
	КонецЦикла; 
	
	Возврат ЭтотОбъект;
	
КонецФункции

Функция ИсходнаяСтрока(ЗНАЧ Строка, ЗНАЧ НомерСтроки) Экспорт
	
	Тело.Вставить("lineno", НомерСтроки);
	Тело.Вставить("context_line", Строка);
	
	Возврат ЭтотОбъект;
	
КонецФункции

Функция НомерСтрокиКода(ЗНАЧ НомерСтроки) Экспорт
	
	Тело.Вставить("lineno", НомерСтроки);
	
	Возврат ЭтотОбъект;
	
КонецФункции

Функция ДобавитьПеременную(ЗНАЧ ИмяПеременной, ЗНАЧ ЗначениеПеременной) Экспорт
	
	Если Тело["vars"] = Неопределено Тогда
		
		Тело.Вставить("vars", Новый СписокЗначений());
		
	КонецЕсли;
	
	Тело["vars"].Вставить(ИмяПеременной, ЗначениеПеременной);
	
	Возврат ЭтотОбъект;
	
КонецФункции

#КонецОбласти

#Область Терминальные_операции

Функция ПолучитьОписание() Экспорт

	Возврат Тело;
	
КонецФункции

#КонецОбласти