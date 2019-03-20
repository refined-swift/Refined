#!/bin/bash

directory=$(cd $(dirname ${0});pwd)
gyb="${directory}/Vendor/gyb"
mkdir -p ${gyb}
curl https://raw.githubusercontent.com/apple/swift/master/utils/gyb > ${gyb}/gyb
curl https://raw.githubusercontent.com/apple/swift/master/utils/gyb.py > ${gyb}/gyb.py
curl https://raw.githubusercontent.com/apple/swift/master/utils/SwiftIntTypes.py > ${gyb}/SwiftIntTypes.py
curl https://raw.githubusercontent.com/apple/swift/master/utils/SwiftFloatingPointTypes.py > ${gyb}/SwiftFloatingPointTypes.py
curl https://raw.githubusercontent.com/apple/swift/master/utils/gyb_stdlib_support.py > ${gyb}/gyb_stdlib_support.py
curl https://raw.githubusercontent.com/apple/swift/master/utils/gyb_foundation_support.py > ${gyb}/gyb_foundation_support.py
chmod +x ${gyb}/gyb
