# healthindex

A flutter project about student happiness index

## Getting Started
Team Name: Infinity Stones
 
Members:
* Prithesh Dwivedi
* Shivam Modi
* Bhavna
* Dipanshu
* Harsh lohia
* Hitendra Singh

This project is a starting point for a Flutter application.

## How to Use 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/shivam-modi/happinessindexInfinityStones.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:**

To run app

```
flutter run
```

### Up-Coming Features:

* Connectivity Support
* Background Fetch Support

### Libraries & Tools Used

* [firebase_auth](https://github.com/firebase/flutterfire/tree/master/packages/firebase_auth/firebase_auth)
* [firebase](https://github.com/FirebaseExtended/firebase-dart)
* [cloud_firestore](https://github.com/firebase/flutterfire/tree/master/packages/cloud_firestore/cloud_firestore) (nosql type database for storing user data)
* [Provider](https://github.com/rrousselGit/provider) (State Management)

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we will be using in this project

```
lib/
|- constants/
|- screens/
|- modals/
|- utils/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- constants - All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for `theme`, `dimentions`, `api endpoints`, `preferences` and `strings`.
2- screens — Contains all the screens of our project, contains sub directory for each screen.
3- modals - Contains all data modals of our project, includes state notifier for local, network and shared pref/cache. 
4- utils — Contains the utilities/common functions/widgets of our application.
5- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

### Constants

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
constants/
|- app_theme.dart
|- dimens.dart
|- endpoints.dart
|- preferences.dart
|- strings.dart
```

### Routes

This file contains all the routes for your application.

```dart
import 'package:flutter/material.dart';

import 'ui/home/home.dart';
import 'ui/login/login.dart';
import 'ui/splash/splash.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}
```

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Conclusion

Thank you for looking into the repo please rate if you like it.
