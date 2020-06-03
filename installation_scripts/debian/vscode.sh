#! /bin/usr/bash

echo "Add repository and key for VSCode..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

echo "Installing VSCode..."
sudo apt update
sudo apt install code -yyy


echo "Installing extensions..."

# code --list-extensions
# code --install-extension ms-vscode.cpptools
# code --uninstall-extension ms-vscode.csharp