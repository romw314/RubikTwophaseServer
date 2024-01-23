FROM pypy:3.10
RUN pypy3 -m ensurepip
ADD requirements.txt .
RUN pypy3 -m pip install -r requirements.txt
ADD make.py .
RUN pypy3 make.py
ADD index.py .
EXPOSE 5000
ENV CC_PYTHON_MODULE="index"
CMD [ "pypy3", "index.py" ]
