# Инструкция для запуска

## Для запуска сервиса использовался XAMPP
Папку **htdocs** необходимо поместить в корневую папку *\xampp*
Затем на контрольной панели XAMPP запустить Apache и MySQL
В веб-интерфейсе *http://localhost/phpmyadmin/* импортировать базу данных **test.sql**

http://localhost/test/product/read_paging.php - получение списка объявлений
http://localhost/test/product/read_one.php?id=1 = получение объявления с заданным id