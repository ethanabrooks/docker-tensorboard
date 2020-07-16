FROM python:3.8.3
RUN pip install -U tensorboard
COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
