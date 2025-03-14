plugins {
    id("com.android.application")
    id("com.google.gms.google-services") // ✅ FlutterFire Configuration
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.flutter_application_1"
    compileSdk = 35 // ✅ Ubah dari 33 ke 34 atau 35

    defaultConfig {
        applicationId = "com.example.flutter_application_1"
        minSdk = 23  // ✅ Biarkan tetap 23
        targetSdk = 35 // ✅ Ubah dari 33 ke 34 atau 35
        versionCode = 1
        versionName = "1.0"

        ndkVersion = "27.0.12077973"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    buildTypes {
        release {
            isMinifyEnabled = false  // ✅ Fix: Tambahkan 'is' di depan
            isShrinkResources = false  // ✅ Fix: Tambahkan 'is' di depan

            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
} // ✅ Fix: Tutup `android {}` dengan benar

flutter { 
    source = "../.." 
} // ✅ Pastikan `flutter {}` berada di luar `android {}`
