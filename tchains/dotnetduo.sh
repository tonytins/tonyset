#!/usr/bin/env bash

echo "*********************************"
echo "     Installing .NET Core        "
echo "*********************************"

# If the dotnetinst.sh script exists, install both .NET Core latest and LTS SDKs.
# We do this to ensure backwards compitability 
if [ -f dotnetinst.sh ]; then

	sudo apt install -y libunwind-dev

	echo "Installing from LTS channel"
	sh ./dotnetinst.sh -Channel LTS

	echo "Installing from Current channel"
	sh ./dotnetinst.sh -Channel Current
fi
