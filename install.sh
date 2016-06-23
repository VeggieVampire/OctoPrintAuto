cd ~
sudo apt-get -y install python-pip python-dev python-setuptools python-virtualenv git libyaml-dev build-essential
git clone https://github.com/foosel/OctoPrint.git
cd OctoPrint
chmod 775 *
virtualenv venv
./venv/bin/pip install pip --upgrade
./venv/bin/python setup.py install
mkdir ~/.octoprint
sudo usermod -a -G tty pi
sudo usermod -a -G dialout pi
