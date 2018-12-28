# flutter_localized_string

A new flutter plugin project.

## Getting Started

This is library inspired by NSLocalizedString from iOS. 
Uses json files as language files eg. en.json , de.json

You have to add these to your pubspec.yaml: 

```yaml
flutter_localizations: 
    sdk: flutter
```

then you have to add within `flutter:` section:

```yaml
assets:
    - assets/
```


When you're all set with pubspec file, you must put this in to your `main.dart`: 

```dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        // ... other locales the app supports
      ],

      title: "title",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),      home: LocalizedWidget(widget: MyHomePage(title: "main_page_title")),
    );
  }
}

```

LocalizedWidget is responsible for wrapping up the class with FutureBuilder and enables plugin to load json file while loading widget tree.

#Library usage 

Once you did all of these steps. You should be able to use library as follows: 
```dart
LocalizedString.by(key: "title")
```

while `en.json` looks like this:

```json
{
    "title" : "Main title"
}
```
