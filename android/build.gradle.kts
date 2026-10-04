allprojects {

    repositories {
        google()
        mavenCentral()
    }
}

rootProject.buildDir = rootProject.file("../build")
subprojects {
    project.buildDir = rootProject.file("${rootProject.buildDir}/${project.name}")
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.buildDir)
}
