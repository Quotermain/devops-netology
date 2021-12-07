# devops-netology

First modification
___
###Комментарии к terraform/.gitignore:
- *&ast;&ast;/.terraform/&ast;* - игнорируется всё содержимое в
директориях ".terraform", расположенных в директории 'terraform'
и/или в поддиректориях этой директории
(terraform/.terraform/file1.txt, terraform/a/.terraform/file2.txt, 
terraform/a/.terraform/b/file2.txt и т.д);

- *&ast;.tfstate* - игнорируется все содержимое в директории 
'terraform' и/или в поддиректориях этой директории, заканчивающееся на ".tfstate" 
(terraform/file.tfstate, terraform/a.tfstate/, 
terraform/a/b.tfstate/, terraform/a/b/file.tfstate и т.д);

- *crash.log* - игнорируется все содержимое в директории 'terraform'
и/или в поддиректориях этой директории, точное имя которого 
crash.log (terraform/crash.log, terraform/a/crash.log/, 
terraform/a/b/crash.log).

Остальные паттерны, с разрешения проверяющего, описывать не буду.
Они раскрываются по аналогии.
___
New line for branch 'fix'
