; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
[Code]
//This function gets the directory that Mixxx is installed to from the registry.
function MixxxDirectory(Param : String): String;
var
  MixxxFilePath: String;
begin
  RegQueryStringValue(HKLM, 'Software\Microsoft\Windows\CurrentVersion\App Paths\Mixxx.exe', '', MixxxFilePath);
  Result := ExtractFilePath(MixxxFilePath);
end;


[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{117D5F90-415F-4B07-9588-6CBF65956A24}
AppName=Mixxx M4A Playback Support
AppVerName=Mixxx M4A Playback Support 1.8
DefaultDirName={code:MixxxDirectory}
;Disable the Choose Directory page, we're forcing the install to the Mixxx install
;directory we found in the registry.
DisableDirPage=yes
DefaultGroupName=Mixxx M4A Playback Support
DisableProgramGroupPage=yes
LicenseFile=C:\mixxx\sadness_ssplugin\mixxx\plugins\soundsourcem4a\LICENSE
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\mixxx\sadness_ssplugin\mixxx\dist\plugins\soundsource\libfaad2.dll"; DestDir: "{app}\plugins\soundsource"; Flags: ignoreversion
Source: "C:\mixxx\sadness_ssplugin\mixxx\dist\plugins\soundsource\libmp4v2.dll"; DestDir: "{app}\plugins\soundsource"; Flags: ignoreversion
Source: "C:\mixxx\sadness_ssplugin\mixxx\dist\plugins\soundsource\soundsourcem4a.dll"; DestDir: "{app}\plugins\soundsource"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

