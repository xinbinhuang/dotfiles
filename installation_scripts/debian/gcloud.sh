#! /usr/bin/bash

# Add the Cloud SDK distribution URI as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update the package list and install the Cloud SDK
sudo apt-get update && sudo apt-get install google-cloud-sdk -yyy

EXIT_CODE=$?
if [ $EXIT_CODE -eq 0 ]
then
  echo "Adding 'gcloud' command to PATH..."
  sed -i '1iexport PATH="/usr/lib/google-cloud-sdk/bin:$PATH"' ~/.bashrc
else
    cat <<EOF  >&2
If you ran into this error:

    > E: Conflicting values set for option Signed-By regarding source https://packages.cloud.google.com/apt cloud-sdk: /usr/share/keyrings/cloud.google.grg !=
    > E: The list of sources could not be read.


Run the following commands, and try the Cloud SDK commands again:

    sudo rm /usr/share/keyrings/cloud.google.grg
    sudo rm /usr/share/keyrings/cloud.google.grg~
    sudo rm /etc/apt/sources.list.d/google-cloud-sdk.list
EOF
fi
