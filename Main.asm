ExitProcess PROTO
MessageBoxA PROTO

.data
myText			db "Hello World", 0
myCaption		db "Message Box Testing", 0

.code
main PROC
	sub rsp, 28h		; reserved shadow area

	mov rcx, 0
	lea rdx, myText
	lea r8, myCaption
	mov r9, 0
	call MessageBoxA	

	mov rax, 5
	add rax, 4
	mov rcx, rax   ; specify Exit Code
	call ExitProcess
main ENDP

END