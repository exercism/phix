# Tests

If you have the phix binary on your path, enter the command:

```bash
p test 
```
This will run the test file (test.exw).

If the phix binary is not on the PATH, in Windows enter

```cmd
\path\to\p.exe test
```

Linux:

```bash
/path/to/p test
```

## Skipped tests

Solving an exercise means making all its tests pass.
By default, all the tests in the test.exw file are executed.
To skip a test, prepend two dashes (the standard Phix comment marker) to the beginning of the line.

Note the tests do not honour any include=false flags in tests.toml, rather it is the responsibility
of the test.exw author to maintain them manually in that file to reflect reality for the benefit of
the exercism site (eg collecting track statistics), but nothing in the track itself makes any use
of them at all, specifically including the test generator and the test runner.
