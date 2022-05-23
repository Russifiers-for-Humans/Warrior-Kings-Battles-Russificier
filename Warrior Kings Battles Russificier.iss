; Инструкция https://jrsoftware.org/ishelp/index.php

; Всегда меняются
#define GameName "Warrior Kings Battles"                                                  ; Название игры
#define GameNameDash "Warrior-Kings-Battles"                                                          ; Название игры без пробелов
#define GameNameEXE "Warrior Kings - Battles"                                             ; Название exe файла игры
#define GameVer "1.1"                                                                     ; Версия игры
#define GameAppIdSteam "299070"                                                           ; Ид игры в стиме
; От ситуации зависит
#define AppDescription "Русификатор текста, звука"                                        ; Описание программы
#define Typ "Russificier"                                                                 ; Тип приложения
; Практически никогда не меняется
#define AppVer "1.2"                                                                        ; Версия установщика
#define Platz "D:\$RECYCLE.BIN\Bibliothek\Dokument\GitHub"                                                    ; Место
; Константы
#define Copyright "Folk"                                                                  ; (констант)Копирайт
#define AppPublisher "Russifiers for Humans"                                              ; (констант)Название инициативы
#define AppPublisherDash "Russifiers-for-Humans"                                              ; (констант)Название инициативы
#define PublisherURL "https://steamcommunity.com/id/TeMeR55"                              ; (констант)Ссылка на автора
#define AppURL "https://github.com/" + AppPublisherDash + "/" +GameNameDash + "-" + Typ +"/releases"        ; Ссылка на руководство
; Сложные переменные  
#define Location Platz + "\" + GameNameDash + "-" + Typ                                       ; Место нахождение соурса
#define OriginalNameSetup Typ + "-" + GameNameDash                        ; Оригинальное наименование приложения
#define AppNameAndDescript GameName + " - " + AppDescription                              ; Название программы и описание
#define ProductVerName AppNameAndDescript + " для версии " + GameVer                             ; Название программы для какой версии игры в системе

#define UnArcivProg "7zG.EXE"
#define FolderUnArcivProg "7z"
#define Arciv "data.zip.001"
//#define AppVer GetFileVersion('Setup.exe') 

