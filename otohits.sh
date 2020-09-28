wget https://cdndl.otohits.net/dl/OtohitsApp_5063_linux_portable.tar.gz > /dev/null
mkdir OtohitsApp
cd OtohitsApp
echo "/login:cb87be4b-9e5e-4dbb-93e8-3f475e4d9a75" > otohits.ini
tar -xzf ../OtohitsApp_5063_linux_portable.tar.gz

./otohits-app
