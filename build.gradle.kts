plugins {
    id ("com.specificlanguages.mps") version "1.2.2"
}

repositories {
    mavenCentral()
}

stubs {
    register("poi") {
        dependency("org.apache.poi:poi-ooxml:5.2.1")
        destinationDir("solutions/org.apache.poi/lib")
    }
}
