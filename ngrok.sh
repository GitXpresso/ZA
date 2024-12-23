sudo su
apt update 
apt install sudo 
echo "Installing curl in order to install ngrok"
curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
	| sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
	&& echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
	| sudo tee /etc/apt/sources.list.d/ngrok.list \
	&& sudo apt update \
	&& sudo apt install ngrok
echo "Adding the free plan config token"
ngrok config add-authtoken 2MZ2pfolvWmSI7FlHGQKC4k7yh6_2SnWscUrFpCBkNzqTyogv
