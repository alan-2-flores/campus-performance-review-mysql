comando para correr mysql en github

    docker run --name performanceReview -v ${pwd}/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Passw0rd -p 3306:3306 -d mysql:latest