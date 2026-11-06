@ECHO OFF
SETLOCAL enabledelayedexpansion
SET /P RUNTIME_VER=Type in the runtime version number (example 2022.0.3.99):
SET SCRIPT_PATH=%programdata%\GameMakerStudio2-LTS\Cache\runtimes\runtime-%RUNTIME_VER%\bin\FiltersAndEffects\_effect_windblown_particles\project\scripts\_effect_windblown_particles_script\_effect_windblown_particles_script.gml
IF NOT EXIST %SCRIPT_PATH% (
    ECHO INVALID RUNTIME VERSION.
    PAUSE
    EXIT
)

:: Backup the original file if one does not exist already
IF NOT EXIST "%SCRIPT_PATH%.bak" (
    ECHO BACKING UP ORIGINAL "%SCRIPT_PATH%" as "%SCRIPT_PATH%.bak"
    COPY /y "%SCRIPT_PATH%" "%SCRIPT_PATH%.bak"
)
(
    FOR /f "delims=" %%G IN (%SCRIPT_PATH%.bak) DO (
        SET L=%%G
        SET L=!L:var particle =var _particle !
        SET L=!L:    particle.=    _particle.!
        ECHO(!L!
    ) 
) > "%SCRIPT_PATH%"

PAUSE