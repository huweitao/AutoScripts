#!/bin/bash
function autopackage()
{
	cd $1
	echo '-------------------------Auto package Begins------------------------------'
	xcodebuild -workspace GCash.xcworkspace -scheme GCashDev -configuration Release &
	xcrun -sdk iphoneos -v PackageApplication /Users/huweitao/Library/Developer/Xcode/DerivedData/GCash-btilmdllvlkklmgfjskisgyejnhn/Build/Products/Release-iphoneos/GCashDev.app -o /Users/huweitao/Desktop/Gcash-local/GcashDev.ipa
}

echo "Enter Pakage source:"

read dest 

autopackage $dest
