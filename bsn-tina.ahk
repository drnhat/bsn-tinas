#IfWinActive, ahk_exe Trinasoft.exe

;-------------------------------------------------------------
; NHÓM THAO TÁC NHANH TRÊN PHẦN MỀM TINASOFT

F2:: MouseClick, Left, 223, 68 ; Lưu

F3:: MouseClick, Left, 163, 68 ; Ca mới

F4:: MouseClick, Left, 734, 362

^F5:: MouseClick, Left, 814, 466 ; Toa thuốc

^3:: MouseClick, Left, 1037, 364

+^d:: MouseClick, Left, 458, 458

+^e:: MouseClick, Left, 1074, 471

^+q:: MouseClick, Left, 220, 490, 2 ; Chỉnh tên người cho toa

; Chỉ định xét nghiệm

^F7:: 
MouseClick, Left, 1037, 364
Sleep, 100
MouseClick, Left, 108, 429
Sleep, 100
MouseClick, Left, 108, 459
Return

^-::MouseClick, Left, 1078, 485

^=::MouseClick, Left, 1138, 525
!1:: MouseClick, Left, 94, 525, 2 ; Focus vào ô cho thuốc
!2:: MouseClick, left, 471, 283, 2 ; Focus vào ô bác sĩ chính
!3:: MouseClick, Left, 855, 286, 2 ; Bác sĩ phụ

; Toa dưỡng...
+^3::
MouseClick, left, 392, 458
Sleep, 100
Send, 3
Sleep, 100
MouseClick, Left, 466, 464, 2
return

^`::   ; Chỉnh toa thuốc cho bác sĩ Nhật
MouseClick, Left, 220, 490, 2
Send, 0772 {Enter}
return

^q::   ; Chỉnh toa thuốc cho bác sĩ Như 
MouseClick, Left, 220, 490, 2
Send, 0610 {Enter}
return

; Tiêm ngừa uốn ván
F6::
MouseClick, Left, 1090, 363
Sleep, 100
MouseClick, Left, 1090, 363
Sleep, 100
MouseClick, Left, 1090, 415
Return

; Tiêm ngừa uốn ván mũi 1
;;F6:: 
;;MouseClick, Left, 646, 366
;;Sleep, 100
;;Send, VAT
;;Send, {Down}{Down}{Enter}{Tab}{Down}{Down}
;;Return
; Tiêm ngừa uốn ván mũi 2
^6:: 
MouseClick, Left, 646, 366
Sleep, 100
Send, VAT
Send, {Down}{Down}{Enter}{Tab}{Down}{Down}{Down}
Return

; -------------------------------------------------------------------------------------------

;NHÓM VIẾT TẮT


::BE1::
FormatTime, CurrentDateTime,, dd/MM
Today:=A_Now
Today+=1, Day
FormatTime, T, %Today%, dd/MM
Send, TIÊM BẮP NGÀY 01 LẦN, LẦN 03 ỐNG CÁCH NHAU 24 GIỜ (NGÀY %CurrentDateTime%, %T%)
return



::BE2::
FormatTime, CurrentDateTime,, dd/MM
Today:=A_Now
Today+=1, Day
FormatTime, T, %Today%, dd/MM
Send, Bet
Send, {Down}{Down}{Down}{Down}{Down}
Sleep, 100
Send, {Enter}{Enter}{Enter}{Enter}{Enter}
Sleep, 100
Send, 6
Send, {Enter}
Sleep, 100
Send, TIÊM BẮP NGÀY 01 LẦN, LẦN 03 ỐNG CÁCH NHAU 24 GIỜ (NGÀY %CurrentDateTime% và %T%)
return



;DO NOT DELETE THIS LINE*** version=1 ***
::BE::TIÊM BẮP  NGÀY 01 LẦN, LẦN 03 ỐNG CÁCH NHAU 24 GIỜ
::bom::Bơm âm đạo tối 1 tuýp mỗi 3 ngày
::DU::DỰ PHÒNG SANH NON
::PHA::PHA 01 GÓI TRONG 1 LÍT NƯỚC RỬA ÂM HỘ 01 LẦN / NGÀY
::pico::Uống 1 gói lúc 18g và 23g (  ) theo hướng dẫn 
::TDD::tiêm dưới da trước ăn 30 phút sáng ui , chiều ui
::TS::DỰ PHÒNG TSG

::TT1::
Send, THAI /7 TUẦN - TTTON
Send, {CtrlDown}{Left}{Left}{Left}{Left}{CtrlUp}
Return

::TT2::
Send, SONG THAI /7 TUẦN - TTTON
Send, {CtrlDown}{Left}{Left}{Left}{Left}{CtrlUp}
Return

::VM2::
Send, THAI /7 TUẦN - VMCMLT
Send, {CtrlDown}{Left}{Left}{Left}{Left}{CtrlUp}
Return

::TH1::
Send, THAI /7 TUẦN
Send, {CtrlDown}{Left}{Left}{CtrlUp}
Return

::TH2::
Send, SONG THAI /7 TUẦN
Send, {CtrlDown}{Left}{Left}{CtrlUp}
Return



:*:hw::
sendraw, Hello World!
send, {LEFT}{LEFT}{LEFT}{LEFT}{LEFT}{LEFT}