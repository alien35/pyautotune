FROM python:2.7-alpine
MAINTAINER Alexander Leon "alexjleon16@gmail.com"
COPY . /app
WORKDIR /app

RUN apk --no-cache --update-cache add gcc gfortran python python-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev libsndfile-dev
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install -r requirements.txt
ENTRYPOINT ["python"]

RUN python /app/setup.py install

CMD ["app.py"]
