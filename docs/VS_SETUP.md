# Быстрая компиляция при помощи VS Code

Если вы пользуетесь редактором Visual Studio Code, для упрощения компиляции вы можете установить расширение [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop). Это расширение добавляет т.н. снипеты: скобки, латинские символы, математические операции и пр. Также, в подменю *STRUCTURE* есть навигация по оглавлению.

После установки расширения, находясь в tex-файлах, в верхнем правом углу экрана появится зеленая кнопка, которая будет компилировать документ по заданным ниже правилам. Всё, что нам нужно, так это переопределить стандартную конфигурацию компиляции документа в `settings.json`.

Найти этот файл можно, во-первых, перейдя в *Файл*-*Настройки*-*Параметры* (Горячая комбинация: `Ctrl` + `,`) и нажав на иконку документа в верхнем правом углу (Открыть параметры JSON). Или же, во-вторых, вы можете открыть палитру команд сочетанием клавиш `Ctrl`+`Shift`+`P`, набрать `settings.json` и выбрать `Открыть параметры JSON`. 

Вставьте следующий код в конец файла:


```json
    "latex-workshop.latex.recipes": [
        {
            "name": "latexmk (xelatex)",
            "tools": [
                "xelatex"
            ]
        }
    ],
    "latex-workshop.latex.tools": [{
        "name": "xelatex",
        "command": "xelatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "--shell-escape",
            "%DOC%"
        ]
    }]
```

Такая конфигурация будет собирать файл при помощи `xelatex`.
