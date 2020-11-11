FROM ubuntu:18.04

WORKDIR /root

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y curl

RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh -o install_nvm.sh

RUN bash install_nvm.sh

#RUN /bin/bash -c "source /root/.bashrc && nvm install --lts"
#&& apt-get install -y npm && npm install -g npm@latest && npm i -g npx

CMD ["/bin/bash"]