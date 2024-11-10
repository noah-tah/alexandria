https://learn.microsoft.com/en-us/windows/win32/api/ws2tcpip/nf-ws2tcpip-getaddrinfo

The getaddrinfo fuinction provide protocol-independent translation from an ANSI host name to an address.


```c++
INT WSAAPI getaddrinfo(
  [in, optional] PCSTR           pNodeName,
  [in, optional] PCSTR           pServiceName,
  [in, optional] const ADDRINFOA *pHints,
  [out]          PADDRINFOA      *ppResult
);
```

pNodeName
	A pointer to a **NULL**-terminated ANSI string that contains a host (node) name or a numeric host address string. For the Internet protocol, the numeric host address string is a dotted-decimal IPv4 address or an IPv6 hex address.

What is a NULL-terminated ANSI string?