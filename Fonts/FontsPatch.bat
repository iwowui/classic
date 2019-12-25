@echo off
@echo 客户端字体补丁
cd /d "%~dp0"

copy /y ARKai_T.ttf FRIZQT__.ttf
copy /y ARKai_T.ttf ARIALN.ttf
copy /y ARKai_T.ttf MORPHEUS.ttf
copy /y ARKai_T.ttf SKURRI.ttf
copy /y ARKai_T.ttf FRIENDS.ttf

copy /y ARKai_T.ttf ARHei.ttf
copy /y ARKai_T.ttf ARKai_C.ttf

copy /y ARKai_T.ttf bLEI00D.ttf
copy /y ARKai_T.ttf arheiuhk_bd.ttf
copy /y ARKai_T.ttf bHEI00M.ttf
copy /y ARKai_T.ttf bKAI00M.ttf

copy /y ARKai_T.ttf ZYHei.ttf
copy /y ARKai_T.ttf ZYKai_C.ttf
copy /y ARKai_T.ttf ZYKai_T.ttf
copy /y ARKai_T.ttf bHEI01B.ttf 

@echo 处理完成！
ping -n 2 127.1 >nul