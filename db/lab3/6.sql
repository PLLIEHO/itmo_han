SELECT * FROM Н_НАПР_СПЕЦ WHERE КОД_НАПРСПЕЦ = '230101';
SELECT НАПС_ИД FROM Н_ПЛАНЫ 
    JOIN Н_НАПР_СПЕЦ ON Н_ПЛАНЫ.НАПС_ИД = Н_НАПР_СПЕЦ.ИД 
    WHERE Н_НАПР_СПЕЦ.КОД_НАПРСПЕЦ = '230101';
SELECT КОНЕЦ FROM Н_УЧЕНИКИ
    WHERE date_part('year', КОНЕЦ) = 2012 AND date_part('month', КОНЕЦ) = 9 AND date_part('day', КОНЕЦ) = 1;

SELECT Н_УЧЕНИКИ.ГРУППА, Н_УЧЕНИКИ.ИД, Н_ЛЮДИ.ИМЯ, Н_ЛЮДИ.ФАМИЛИЯ, Н_ЛЮДИ.ОТЧЕСТВО, Н_УЧЕНИКИ.П_ПРКОК_ИД FROM Н_УЧЕНИКИ
    JOIN Н_ПЛАНЫ ON Н_УЧЕНИКИ.ПЛАН_ИД = Н_ПЛАНЫ.ИД
    JOIN Н_ЛЮДИ ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
    JOIN Н_НАПР_СПЕЦ ON Н_ПЛАНЫ.НАПС_ИД = Н_НАПР_СПЕЦ.ИД
    JOIN Н_ФОРМЫ_ОБУЧЕНИЯ ON Н_ПЛАНЫ.ФО_ИД = Н_ФОРМЫ_ОБУЧЕНИЯ.ИД
    WHERE Н_ФОРМЫ_ОБУЧЕНИЯ.НАИМЕНОВАНИЕ IN ('Очная', 'Заочная') 
        AND ПРИЗНАК = 'отчисл'
        AND date_part('year', КОНЕЦ) = 2012 AND date_part('month', КОНЕЦ) = 9 AND date_part('day', КОНЕЦ) = 1
        AND Н_НАПР_СПЕЦ.КОД_НАПРСПЕЦ = '230101';