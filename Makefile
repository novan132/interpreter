build:
	javac -d ./target ./com/novan/lox/Lox.java
	jar cvmf Lox.mf Lox.jar -C target/ .
	chmod +x Lox.jar
	ln -sf Lox.jar Lox

run: 
	java -jar Lox $(ARGUMENT)

clean:
	rm -f target/com/novan/lox/*.class
	rm -f *.jar
