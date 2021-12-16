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
###2.4. Инструменты Git

1. Полный хеш: aefead2207ef7e2aa5dc81a34aedf0cad4c32545
Комментарий: Update CHANGELOG.md
Команда: git show aefea

2. Тег: v0.12.23
Команда: git show 85024d3

3. Количество родителей: 2
Хеши родителей: 56cd7859e05c36c06b56d013b55a252d0bb7e158 и 9ea88f22fc6269854151c571162c5bcf958bee2b
Команды: git show b8d720, git show 56cd7859e, git show 9ea88f22f

Далее, с разрешения проверяющего, буду писать сокращенные хеши. Полный хеш смотрю с помощью git show <short hash>.

4. Сокращенные хеши и комментарии между указанными тегами (не включая коммиты с тегами): 
b14b74c49 [Website] vmc provider links
3f235065b Update CHANGELOG.md
6ae64e247 registry: Fix panic when server is unreachable
5c619ca1b website: Remove links to the getting started guide's old location
06275647e Update CHANGELOG.md
d5f9411f5 command: Fix bug when using terraform login on Windows
4b6d06cc5 Update CHANGELOG.md
dd01a3507 Update CHANGELOG.md
225466bc3 Cleanup after v0.12.23 release
Команда: git log --oneline v0.12.23..v0.12.24

5.Хеш коммита: 8c928e83589d90a031f811fae52a81be7153e82f
Команда: git log -G 'func providerSource' --oneline, затем git show 8c928e835 

6. Коммиты:
22a2580e9 main: Use the new cliconfig package credentials source
35a058fb3 main: configure credentials from the CLI config file
c0b176109 prevent log output during init
8364383c3 Push plugin discovery down into command package
Команда: git log -G 'globalPluginDirs' --oneline

7. Автор функции: Martin Atkins.
Команда:  git log -G 'synchronizedWriters' --oneline, затем git show 5ac311e2a
