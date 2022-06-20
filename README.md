# Git command

`git init` - инициализация репозитория

`git status` - показать текущий статус проекта.

`git add` - добавление файлов в состояние staged.

`git commit -m"message"` - сделать коммит с сообщением message.

`git commit -a -m"message"` - добавить все модифицированные файлы (за исключением новых или не отслеживаемых) и делает коммит с сообщением message.

`git commit --amend -m"message"` - добавляет изменения, изменяет сообщение message у последнего коммита.

`git reset` - отмена изменений в проекте.

`git reset [--soft | --mixed | --hard] [COMMIT]`

+ `--soft` - возвращает на указанный коммит и переводит все коммиты после указанного в отслеживаемую зону (staged).

+ `--mixed` - возвращает на указанный коммит и переводит все коммиты после указанного в неотслеживаемую зону (unstaged).

+ `--hard` - возвращает на указанный коммит и УДАЛЯЕТ ВСЕ коммиты после указанного.

+ `COMMIT` - указатель на коммит или на HEAD:

    + `HEAD^` - откатиться на 1 коммит.

    + `HEAD^^` или `HEAD~2` - откатиться на 2 коммита.

    + `HASH` - указатель на HASH коммита.

`git checkout` - используется для перемещения, между коммитами, версиями отдельных файлов и ветками.

`git checkout [COMMIT | BRANCH]`:

+ COMMIT - указатель на коммит.

+ BRANCH - указатель на ветку.

`git checkout [COMMIT | BRANCH] -- [FILES]`:

+ `--` - указатель, что дальше нет команд, только текст.

+ `FILES` - путь до фала(ов).

`git clean -n` - выведет список не отслеживаемых файлов которые можно удалить git clean -f - удаляет файлы из репозитория.

`git remote` - управляет набором отслеживаемых репозиториев.

`git remote -v` - список удалённых репозиториев.

`git remote show <NAME>` - показать информацию об удалённом репозитории <NAME>

`git remote add <NAME> <URL>` - добавление репозитория:

+ `<NAME>` - название репозитория.
  
+ `<URL>` - ссылка, путь к репозиторию.
  
`git push <NAME> <BRANCH>` - отправить изменения в репозиторий по ссылке <NAME> ветку <BRANCH>.

`git pull <name> <BRANCH>` - забрать изменения из репозиторий по ссылке <NAME> ветку <BRANCH>.

`git push --delete <NAME> <BRANCH>` - удалить ветку <BRANCH> на удалённом репозитории <NAME>.

`git push --set-upstream <NAME> <BRANCH>` - первого изменения на сервер.

`git clone <URL>` - загрузить удалённый репозиторий.
  
`git branch` - получить список всех имеющихся веток и и показывает на текущий HEAD.

`git branch -d <BRANCH>`-  удалить ветку <BRANCH>:

+ `-d` - простое удаление.
  
+ `-D` - --force удаление. Удаление ветки <BRANCH> не смотря ни на что.
  
`git branch -r` - получить список всех веток которые находятся на удалённом репозитории.

`git checkout <BRANCH>` - переключиться на ветку <BRANCH>.

`git checkout -b <BRANCH>` - создать и переключиться на ветку <BRANCH>.

`git merge <BRANCH>` - слить ветку c текущей (куда указывает HEAD) веткой.

`git fetch` - получить информацию об изменениях в удалённом репозитории.

`git pull = git fetch && git merge <name> <BRANCH>`

Operations with file:
  
+ `git rm [файл`] - yдаляет конкретный файл из рабочей директории и индексирует его удаление.

+ `git rm --cached [файл]` - убирает конкретный файл из контроля версий, но физически оставляет его на своём месте.

+ `git mv [оригинальный файл] [новое имя]` - перемещает и переименовывает указанный файл, сразу индексируя его для последующего коммита.

