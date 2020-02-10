; PHẦN MỀM CHO PHÒNG KHÁM SẢN

#IfWinActive, ahk_exe Trinasoft.exe

;==================================================================
; NHÓM THAO TÁC NHANH TRÊN PHẦN MỀM TINASOFT

;; F2:: MouseClick, Left, 223, 68 ; Lưu  -> Đã có sẵn trên phần mềm, giờ bấm F3

F3:: MouseClick, Left, 208, 74 ; Lưu (hình như của phần mềm không hoạt động)

^F3:: MouseClick, Left, 163, 68 ; Ca mới

F4:: MouseClick, Left, 732, 385

;; ^F5:: MouseClick, Left, 814, 466 ; Toa thuốc  -> F2 để cho toa thuốc

^F2:: MouseClick, Left, 878, 502 ; Cho lại toa thuốc cũ

F11:: MouseClick, Left, 422, 484 ; Toa thuốc mẫu

F12:: MouseClick, Left, 459, 483 ; Toa thuốc mặc định

^3:: MouseClick, Left, 1037, 364

+^d:: MouseClick, Left, 458, 458

+^e:: MouseClick, Left, 1074, 471

^+q:: MouseClick, Left, 208, 515, 2 ; Chỉnh tên người cho toa

^-::MouseClick, Left, 1078, 485 ; Sửa toa thuốc

^=::MouseClick, Left, 1067, 67 ; Thêm thuốc

^F4::    ;; Tiêm ngừa uốn ván
    MouseClick, Left, 1090, 385
    Sleep, 100
    MouseClick, Left, 1204, 388
    Sleep, 300
    MouseClick, Left, 1208, 438
Return


;;=================================================================




; Chỉ định xét nghiệm

^F7:: 
    MouseClick, Left, 1036, 385
    Sleep, 100
    MouseClick, Left, 115, 456
    Sleep, 300
    Send, F2
Return


!1:: MouseClick, Left, 94, 525, 2 ; Focus vào ô cho thuốc
!2:: MouseClick, left, 471, 283, 2 ; Focus vào ô bác sĩ chính
!3:: MouseClick, Left, 855, 286, 2 ; Bác sĩ phụ


^`::   ; Chỉnh toa thuốc cho bác sĩ Nhật
    MouseClick, Left, 208, 515, 2
    Send, 0772 {Enter}
return

^q::   ; Chỉnh toa thuốc cho bác sĩ Như 
    MouseClick, Left, 208, 515, 2
    Send, 0610 {Enter}
return


; -------------------------------------------------------------------------------------------
; MỞ RỘNG CHỨC NĂNG

; Chỉnh tên bác sĩ khi bị sai
^F10::
    Send, {F10}
    Sleep, 300
    MouseClick, Left, 1072, 479
    Sleep, 100
    MouseClick, Left, 212, 512, 2
    Send, 0772 {Enter}
    Sleep, 100
    Send, {F9}
return

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


^G::
MouseClick, left, 510, 260
SendInput, {End}
SendInput, {Space}
Send, -
SendInput, {Space}

Send, Dự phòng TSG
Return

;; Viết tắt từ Unikey qua

;DO NOT DELETE THIS LINE*** version=1 ***
::BE::TIÊM BẮP  NGÀY 01 LẦN, LẦN 03 ỐNG CÁCH NHAU 24 GIỜ
::bom::Bơm âm đạo tối 1 tuýp mỗi 3 ngày
::DU::DỰ PHÒNG SANH NON
::PHA::PHA 01 GÓI TRONG 1 LÍT NƯỚC RỬA ÂM HỘ 01 LẦN / NGÀY
::pico::Uống 1 gói lúc 18g và 23g (  ) theo hướng dẫn 
::TDD::tiêm dưới da trước ăn 30 phút sáng ui , chiều ui
::TS::DỰ PHÒNG TSG


; ================================
; BỆNH ÁN ĐIỆN TỬ

!X:: ;; load cận lâm sàng bệnh án sản khoa
    MouseClick, Left, 786, 146
    Sleep, 100
    MouseClick, Left, 821, 257
    Sleep, 100
    MouseClick, Left, 619, 94
    Sleep, 100
    MouseClick, Left, 38, 86
    Sleep, 100
    MouseClick, Left, 837, 435
Return

!S:: MouseClick, Left, 749, 600 ;; Lưu bệnh án điện tử

!P:: MouseClick, Left, 807, 604 ;; In bệnh án điện tử

!G:: MouseClick, Left, 38, 86 ;; Ghi lại thông tin bệnh án

!M:: ;; Load mặc định phần khám
    MouseClick, Left, 145, 402
    MouseClick, Left, 213, 400
    MouseClick, Left, 
    Sleep, 100
    MouseClick, Left, 152, 422
Return

!H:: ;; Hẹn tái khám
    MouseClick, Left, 16, 570
    Sleep, 100
    MouseClick, Left, 83, 595
Return

!C:: MouseClick,Left, 989, 612


^!H:: MouseClick, Left, 766, 656

!8:: MouseClick, 1067, 67 ; Mở hồ sơ phu khoa




