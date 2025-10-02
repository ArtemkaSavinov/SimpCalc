# Calculator Project

[![CI](https://github.com/ArtemkaSavinov/SimpCalc/actions/workflows/ci.yml/badge.svg)](https://github.com/ArtemkaSavinov/SimpCalc/actions/workflows/ci.yml)

Простой Java-проект "Calculator" с Docker и автоматическим CI/CD через GitHub Actions.

## 🚀 Функционал
- Класс `Calculator` с базовыми математическими операциями.
- Unit-тесты для проверки корректности.
- **Dockerfile (multi-stage)** для сборки и запуска.
- **docker-compose.yml** для локального запуска приложения и тестов.
- **GitHub Actions CI** для автоматического тестирования при каждом пуше.

## 🔹 Быстрый старт


### Локальный запуск приложения
```bash
docker compose up --build calculator
```

### Локальный запуск тестов
```bash
docker compose run --rm tests
```

### Сборка и запуск без Compose
```bash
docker build -t calculator .
docker run --rm calculator
```
### Структура проекта

calculator/
├── src/                  # Исходники Java
├── pom.xml               # Maven конфигурация
├── Dockerfile            # Multi-stage Dockerfile
├── docker-compose.yml    # Compose для приложения и тестов
├── .github/
│   └── workflows/
│       └── ci.yml        # GitHub Actions workflow
└── README.md             # Этот файл


## 🔧 Требования

- **Docker** >= 20.10
- **Docker Compose V2**
- **Java** 17
- **Maven** 3.9+

## 💡 Примечания

1. Папка `target/` **не пушится в репозиторий** — jar собирается внутри Docker.
2. Локальные тесты рекомендуется запускать через `docker compose run --rm tests`.
3. Для локального запуска приложения используйте `docker compose up calculator`.
4. CI бейдж показывает статус сборки и тестов на GitHub.
