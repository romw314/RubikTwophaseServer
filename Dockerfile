FROM pypy:3.10
RUN pypy3 -m ensurepip
ADD requirements.txt .
RUN pypy3 -m pip install -r requirements.txt
ENV CC_PYTHON_MODULE="make"
ADD make.py .
RUN pypy3 make.py
ENV CC_PYTHON_MODULE="index"
ADD index.py .
EXPOSE 5000
CMD [ "pypy3", "index.py" ]
