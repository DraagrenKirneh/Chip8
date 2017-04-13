examples
example

	| program emulator |

	"C8Programs downloadGamesPackZophar."
	"program := C8Programs programNamed: 'ZopharPack:PONG'."
	program := C8Programs repository atRandom.

	emulator := C8Emulator new.
	emulator loadProgram: program.

	emulator asMorph 
		extent: 800@600;
		primaryColor: Color gray;
		secondaryColor: Color black;
		disabledColor: (Color orange alpha: 0.3);
		instructionsPerStep: 10;
		openInWindow;
		takeKeyboardFocus