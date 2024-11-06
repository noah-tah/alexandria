

```C++
SOCKET WSAAPI accept(
  [in]      SOCKET   s,
  [out]     sockaddr *addr,
  [in, out] int      *addrlen
);
```

The **accept** function extracts the first connection on the queue of pending connections on socket _s_. It then creates and returns a handle to the new socket. The newly created socket is the socket that will handle the actual connection; it has the same properties as socket _s_, including the asynchronous events registered with the [WSAAsyncSelect](https://learn.microsoft.com/en-us/windows/desktop/api/winsock/nf-winsock-wsaasyncselect) or [WSAEventSelect](https://learn.microsoft.com/en-us/windows/desktop/api/winsock2/nf-winsock2-wsaeventselect) functions.

The **accept** function can block the caller until a connection is present if no pending connections are present on the queue, and the socket is marked as blocking. If the socket is marked as nonblocking and no pending connections are present on the queue, **accept** returns an error as described in the following. After the successful completion of **accept** returns a new socket handle, the accepted socket cannot be used to accept more connections. The original socket remains open and listens for new connection requests

Questions
- What is the difference between blocking and non blocking?