# ProGuard rules for the Flutter object detection app

# Keep the Flutter classes
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.** { *; }
-keep class io.flutter.util.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }

# Keep the native ML Kit classes
-keep class com.google.mlkit.** { *; }

# Keep the MainActivity class
-keep class com.example.flutterobjectdetection.MainActivity { *; }

# Keep all public classes and methods
-keep public class * {
    public protected *;
}

# Add any additional rules as needed for your app's dependencies