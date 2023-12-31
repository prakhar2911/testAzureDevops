AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
git clone https://github.com/prakhar2911/testAzureDevops.git
cd testAzureDevops
rm -rf .git

cd ..

GIT_CMD_REPOSITORY="https://$AZUSERNAME:$AZUREPAT@dev.azure.com/$AZORG/Devops-testing/_git/Devops-testing"
git clone $GIT_CMD_REPOSITORY

cp -r testAzureDevops/* Devops-testing/

cd Devops-testing

git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

git add .
git commit -m "sync from git to azure"

git push

