FROM rubensa/node-chrome:erbium
LABEL author="Ruben Suarez <rubensa@gmail.com>"

# Install packages
RUN npm install -g sonarqube-scanner
