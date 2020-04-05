FROM	appium/appium

WORKDIR	/tmp

RUN	apt-get update && \
	apt-get install -y --no-install-recommends wget unzip

RUN	wget https://chromedriver.storage.googleapis.com/80.0.3987.106/chromedriver_linux64.zip && \
	unzip chromedriver_linux64.zip && \
	mv chromedriver /usr/bin/. && \
	chmod +x /usr/bin/chromedriver

