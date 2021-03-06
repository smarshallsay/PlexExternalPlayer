; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Plex External Player Agent"
#define MyAppVersion "0.3.1"
#define MyAppPublisher "Kayomani"
#define MyAppURL "https://github.com/Kayomani/PlexExternalPlayer"
#define MyAppExeName "PlexExternalPlayerAgent.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C5AC6C90-1F36-40F5-8706-873DAD677825}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputBaseFilename=PlexExternalPlayerAgentInstall
SetupIconFile=icon.ico
UninstallDisplayIcon={app}\PlexExternalPlayerAgent.exe
Compression=lzma
SolidCompression=yes
DisableDirPage=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
         
[Files]
Source: "bin\Release\PlexExternalPlayerAgent.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Release\PlexExternalPlayerAgent.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Release\Newtonsoft.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\Release\uhttpsharp.dll"; DestDir: "{app}"; Flags: ignoreversion


[Tasks]
Name: "StartMenuEntry" ; Description: "Start my app when Windows starts" ; GroupDescription: "Windows Startup"; MinVersion: 4,4;


[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{userstartup}\PlexExternalPlayerAgent"; Filename: "{app}\{#MyAppExeName}"; Tasks:StartMenuEntry;

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
