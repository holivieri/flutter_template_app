# Flutter Template App

A new Template to use in any new Flutter project.

## Getting Started
Just clone the repository, open it in Visual Studio Code and run 
```
flutter pub get
flutter gen-l10n

```


## Architecture
This template uses Bloc with repository and services pattern.

The Bloc uses the Repository to get data.

Repository will serve the data to the Bloc. It will decide if it needs to call an API or return data that it has in memory. The first time it will call the API using a service for that. In some cases, for example, when you get the list of countries it will not going to change, so, the repository will return the list that it has in memory.

In other cases, the repository could use a timer to get new data. I.e if you want to get the list of products on sale, you can set a time of 20 seconds, if the user request the same information during 20 seconds the repository returns the list in memory, if the time elapse is longer than 20 seconds the repository will call the api (using a service) and update the list before returning it.

The service will call the API to get data.


## Localization

This project generates localized messages based on arb files found in
the `lib/src/localization` directory.

It is based in a json file with key and value. You need to add all the keys which its values in the files inside I10n folder.

```
l10n\app_en.arb
l10n\app_es.arb
```
The default file is English. You can add as much languages as you wish. You should create a file per each language, like this:

```
l10n\app_fr.arb
```
And you also need to add the new support language to **supportedLocales** in app.dart file.

```
 supportedLocales: const [
              Locale('en', ''),
              Locale('es', ''),
              Local('fr', ''),
            ],
```

When finished, you need to compile that files, for doing that, you need to run

```
flutter gen-l10n
```

That will create the class **AppLocalizations** class inside **.dart_tool\\flutter_gen\\gen_l10n**
You need to import this class in your Pages or widgets to use it. VS doesn't import that automatically. You need to add

```
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
```

### How to use localization

```
AppLocalizations.of(context)!.{your tag}
```


## Support
If you want to add features to this project just create a Pull Request. Please review that you don't have any warning before creating the PR

I work as a contractor in Canada, you can [contact me](hernan.olivieri@gmail.com) if you need any software development or training in your company.






