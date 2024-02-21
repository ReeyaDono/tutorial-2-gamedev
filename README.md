# Tutorial 2

Muhammad Kenshin Himura Mahmuddin - 2006473844

## Latihan: Playtest

#### Apa saja pesan log yang dicetak pada panel Output?
Muncul tulisan `Reached objective!`

#### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
Muncul tulisan yang sama juga seperti sebelumnya yaitu `Reached objective!`

#### Buka  _scene_  `MainLevel`  dengan tampilan  _workspace_  2D. Apakah lokasi  _scene_  `ObjectiveArea`  memiliki kaitan dengan pesan  _log_  yang dicetak pada panel  **Output**  pada percobaan sebelumnya?
`ObjectiveArea` berada pada lokasi dimana akan tertulis log `Reached objective!` ketika pesawat menyentuh area itu. Hal ini terjadi karena `ObjectiveArea` pada scene ini memiliki signal yang akan menjalankan fungsi jika terdapat `body` yang masuk ke `ObjectiveArea`, dan fungsi ini akan mencetak tulisan `Reached objective!` jika benda yang menyentuhnya adalah `BlueShip`.

## Latihan: Memanipulasi Node dan Scene

#### _Scene_  `BlueShip`  dan  `StonePlatform`  sama-sama memiliki sebuah  _child node_  bertipe  `Sprite`. Apa fungsi dari  _node_  bertipe  `Sprite`?
Node ini akan menampilkan 2D textures. Pada kasus `BlueShip` menampilkan gambar pesawat dan `StonePlatform` menampilkan block yang menjadi platform baru.

#### _Root node_  dari  _scene_  `BlueShip`  dan  `StonePlatform`  menggunakan tipe yang berbeda.  `BlueShip`  menggunakan tipe  `RigidBody2D`, sedangkan  `StonePlatform`  menggunakan tipe  `StaticBody2D`. Apa perbedaan dari masing-masing tipe  _node_?
Berdasarkan dokumentasi godot, keduanya sama sama mensimulasikan 2D physics, namun untuk yang static hanya mengimplement static body yang intended untuk benda yang tidak bergerak. Berbeda dengan rigid body yang memang intended untuk benda bergerak. Rigid body juga memiliki 4 behavior modes yaitu Rigid, static, character, dan kinematic.

#### Ubah nilai atribut  `Mass`  dan  `Weight`  pada tipe  `RigidBody2D`  secara bebas di  _scene_  `BlueShip`, lalu coba jalankan  _scene_  `MainLevel`. Apa yang terjadi?
Tidak terjadi perubahan apapun yang terlihat jika mengurangi atau menambahkan Mass dan Weight. 

#### Ubah nilai atribut  `Disabled`  pada tipe  `CollisionShape2D`  di  _scene_  `StonePlatform`, lalu coba jalankan  _scene_  `MainLevel`. Apa yang terjadi?
Pesawat malah menembus StonePlatform.

#### Pada  _scene_  `MainLevel`, coba manipulasi atribut  `Position`,  `Rotation`, dan  `Scale`  milik  _node_  `BlueShip`  secara bebas. Apa yang terjadi pada visualisasi  `BlueShip`  di Viewport?
Posisi, rotasi, dan scale dari pesawat juga ikut berubah di viewport sesuai dengan value yang kita overwrite.

#### Pada  _scene_  `MainLevel`, perhatikan nilai atribut  `Position`  _node_  `PlatformBlue`,  `StonePlatform`, dan  `StonePlatform2`. Mengapa nilai  `Position`  _node_  `StonePlatform`  dan  `StonePlatform2`  tidak sesuai dengan posisinya di dalam  _scene_  (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Hal ini karena nilai position dari child node (StonePlatform) relatif terhadap posisi dari parent node (PlatformBlue).