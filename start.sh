if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/henockjoy65/yoonbeta.git /yoonbeta
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /yoonbeta
fi
cd /yoonbeta
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
