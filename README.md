# d5 (ruby版)

SLRのSD CARDをUSBに挿して、このプログラムを実行すると、
特定のフォルダに ./yyyy/mm/yyy-mm-ddフォルダを作り、
{SD-CARDのフォルダ名}-{もとの画像ファイル名}の形式で
コピーする。

10年ほど前に、まにあわせでrubyで書いた。

プログラム自体はまだ使ってるのだが、
Rubyをインストールしないと動かない(当たり前)のが
面倒になってきたので、GoかRustで書き直そうと思い
その準備としてGitHubに置いとくことにした。

# メモ

- [Go by Example: Directories](https://gobyexample.com/directories) - Goで`mkdir -p`
- [GitHub - rwcarlsen/goexif: Decode embedded EXIF meta data from image files.](https://github.com/rwcarlsen/goexif) - GoのEXIF (他にもいろいろ)
- cpはio.Copyでいいや
- RustのEXIFライブラリ - [exif - Keywords - crates.io: Rust Package Registry](https://crates.io/keywords/exif)
- [Filesystem Operations - Rust By Example](https://doc.rust-lang.org/rust-by-example/std_misc/fs.html) - Rustの`mkdir -p`
- [std::fs::copy - Rust](https://doc.rust-lang.org/std/fs/fn.copy.html)
