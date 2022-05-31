# GitHub.HW_2
- На локальном репозитории сделать ветки для:
    + Postman: `git branch Postman`
    + Jmeter: `git branch Jmeter`
    + CheckLists: `git branch CheckLists`
    + Bag Reports: `git branch Bag_Reports`
    + SQL: `git branch SQL`
    + Charles: `git branch Charles`
    + Mobile testing: `git branch Mobile_testing`
-  Запушить все ветки на внешний репозиторий: `git push --all`
-  В ветке Bag Reports сделать текстовый документ со структурой баг репорта: `vim bag_report.txt`
-  Запушить структуру багрепорта на внешний репозиторий: `git commit -am "add bag_report.txt" && git push --set-upstream origin Bag_Reports`
-  Вмержить ветку Bag Reports в Main: `git checkout main && git merge Bag_Reports`
-  Запушить main на внешний репозиторий: `git push`
-  В ветке CheckLists набросать структуру чек листа: `vim checklist.txt`
-  Запушить структуру на внешний репозиторий: `git add checklist.txt && git commit -m "add checklist.txt"`
                                              `git push --set-upstream origin CheckLists`
-  На внешнем репозитории сделать Pull Request ветки CheckLists в main: `merge pull request`, `confirm merge`
-  Синхронизировать Внешнюю и Локальную ветки Main:  `git pull`
