FROM python:3

WORKDIR /usr/src/app

COPY ./requirements.txt .

RUN pip install numpy pandas seaborn matplotlib plotly streamlit

COPY . .

CMD [ "streamlit", "run", "app.py" ]