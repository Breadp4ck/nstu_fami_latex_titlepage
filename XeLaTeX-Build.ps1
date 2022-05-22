# Входной необязательный параметр, который по умолчанию равен 'example.tex'
Param([Parameter(Mandatory=$false)][string] $file='example.tex')
$file=[System.IO.Path]::GetFileName($file)
# -synctex=1 -interaction=nonstopmode - данные опции нужны для --shell-escape
xelatex -synctex=1 -interaction=nonstopmode --shell-escape $file