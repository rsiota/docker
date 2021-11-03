#!/bin/bash

cp lamp ~/bin

SCRIPTS_PATH=$(pwd)
DOCKER_PATH="$(dirname "$SCRIPTS_PATH")"
LAMP_PATH="$(dirname "$DOCKER_PATH")"

echo '#!/bin/bash' > ~/bin/temp
echo '' >> ~/bin/temp
echo 'BASE_PATH='$LAMP_PATH >> ~/bin/temp
echo 'SCRIPTS_PATH='$SCRIPTS_PATH >> ~/bin/temp
echo 'DOCKER_PATH='$DOCKER_PATH >> ~/bin/temp
echo ''

cat ~/bin/lamp >> ~/bin/temp
mv ~/bin/temp ~/bin/lamp

chmod ugo+x ~/bin/lamp

