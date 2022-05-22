Param([Parameter(Mandatory=$false)][string] $file='example.tex')
$file=[System.IO.Path]::GetFileName($file)
xelatex -synctex=1 -interaction=nonstopmode --shell-escape $file