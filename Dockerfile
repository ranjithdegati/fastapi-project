FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

#
COPY ./myapi.py /code/
COPY ./__pycache__ /code
#EXPOSE 8000
#
CMD ["uvicorn", "myapi:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

