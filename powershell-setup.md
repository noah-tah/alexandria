To get powershell set up properly for this project its a bit difficult

# These are instructions that did not include setting env
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

# Assuming with have developer powershell installed
---
1. Find the path of cl.exe 
To do this, we will use the following command with Developer Powershell for VS 2022":
```ps
(Get-Command cl.exe).Source
```

2. Copy the directory that was printed to the console
3. Press `Win + R`, type the following command, then press ENTER:
```
sysdm.cpl
```
4. In the Systems Properties Window, go to the "Advanced" tab and click on "Environment Variables"