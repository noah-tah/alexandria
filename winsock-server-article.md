# Outline
---
- Introduction
	- Project overview, why Winsock, and what the server will do
- Setup
	- Installing the necessary tools, setting up the development environment, and initializing Winsock.
- Core Functionality
	- Setting up socket binding, listening, and accepting connections
- Handling Requests
	- Parsing HTTP GET requests, and sending responses
- Expanding Features
	- Adding routing, handling different HTTP methods, basic concurrency.
- Finishing Touches
	- Error handling, logging or further optimizations

# Master Document
---

#### Introduction
---
In this project, we are going to be building an HTTP server on Windows with the Winsock library. I know what you guys are gonna say: "Wait, don't real servers only run on Linux?" Yes, Linux is typically the go-to for many production servers in the field. But for this project, I need mine to run on Windows so that my Professor, who uses Windows, can easily and seamlessly test both the server and the client applications on his machine.

The point is, we are still going to get to tackle some networking concepts using the Winsock, which will give us an important foundational knowledge that will server us later on different platforms. So if you want to learn about servers in general, or networking on Windows specifically, then you've came to the right place!

#### Setup
---
Now to begin, you need to have your environment set up correctly. First I am going to assume you're using Visual Studio Code as your editor. Since we are working with Winsock, you'll need the Microsoft Windows Software Development Kit (SDK), which provides the Winsock library. 

If you typically use GNU compilers like GCC, please note that Winsock won't be included by default. So to keep things simple, we will use Microsoft's compiler `cl.exe` which makes using the SDK a breeze. If you haven't already, ensure you have the Windows SDK installed and can compile Windows-specific libraries.

If you already have the Windows SDK installed, you can skip to the Clients and Servers section. Otherwise, continue reading for an explanation on installing Visual Studio 2022 Build Tools, which includes the Windows SDK.

###### Downloading the Visual Studio 2022 Build Tools
1. Go to Microsoft's Visual Studio Downloads Page: https://visualstudio.microsoft.com/downloads/
2. Scroll down until you see the "Tools for Visual Studio" dropdown section.
3. Download "Build Tools for Visual Studio 2022".
4. In the installer , you'll see a list of different workflows and tools you can download
	- For our purposes we want the "Desktop Development with C++"
		- This will installed the C++ compiler `cl.exe`, the Windows SDK, and the libraries we need to use Winsock.

Once the Build Tools are installed, you'll have access to the compiler and libraries you need to compile and run our Winsock application.

##### Using the Visual Studio 2022 Build Tools
There's probably other ways to do this, but the way that I do it is the following:
1. Press the Windows Key
2. Type "Developer PowerShell for VS 2022", press Enter
3. Change directory to where you want your Winsock application to be located.
4. Once in the proper directory, enter `code .` to open up the current directory into Visual Studio Code.

Now Visual Studio Code will have access to the Windows SDK and the `cl.exe` compiler, allowing you to build and run your Winsock application seamlessly.

From here, you can code in Visual Studio Code and access all the necessary tools and libraries. 

If you're ready, let's move on to the Servers and Clients section and get started with coding!

Note: It can be annoying having to navigate to your project's directory manually every time, and a great solution is to write a PowerShell command to greatly hasten the directory navigation! Let me know if you guys want a tutorial on this next!

# Clients and Servers (A High Level Overview)
---
Servers and Clients have different behaviors, so they follow different steps, and must be created differently. 

Here's a general model for creating a TCP/IP Server and Client:

#### Server
1. Initialize Winsock
2. Create a Socket
3. Bind the Socket
4. Listen on the Socket for a Client
5. Accept a connection from a Client
6. Receive and send data
7. Disconnect

#### Client
1. Initialize Winsock
2. Create a socket
3. Connect to the Server
4. Send and receive data.
5. Disconnect
# Creating Project
---
Create an empty C++ source file to the project directory.

If you opened Visual Studio Code using the Developer PowerShell for VS 2022, you shouldn't have to worry about linking the build environment to the Windows SDK.

However, you will leave a `#pragma` comment to indicate to the linker the the `Ws2_32.lib` file is needed when this application is being compiled.

Begin by entering the following:

```C++
#include <winsock2.h>
#include <ws2tcpip.h>
#include <iostream>

#pragma comment(lib, "Ws2_32.lib")

int main() {
	return 0;
}
```

The above code includes the Winsock 2 header files. `Winsock2.h` contained most of the Winsock functionality, and the `Ws2tcpip.h` contains definitions introduced in Winsock 2 Protocol-Specific Annex document for TCP/IP which includes the latest and greatest functions and structures used to retrieve IP addresses. `iostream` is used for standard input and output in order for us to log key values and express the state of our program, and to accept user input when necessary. 

# Initializing Winsock
---





