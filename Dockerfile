FROM coxauto/aws-ebcli
COPY ./entrypoint.sh ./
ENTRYPOINT ["sh", "entrypoint.sh"]
