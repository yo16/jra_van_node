# jra_van_node
JRA-VANで、データを取得したり通信をする練習 Nodeで！

## winaxのインストールの準備
### Python環境
- ローカル端末のPythonがconda環境だったので、PowerShellで下記を実行
    ```
    C:\Users\yoichiro\anaconda3\shell\condabin\conda-hook.ps1
    conda activate 'C:\Users\yoichiro\anaconda3'
    conda activate <環境名>
    ```
### Visual Studio C++ Build Tools
- ビルドするために、Visual Studio C++ Build Toolsが必要
  - [Microsoft C++ Build Tools - Visual Studio](https://visualstudio.microsoft.com/ja/visual-cpp-build-tools/)
    - Desktop development with C++
    - Windows 10 SDK または Windows 11 SDK（システムに応じて選択）
    - MSBuild

## 32bit環境
### JVDTLab.dllの登録
- 実行すると、次のエラーが出る
  `error	"CreateInstance: JVDTLab.JVLink クラスが登録されていません\r\n"`
- 管理者としてPowerShellを起動し
- `regsvr32 "C:\Windows\SysWOW64\JVDTLAB\JVDTLab.dll"`を実行
- 成功すると下記が出る
  ```
  ---------------------------
  RegSvr32
  ---------------------------
  C:\Windows\SysWOW64\JVDTLAB\JVDTLab.dll の DllRegisterServer は成功しました。
  ---------------------------
  OK   
  ---------------------------
  ```

### 32bit版で登録できたことの確認
- 下記ファイルを、`C:\Windows\SysWOW64\cscript.exe C:\Users\yoichiro\Desktop\test.vbs`で実行
  ```VBScript: test.vbs
  Set obj = CreateObject("JVDTLab.JVLink.1")
  If Not obj Is Nothing Then
      MsgBox "COMオブジェクトの作成に成功しました。"
  Else
      MsgBox "COMオブジェクトの作成に失敗しました。"
  End If
  ```
- この結果下記のメッセージを得ればOK
  ```
  ---------------------------

  ---------------------------
  COMオブジェクトの作成に成功しました。
  ---------------------------
  OK   
  ---------------------------
  ```

### Nodeの32bit版
- [Nodeの公式HP](https://nodejs.org/en)から、32bit版(x86 architecture)のインストーラをダウンロードしてインストール
- "C:\Program Files (x86)\nodejs32"にインストールされる
  - フォルダ名は、`nodejs`から`nodejs32`へ変えた。わかりやすくするため。
  - システムのパスに、"C:\Program Files (x86)\nodejs32"が追加されているので消しておく
- PowerShellで`npm run dev`などと実行する前に、パスを設定する
  - `$env:Path = "C:\Program Files (x86)\nodejs32;$env:Path"`
  - nvmの場合
    - `$env:Path = "C:\Users\yoichiro\AppData\Local\nvm\v22.12.0;$env:Path"`

### `npm run dev`でエラー
- 下記のエラー
  ```
  Error: \\?\D:\Public\github\yo16\jra_van_node\app-jra-van-server\node_modules\winax\build\Release\node_activex.node is not a valid Win32 application.
  ```
  - winaxは、64bit版でインストールして、そのときにビルドもしていたので、今回32bit版で入れなおす
    ```
    npm uninstall winax
    npm install winax
    npm build
    npm run dev
    ```
  - OK!

## 関数呼び出し
- 出力引数は、`winax.Variant`クラスを使う
  - LONG型は`pint32`、STRING型は`pstring`を使う
  - ただし`index.d.ts`に"p"付きの型が定義されていないので、`new winax.Variant(0, "pint32" as any)`として、無理やり突っ込む
  - 値の取り出しは、`valueOf()`関数を使う

