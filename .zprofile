# Loads .profile in an emulated sh session

if [ -r ~/.profile ]
then
	emulate sh -c 'source  ~/.profile'
fi
