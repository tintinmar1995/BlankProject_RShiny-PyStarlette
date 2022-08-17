FROM python:3.8.4

EXPOSE 8000

COPY src src/

RUN pip install -r src/requirements.txt \
    pip install src/

CMD python -c "from skeleton import cmd; cmd.api.serve(port=8000)"
