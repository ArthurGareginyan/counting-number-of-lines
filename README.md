# Counting the number of lines in CSS and PHP files, recursively in catalog

Временами бывает нужно посчитать количество строк кода в написанном проекте. Для этого Я написал сценарий на “BASH” который считает количество строк во всех файлах с “PHP” и “CSS” расширением найденных в указанном каталоге и его подкаталогах (рекурсивно).

Код написан под поиск “PHP” и “CSS” файлов но может быть легко переделан под другие типы файлов.

## Usage

Run the num_lines.sh with path to needed directory:
```
~/num_lines.sh /example_directory
```

## Output

```
LIST OF All FOUNDED FILES:
.//index.php
.//page.php
.//style.css

IN 2 PHP FILES: 230 lines
IN 1 CSS FILES: 292 lines

IN ALL 3 FILES: 522 lines
```

## Author

Arthur Garegnyan aka Berserkr

* Email: arthurgareginyan@gmail.com

* GitHub: [https://github.com/ArthurGareginyan/](https://github.com/ArthurGareginyan/)

* My Website: [http://www.arthurgareginyan.com](http://www.arthurgareginyan.com)

* Donation Page: [http://www.arthurgareginyan.com/donate.html](http://www.arthurgareginyan.com/donate.html)