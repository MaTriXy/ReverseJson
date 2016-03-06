#! /bin/bash

TEST_CMD="xcodebuild -scheme ReverseJsonLib -project ReverseJson.xcodeproj build test"

which -s xcpretty
XCPRETTY_INSTALLED=$?

if [[ $TRAVIS || $XCPRETTY_INSTALLED == 0 ]]; then
  eval "${TEST_CMD} | xcpretty"
else
  eval "$TEST_CMD"
fi
