

Declare an addrinfo object that contains a sockaddr structure and initialize these values.

```c++
struct addrinfo *result = NULL, *ptr = NULL, hints;

ZeroMemory(&hints, sizeof(hints));
hints.ai_family = AF_INET;
hints.ai_socktype = SOCK_STREAM;
hints.ai_protocol = IPPROTO_TCP
```

