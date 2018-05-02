FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive

CMD ['date']

WORKDIR /tmp
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install sudo
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN apt-get install -y git

# AWS CLI
RUN apt-get install -y python3-setuptools
RUN easy_install3 pip
RUN pip install awscli

RUN npm install -g truffle@4.1.7
RUN npm install -g bn.js


RUN sudo apt-get install -y software-properties-common 
RUN sudo add-apt-repository -y ppa:ethereum/ethereum
RUN sudo apt-get update
RUN sudo apt-get install -y ethereum

# github account and password for git clone VTCR and VUI
ARG account
ARG password

# Install VIM 
RUN sudo apt-get install -y vim

# Clone VTCR and VUI from github
RUN git clone "https://${account}:${password}@github.com/ventureum/VTCR.git"
RUN git clone "https://${account}:${password}@github.com/ventureum/VUI.git"

# alias `front_build` to migrate truffle(VTCR) and copy them to VUI
RUN echo "alias front_build='cd VTCR && truffle migrate --reset && cp -r ./build/contracts ../VUI/public && cd ../VUI && npm install && cp ./react-scripts/config/* ./node_modules/react-scripts/config/ && cp ./react-css-modules/dist/extendReactClass.js ./node_modules/react-css-modules/dist/'" >> "/root/.bashrc"
# alias `back_dev` to run server
RUN echo "alias back_dev='geth --dev --dev.period 2 --rpc --rpccorsdomain=chrome-extension://nkbihfbeogaeaoehlefnkodbefgpgknn --networkid 1337'" >> "/root/.bashrc"
# alias `run` to npm start
RUN echo "alias run='cd /tmp/VUI && npm start'" >> "/root/.bashrc"

# create add_money script
RUN echo "geth attach http://localhost:8545 <<< \"eth.sendTransaction({from: eth.accounts[0], to:\\\"\$1\\\", value: web3.toWei(\$2, 'ether')})\"" >> "add_money"
RUN chmod +x "add_money"

#RUN cd VTCR
#RUN echo "cd VTCR && truffle migrate --reset && cp -r ./build/contracts ../VUI/public && cd ../VUI && npm install && cp ./react-scripts/config/* ./node_modules/react-scripts/config/ && cp ./react-css-modules/dist/extendReactClass.js ./node_modules/react-css-modules/dist/" > "front_end"
#RUN chmod +x "front_end"

#RUN echo "geth --dev --dev.period 2 --rpc --rpccorsdomain=chrome-extension://nkbihfbeogaeaoehlefnkodbefgpgknn --networkid 1337" > "back_end"
#RUN chmod +x "back_end"

#RUN echo "cd /tmp/VUI && npm start" > "run"
#RUN chmod +x "run"





