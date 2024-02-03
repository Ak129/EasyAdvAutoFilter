if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Ak129/EasyAdvAutoFilter.git /EasyAdvAutoFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EasyAdvAutoFilter
fi
cd /EasyAdvAutoFilter
apt install npm
npm install pm
pip3 install -U -r requirements.txt
echo "Starting Bot...."
pm2 start bot.py -i 2 --max-memory-restart 200M
