// Top-level build.gradle.kts

buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.android.tools.build:gradle:8.5.2") // ✅ Match Android Gradle plugin version
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.9.23") // ✅ Match Kotlin version
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// ✅ Redirect build outputs to /build folder
val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
    project.evaluationDependsOn(":app")
}

// ✅ Clean task
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
