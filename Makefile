default: Engine.class Twitt.class GIDAFileManager.class
		javac ClimaIbero.java
GIDAFileManager.class:
		javac GIDAFileManager.java
Engine.class: Twitt.class
		javac -classpath Tweet/:.:../lib/ Engines/*.java
Twitt.class:
		javac -classpath ../lib/twitter4j-core-3.0.4-SNAPSHOT.jar:.:Tweet/:../lib Tweet/*.java
jar: ClimaIbero.class
		jar -cvfm climauia.jar MANIFEST.MF ClimaIbero.class
			@echo "now run your program with java -jar climauia.jar"
ClimaIbero.class: Engine.class Twitt.class #TweetStack.class
		javac ClimaIbero.java
clean: 
		rm -rf climauia.jar
			rm -rf *.class
				rm -rf Tweet/*.class
					rm -rf Engines/*.class