[Setup]
;Номер приложения для его удаление лучше все время не забывать разный совать. Проверка уникальный для: Warrior Kings Battles Russificier
AppId={{8C753407-A1FE-4A12-AAA3-5A7649F5727D}
//--------------------------------------App's information and version--------------------------------------\\
;Свойства приложения
AppName={#AppNameAndDescript}                                                   
AppVersion={#AppVer}
AppVerName={#ProductVerName}
AppCopyright={#Copyright}
AppContact={#PublisherURL}
AppComments={#Typ}
AppPublisher={#AppPublisher}
AppPublisherURL={#PublisherURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AppReadmeFile={#AppURL}
VersionInfoCompany={#AppPublisher}
VersionInfoCopyright={#Copyright}
VersionInfoDescription={#AppDescription}
VersionInfoOriginalFileName={#OriginalNameSetup}  
VersionInfoProductName={#ProductVerName}
VersionInfoProductTextVersion={#AppVer}
VersionInfoVersion={#AppVer}     
//--------------------------------------Options--------------------------------------\\
; Если установлено значение «да», программа установки отобразит флажок «Не создавать папку в меню «Пуск»
AllowNoIcons=yes
; Имя папки в меню «Пуск»
DefaultGroupName={#AppPublisher}
; Путь по умолчанию
DefaultDirName={code:GetInstallationPath}
; Название установщика
OutputBaseFilename={#OriginalNameSetup}
; Если установлено значение «нет», отключает уведомление об "Существующей папке"
DirExistsWarning=no
; Если установлено значение «да», включает уведомление об "Не существующей папке"
EnableDirDoesntExistWarning=yes
;Если установлено значение «нет», включает страницу "Мастер приветствует"
DisableWelcomePage=no    
;Если установлено значение «нет», включает страницу "Спасибо за установку"
DisableFinishedPage=no
//--------------------------------------Compression--------------------------------------\\
; Метод сжатия
Compression=lzma2/ultra64
; Если установлено значение «да»,включает сжатие в один поток(лучше сжимает, но проблем больше) 
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMADictionarySize=1048576
LZMANumFastBytes=273
//--------------------------------------Files--------------------------------------\\
;Путь к фалу Лицензии
LicenseFile={#Location}\Licence.rtf
;Путь к фалу Описание
InfoBeforeFile={#Location}\Description.rtf
;InfoAfterFile=infoafter.txt
;Путь к фалу Иконка
SetupIconFile={#Location}\Icon.ico
;Путь к фалу Сетап
OutputDir={#Location}\
;Путь к фалу Картинки
WizardImageFile={#Location}\Pic.bmp
;Путь к фалу Картинки
WizardSmallImageFile={#Location}\Pic.bmp
;194 мб для разпаковки, 1048576 это 1 мб
ExtraDiskSpaceRequired=168820736

[Files]
; Ресурсы
Source: {#Location}\{#GameName}\saved\*; DestDir: "{app}\saved"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#FolderUnArcivProg}\*; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: {#Location}\{#GameName}\data\*; DestDir: "{tmp}"; Flags: deleteafterinstall
[Icons]
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:ProgramOnTheWeb,{#ProductVerName}}"; Filename: "{#AppURL}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:UninstallProgram,{#ProductVerName}}"; Filename: "{uninstallexe}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{#GameName}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}";

[Tasks]
Name: "Register" ; Description: "Не менять разрешение экрана {#GameName}" ; GroupDescription: "{cm:AdditionalIcons}";Flags: exclusive;
Name: "RegisterFHD" ; Description: "Задать разрешение экрана {#GameName} на FullHD(1920x1080)?" ; GroupDescription: "{cm:AdditionalIcons}";Flags: unchecked exclusive;
Name: "RegisterQHD" ; Description: "Задать разрешение экрана {#GameName} на QuadHD(2560x1440)?" ; GroupDescription: "{cm:AdditionalIcons}";Flags: unchecked exclusive;
Name: "RegisterUHD" ; Description: "Задать разрешение экрана {#GameName} на UltraHD(3840x2160)?" ; GroupDescription: "{cm:AdditionalIcons}";Flags: unchecked exclusive;

[Run]
; На финальной страницу спрашивает о запуске финального продукта
Description: "{cm:LaunchProgram, {#GameName}}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}"; Flags: postinstall skipifsilent
; Распаковка архива
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\{#Arciv} -y -o""{app}""" 
[registry]
; Значение ключа изменяет разрешение на *HD в настройках которые находятся в реестре
;FHD
Root:HKA;Subkey:SOFTWARE\WOW6432Node\Black Cactus\Warrior Kings Battles\Renderer;ValueType: dword; ValueName:default_screen_height;ValueData:00001080;Tasks:RegisterFHD;
Root:HKA;Subkey:SOFTWARE\WOW6432Node\Black Cactus\Warrior Kings Battles\Renderer;ValueType: dword; ValueName:default_screen_width;ValueData:00001920;Tasks:RegisterFHD;
;QHD
Root:HKA;Subkey:SOFTWARE\WOW6432Node\Black Cactus\Warrior Kings Battles\Renderer;ValueType: dword; ValueName:default_screen_height;ValueData:00001440;Tasks:RegisterQHD;
Root:HKA;Subkey:SOFTWARE\WOW6432Node\Black Cactus\Warrior Kings Battles\Renderer;ValueType: dword; ValueName:default_screen_width;ValueData:00002560;Tasks:RegisterQHD;
;UHD
Root:HKA;Subkey:SOFTWARE\WOW6432Node\Black Cactus\Warrior Kings Battles\Renderer;ValueType: dword; ValueName:default_screen_height;ValueData:00002160;Tasks:RegisterUHD;
Root:HKA;Subkey:SOFTWARE\WOW6432Node\Black Cactus\Warrior Kings Battles\Renderer;ValueType: dword; ValueName:default_screen_width;ValueData:00003840;Tasks:RegisterUHD;

[UninstallDelete]
; Удаляет архива
Type: files; Name: "{app}\data.bcp"

[Code]
var
  InstallationPath: string;

function GetInstallationPath(Param: string): string;
    
begin
  { Обнаруженный путь кэшируется, так как он вызывается несколько раз }
  
  if InstallationPath = '' then
  begin
    if RegQueryStringValue(
         HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#GameAppIdSteam}',
         'InstallLocation', InstallationPath) then
    begin
      Log('Detected Steam installation: ' + InstallationPath);
    end
    // для гог
    //  else
    //if RegQueryStringValue(
    //     HKLM32, 'SOFTWARE\GOG.com\Games\1196955511',
    //     'path', InstallationPath) then
    //begin
    //  Log('Detected GOG installation: ' + InstallationPath);
    //end
      else
    begin
      if IsWin64 then InstallationPath := ExpandConstant('{commonpf64}')
      else InstallationPath := ExpandConstant('{commonpf32}');
      InstallationPath:=InstallationPath +'/{#GameName}';
      Log('No installation detected, using the default path: ' + InstallationPath);
    end;
  end;
  Result := InstallationPath;
end;

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";