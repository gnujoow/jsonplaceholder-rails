# 실행

```
$ git clone [this repo]
$ bundle
$ rake db:migrate
$ rake db:seed
$ rails s
```

#  Resource

|    url     |  갯수   |
|------------|--------|
| /posts     | 100개   |
| /comments  | 500개   |  
| /albums    | 100개   |
| /photos    | 5000개  |
| /todos     | 200개   |


# Routes

```
$ rake routes
```

| get | /posts            | 내용     |
|-----|-------------------|---------|
| get | /posts            | 포스트전체 |
| get | /posts/1          | 아이디가 1인 포스트 |
| get | /posts/1/comments | 포스트1에 속한 comments들 |

 - post는 구현하지 않았음

---



- ref & data https://jsonplaceholder.typicode.com/
