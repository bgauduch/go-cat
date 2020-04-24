FROM scratch
COPY gocat /gocat
ENTRYPOINT [ "./gocat" ]
