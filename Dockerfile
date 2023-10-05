FROM pypy:3.10
ADD make.py .
RUN pypy3 make.py
ADD index.py .
EXPOSE 5000
CMD [ "pypy3", "index.py" ]