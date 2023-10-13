FROM TeamLionX/LionX:master

RUN git clone -b master https://github.com/TheTeamLionX/LionX /home/userbot/
WORKDIR /home/userbot

RUN wget https://raw.githubusercontent.com/TeamLionX/LionX/master/requirements.txt \
    && pip3 install --no-cache-dir -U -r requirements.txt \
    && rm requirements.txt
    
CMD bash start
