## Bat to C converter
Not compiler. A converter.
It does not really process code.

Just re writes the bat code to C using `system(LINE)`<br/>
__**(есть текст на русском пониже)**__

### HOW TO CONVERT TO AN .EXE FILE
Basically, you have two ways to do that so your file would be small:

#### Using tcc
This is pretty easy for an average user, but the size is ~2KB.
Sure it ideally suits your purpose.
1. Download `tcc-0.9.27-win64/32-bin.zip` from [here](http://download.savannah.gnu.org/releases/tinycc/)
2. Unpack the archive to any folder
3. [Add the unpacked tcc folder to PATH](http://www.google.com/search?q=how+to+add+folder+to+path)
4. Mount your directory: open cmd and type `cd C:\Your\Directory`
5. Run tcc: `tcc out.c`
Done! Your exe file should be in the same directory named `out.exe`.
---
#### Using cl & crinkler
This is more complex way, but it will do way smaller executable file.
This is ideally suits if you need a VERY small file or if the first way didn't work for you for some reason.
You need an installed Visual Studio for C++ development and [Crinkler](https://github.com/runestubbe/Crinkler) to do this.
1. Open [Visual Studio Developer Console](https://docs.microsoft.com/en-us/visualstudio/ide/reference/command-prompt-powershell?view=vs-2019)
2. Mount your directory: open cmd and type `cd C:\Your\Directory`
3. Compile out.c using cl: `cl out.c -c`
4. Link with `crinkler out.obj user32.lib kernel32.lib`
Done! Your exe file should be in the same directory named `out.exe`.

---
На русском:

## Конвертер файла .bat в C код
Именно конвертер, а не компилятор. Он не обрабатывает код.

Он просто переписывает .bat код в `c` используя `system(LINE)`

### КАК СКОНВЕРТИРОВАТЬ В .EXE ФАЙЛ
Вообще, есть два способа чтобы сделать это:

#### Используя `tcc`
Довольно простой способ, если вы обычный пользователь.
Скорее всего, он вам подходит.
1. Скачайте `tcc-0.9.27-win64/32-bin.zip` [здесь](http://download.savannah.gnu.org/releases/tinycc/).
2. Распакуйте архив в любую папку.
3. [Добавьте папку с `tcc` в PATH](https://www.google.com/search?q=как+добавить+папку+в+path)
4. Откройте папку в консоли: откройте консоль и напишите `cd C:\Your\Directory`
5. Скомпилируйте: `tcc out.c`
Ваш файл с программой будет называться `out.exe` и будет лежать в той же папке в которой лежит `out.c`
---
#### Используя `cl` и `crinkler`
Более сложный способ, но размер доходит до считанных байтов.
Идеально подходит если вам нужен ОЧЕНЬ маленький файл, или если первый способ вам не подошел(почему-то).
Вам понадобится Visual Studio для C++ разработки и [Crinkler](https://github.com/runestubbe/Crinkler).
1. Откройте [командную строку разработчика](https://docs.microsoft.com/ru-ru/cpp/build/building-on-the-command-line?view=msvc-170)
2. Откройте папку в консоли: откройте консоль и напишите `cd C:\Your\Directory`
3. Скомпилируйте `out.c`: `cl out.c -c`
4. И соберите в файл: `crinkler out.obj user32.lib kernel32.lib`
Ваш файл будет называться `out.exe` и лежать в той же папке что и `out.c`
