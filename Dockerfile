FROM arata74/enc

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt update && apt install -y --no-install-recommends mkvtoolnix
COPY . .
