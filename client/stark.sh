apt-get update && apt-get install lynx -y
apt-get install apache2-utils -y

curl -s -X POST -H "Content-Type: application/json" -d '{"username":"username1", "password":"password1"}' http://192.213.4.1/api/auth/register
curl -s -X POST -H "Content-Type: application/json" -d '{"username":"username1", "password":"password1"}' http://192.213.4.1/api/auth/login
curl -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjIxMy40LjEvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE3MDAwNTkwMTUsImV4cCI6MTcwMDA2MjYxNSwibmJmIjoxNzAwMDU5MDE1LCJqdGkiOiJlaTFmdERWWFRGaktsd3pGIiwic3ViIjoiMSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.WF2EF53M0j0X0OfU9orDkXXhLnt4aQBRBeS5JfQwQTY" http://192.213.4.1/api/me

ab -n 100 -c 10 -p <(curl -s -X POST -H "Content-Type: application/json" -d '{"username":"username1", "password":"password1"}' http://192.213.4.1/api/auth/register) -T "application/json" http://192.213.4.1/api/auth/register
ab -n 100 -c 10 -p <(curl -s -X POST -H "Content-Type: application/json" -d '{"username":"username1", "password":"password1"}' http://192.213.4.1/api/auth/login) -T "application/json" http://192.213.4.1/api/auth/login
ab -n 100 -c 10 -p <(curl -H "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTkyLjIxMy40LjEvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE3MDAwNTkwMTUsImV4cCI6MTcwMDA2MjYxNSwibmJmIjoxNzAwMDU5MDE1LCJqdGkiOiJlaTFmdERWWFRGaktsd3pGIiwic3ViIjoiMSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.WF2EF53M0j0X0OfU9orDkXXhLnt4aQBRBeS5JfQwQTY" http://192.213.4.1/api/me) -T "application/json" http://192.213.4.1/api/me