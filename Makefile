
build:
	mkdir -p build

build/robot.jar: | build
	curl -L -o build/robot.jar "https://github.com/ontodev/robot/releases/latest/download/robot.jar"

ROBOT := java -jar build/robot.jar

verify: build/robot.jar
	$(ROBOT) verify --input robot-tests.owl --queries verify-label.rq --output-dir report

