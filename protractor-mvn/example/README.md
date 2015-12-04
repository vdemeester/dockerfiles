An example test project
=======================

Project contains example specifications from [Potractor tutorial](http://angular.github.io/protractor/#/tutorial)

It uses [jasmine-reporters](https://github.com/larrymyers/jasmine-reporters) 2.x to generate JUnit-compatible test report that can be used by CI tools to validate the build.

To run it, clone the project, enter `example` directory and run:

```
docker run --rm -v `pwd`:/project caltha/protractor
```

After the command completes, you can examine console output of protractor in `target/protractor.out`. Test reports are stored in `target/junitresults.xml` directory.
