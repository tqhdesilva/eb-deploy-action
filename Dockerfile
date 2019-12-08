FROM coxauto/aws-ebcli
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
