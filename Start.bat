### Hi there 👋

<!--
**hamedarab-1477/hamedarab-1477** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->1. ابتدا به صفحه GitHub رفته و وارد حساب کاربری خود شوید.

2. سپس روی دکمه "New" کلیک کرده و یک مخزن جدید ایجاد کنید.

3. نام مخزن را به "v2rayng" تغییر دهید و گزینه "Initialize this repository with a README" را فعال کنید.

4. حالا باید فایل های مورد نیاز برای ساخت گانفیک v2rayng را در مخزن خود آپلود کنید. برای این منظور، فایل های زیر را در پوشه اصلی مخزن قرار دهید:

- v2ray-core.zip
- v2rayng.zip
- config.json

5. حالا برای ساخت گانفیک، یک فایل با نام "start.bat" در پوشه اصلی مخزن ایجاد کنید و کدهای زیر را در آن قرار دهید:

@echo off
setlocal EnableDelayedExpansion

set V2RAY_CORE=v2ray-core.zip
set V2RAYNG=v2rayng.zip

if not exist %V2RAY_CORE% (
    echo %V2RAY_CORE% not found.
    pause
    exit /b
)

if not exist %V2RAYNG% (
    echo %V2RAYNG% not found.
    pause
    exit /b
)

if not exist config.json (
    echo config.json not found.
    pause
    exit /b
)

set TEMP_DIR=%TEMP%\v2rayng-%RANDOM%
mkdir %TEMP_DIR%
xcopy /y %V2RAY_CORE% %TEMP_DIR%
xcopy /y %V2RAYNG% %TEMP_DIR%
xcopy /y config.json %TEMP_DIR%

cd %TEMP_DIR%
powershell -Command "Expand-Archive -Path .\v2ray-core.zip -DestinationPath .\"
powershell -Command "Expand-Archive -Path .\v2rayng.zip -DestinationPath .\"

start v2ray.exe

6. حالا فایل های مورد نیاز برای ساخت گانفیک v2rayng در مخزن شما آپلود شده و فایل start.bat نیز ایجاد شده است. برای استفاده از گانفیک، کافیست فایل start.bat را اجرا کنید.

Daily quota: 7/10
ENG | ES | عربي | 中文 | فارسی
