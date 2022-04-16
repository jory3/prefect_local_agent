FROM python:3.10
COPY requirements.txt requirements.txt
COPY entrypoint_agent.sh /entrypoint_agent.sh
RUN pip install -r requirements.txt
RUN ["chmod", "+x", "/entrypoint_agent.sh"]
ENTRYPOINT ["/entrypoint_agent.sh"]