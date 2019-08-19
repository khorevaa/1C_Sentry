﻿// Инициализирует обработку для подготовки сообщения
//
// Параметры:
//  ПроектSentry  - Справочник.ПроектыSentry - РабочийПроект в который надо отправить сообщение
// Возвращаемое значение:
//   ОбработкаОбъект   - экземпляр обработки СообщениеSentry
//
Функция НовоеСообщениеSentry(ПроектSentry) Экспорт

	Обработка = Обработки.СообщениеSentry.Создать();
    Обработка.Инициализировать(ПроектSentry);
    
    Возврат Обработка;

КонецФункции // НовоеСообщение()

// Инициализирует обработку для описание возникшего исключения
// 
// Параметры:
// Возвращаемое значение:
//	ОбработкаОбъект.ИсключениеSentry    - экземпляр обработки ИсключенииеSentry
Функция НовоеОписаниеИсключенияSentry() Экспорт
	
	Обработка = Обработки.ИсключениеSentry.Создать();
	Обработка.Инициализировать();
	
	Возврат Обработка;
	
КонецФункции

// Инициализирует обрботка для описания контекста: платформа, конфигурация, операционная система
// 
// Параметры:
// Возвращаемое значение:
// 	ОбработкаОбъект.КонтекстSentry    - экземпляр обработки КонтекстSentry
Функция НовоеОписаниеКонтекстаSentry() Экспорт

	Обработка = Обработки.КонтекстSentry.Создать();
	Обработка.Инициализировать();
	
	Возврат Обработка;
	
КонецФункции 

// Инициализирует обработку для описания пользователя
// 
// Параметры:
// Возвращаемое значение:
// 	ОбработкаОбъект.ПользовательSentry    - экземпляр обработки ПользовательSentry
Функция НовыйПользовательSentry() Экспорт
	
	Обработка = Обработки.ПользовательSentry.Создать();
	Обработка.Инициализировать();
	
	Возврат Обработка;
	
КонецФункции


// Инициализирует обработку для описания элемента цепочки событий (Breadcrumbs)
// 
// Параметры:
// Возвращаемое значение:
// 	ОбработкаОбъект.ЭлементЦепочкиСобытийSentry   - экземпляр обработки ЭлементЦепочкиСобытийSentry
Функция НовыйЭлементЦепочкиСобытий() Экспорт
	
	Обработка = Обработки.ЭлементЦепочкиСобытийSentry.Создать();
	Обработка.Инициализировать();
	
	Возврат Обработка;
	
КонецФункции


// инициализирует обработку для описание одного из состояний трассировки стека (Stacktrace)
// 
// Параметры:
// Возвращаемое значение:
// 	ОбработкаОбъект.ЭлементТрассировкиСтекаSentry - экземпляр обработки ЭлементТрассировкиСтекаSentry
Функция НовыйЭлементТрассировкиСтека() Экспорт
	
	Обработка = Обработки.ЭлементТрассировкиСтекаSentry.Создать();
	Обработка.Инициализировать();
	
	Возврат Обработка;
	
КонецФункции