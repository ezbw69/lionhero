FROM ezbw69/lionhero:master

RUN git clone -b master https://github.com/ezbw69/lionhero /home/userbot/
WORKDIR /home/userbot

RUN wget https://raw.githubusercontent.com/ezbw69/lionhero/master/requirements.txt \
    && pip3 install --no-cache-dir -U -r requirements.txt \
    && rm requirements.txt
    
CMD bash start
