SERVERIP=$(kubectl get service | grep mssql-service | awk {'print $4'})
PORT=31433
sqlcmd -Usa -PSql2017isfast -S$SERVERIP,$PORT -Q"SELECT @@version"
