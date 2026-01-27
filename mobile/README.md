# Team Git Flow (Flutter Project)

Этот документ описывает единый порядок работы с Git для команды.
## Ветки

* **main** — продакшн, напрямую не трогаем
* **develop** — интеграционная ветка
* **feature/frontend** — работа фронтенда
* **feature/backend** — работа бэкенда
* **feature/database** — работа базы данных

Каждый участник работает **только в своей feature-ветке**.

## Общие правила
* В `develop` изменения попадают **только через Pull Request**
* Перед PR **обязательно** влить свежий `develop` в свою feature-ветку
* Feature-ветки — долго живущие
* Прямые мерджи `feature ↔ feature` — **только в исключительных случаях**

## Порядок работы (чеклист)

### 1. Обновить `develop`

```bash
git fetch origin
git checkout develop
git pull origin develop
```

### 2. Влить `develop` в свою feature-ветку

```bash
git checkout feature/<your-branch>
git merge develop
```
Если есть конфликты — исправить и закоммитить.

### 3. Проверить проект (Flutter)

```bash
flutter clean
flutter pub get
flutter analyze
flutter test
flutter run
```

Если используется генерация кода:

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 4. Закоммитить изменения

```bash
git add .
git commit -m "feat: short description"
```

### 5. Запушить свою ветку

```bash
git push origin feature/<your-branch>
```

---

### 6. Создать Pull Request

* **Base**: `develop`
* **Compare**: `feature/<your-branch>`

В PR указать:

* что сделано
* как проверить
* что затронуто (экраны / эндпойнты)
* скриншоты (если UI)


### 7. Ревью и правки

Если есть комментарии — править в **той же ветке**, коммитить и пушить.


### 8. После мержа PR

Каждый участник обновляет локальный `develop`:

```bash
git checkout develop
git pull origin develop
```

## Flutter-правила (обязательно)

* Использовать **одинаковую версию Flutter/Dart**
* `pubspec.lock` для приложения **коммитится**
* Генерируемые файлы:

  * либо коммитятся
  * либо НЕ коммитятся, но тогда `build_runner` обязателен после клона


## Что запрещено

* ❌ Пушить напрямую в `main`
* ❌ Делать PR в `main` минуя `develop`
* ❌ Работать не в своей feature-ветке
* ❌ Коммитить `build/`, `.dart_tool/`


## Релиз

1. `develop` стабилен
2. PR: `develop → main`
3. Тег релиза (по договорённости)