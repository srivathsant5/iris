FROM ubuntu

FROM python



# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8501

COPY . /app

#CMD streamlit run /app/server.py 
CMD python /app/model.py 
#&& python streamlit run /app/server.py


 
