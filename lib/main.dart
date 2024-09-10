import 'package:flutter/material.dart';

// Отсюда начинается отладка
void main() {
  // Метод запуска приложения
  // MyApp() - это класс, который описывается ниже
  runApp(const MyApp());
}

// MyApp наследует от встроенного класса StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Пустой конструктор класса

  // Переопределение метода build

  // Все виджеты - это классы
  // Фактически это элементы интерфейса (кнопки, списки, т.д.)
  @override
  Widget build(BuildContext context) {
    // Возвращает виджет
    // MaterialApp = корневой виджет приложения
    // Можно менять глобальные параметры приложения
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Убрали надпись Debug
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      //
      home: const HomePage(),
    );
    // home - стартовый виджет приложения
  }
}

// Создание стартового виджета приложения
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold - удобный виджет для начала
    // Обычно пишется const Scaffold();
    // Но мы не пишем, потому что пишем что-то еще внутри

    // Белые комментарии - это автоматические
    // Создаются переносом "),"
    return Scaffold(
      body: Center(
        // Column - делает столбец
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // В целом просто используем разные виджеты

            // ==== Текст авторизации ====
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Авторизация",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 150,
            ),

            // ==== Поля ввода текста ====
            // Логин
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Логин",
                  hintStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.black12,
                  border: InputBorder.none,
                ),
              ),
            ),

            // Пароль
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Пароль",
                  hintStyle: TextStyle(color: Colors.black26),
                  filled: true,
                  fillColor: Colors.black12,
                  border: InputBorder.none,
                ),
              ),
            ),

            // ==== Запомнить меня ====
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: false,
                  onChanged: null,
                ),
                Text(
                  "Запомнить меня",
                  style: TextStyle(color: Colors.black38),
                ),
              ],
            ),

            Container(
              width: 350,
              height: 50,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Войти"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
              child: Container(
                width: 350,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text("Регистрация"),
                ),
              ),
            ),

            const Text(
              "Восстановить пароль",
              style: TextStyle(color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }
}
