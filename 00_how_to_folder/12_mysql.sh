docker run -d --name spawning-pool --mount source=hatchery,target=/app -e MYSQL_ROOT_PASSWORD=Kerrigan -e MYSQL_DATABASE=zerglings mysql;
