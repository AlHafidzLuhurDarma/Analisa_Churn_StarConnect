# Analisa Churn StarConnect

## Daftar Isi
1.	Latar Belakang Projek
2.	Tujuan Analisa
3.	Ringkasan Eksekutif
4.	Analisa Mendalam
    * Tipe Pelanggan yang Churn
    * Pelanggan beresiko tinggi
    * Prediksi Churn
5.	Rekomendasi
6.	Pertanyaan

## Latar Belakang Projek
StarConnect, adalah penyedia layanan produk dan jasa digital yang didirikan tahun 2019, memiliki keunggulan dalam menyediakan jasa berbagai jenis layanan dan produk internet. Saya bekerja sama dengan Kepala Operasi untuk menganalisa dan memberikan rekomendasi mengenai kasus pelanggan yang churn selama 6 bulan terakhir dan memberikan rekomendasi untuk menaikkan performa dalam berbagai aspek.

## Tujuan:
1. Memahami alasan pelanggan Churn
  * Tipe pelanggan yang akan churn.
  *	Manakah diantara serives, contract, atau perilaku yang berhubungan dengan churn.
  *	Apakah harga atau tenure memiliki peran?
2. Siapa yang paling terancam?
  *	Identifikasi pelanggan dengan memiliki resiko tinggi untuk churn.
  * Segmentasi Pelanggan (tenure pendek, tagihan tinggi, dll)
  *	Pelanggan mana yang kita prioritaskan untuk meningkatkan retensi
3. Prediksi Pelanggan Churn
  *	Buat model ML
  *	Penjelasan model terbaik
  *	Features yang mempengaruhi churn paling tinggi
    
## Ringkasan Eksekutif
Tim data engineering StarConnect, menyediakan data yang menunjukkan riwayat churn dari pelanggan selama 6 bulan terakhir, sekaligus keterangan mengenai alasan mengapa mereka churn. Dari 6418 pelanggan, terdapat 27% persen churn rate. Layanan Internet_Service mengalami penurunan jumlah pelanggan tertinggi dengan churn rate 93% . Pelanggan dengan usia >65 tahun memiliki churn rate yang tinggi, walaupun 38% dari tenure mereka >24 bulan .Wilayah paling kritis ada pada Jammu & Kashmir dengan churn rate 57%. 

StarConnect dapat melakukan improve pada bagian memperbaiki Contact Person untuk mendapat kepercayaan pelanggan usia 50 keatas, dan melakukan promosi serta meningkatkan kualitas alat terutama pada Fiber Optic dan Kabel untuk mempertahankan pelanggan yang berpotensi menjadi pelanggan setia, yakni umur 20-65 dengan retensi 12-18 bulan.

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-25%20175925.png" width=900 height=800>
</p>


## Analisa Mendalam
### **Mengapa pelanggan churn**

**1. Tipe pelanggan yang akan churn**

  * Pelanggan dengan usia **diatas 65 tahun** adalah pelanggan dengan rate churn tertinggi dengan **40% churn rate**, sangat berbanding terbalik dengan grup usia lain yang memiliki rata-rata 23% churn rate, Sebesar **45% Pelanggan usia 65 tahun** memiliki tingkat churn ketika mereka **berlangganan selama 6-12 bulan.**

**2. Servis atau Kontrak jenis apa yang berhubungan dengan churn**

  * Pelanggan dengan **Service Fiber Optic memiliki 41% churn rate**, Kontrak tipe month-to-month memiliki tingkat churn tertinggi sebanyak 46% disusul 	dengan kabel dengan 25% churn rate.
  * Terdapat **perbedaan signifikan pada korelasi antara service dan kategori churn yang lain**, yakni ada **527 pelanggan** servie Fiber Optic yang churn, angka ini signifikan karena korelasi antara service dan kategori churn yang lain tidak menyentuh angka **200**.

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-20%20101342.png" width=600 height=500>
</p>
    
  *	Kontrak month-to-month memang memiliki nilai churn paling tinggi, namun bukan berarti ini merupakan penyebab pelanggan melakukan churn, karena month-to-month memang lebih **fleksibel dan disukai pelanggan**. Yang menjadi kekhawatiran adalah rendahnya insentif pelanggan dengan tenure lebih dari 12 bulan untuk switching cost kedalam kontrak 1 atau 2 tahun. Pelanggan dengan **tenure panjang tetap berisiko churn** karena **tidak ada komitmen formal dan insentif** yang cukup untuk mempertahankan mereka.

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-20%20171217.png" width=700 height=1100>
</p>

**3. Apakah harga maupun tenure memiliki peran?**
  *	**Hanya 72 pelanggan** yang berpikir Harga yang ditawarkan terlalu mahal, alasan yang paling sering muncul justru datang dari **Kompetitor yang memiliki  devices dan penawaran yang lebih bagus**. Jadi sebenarnya Harga yang ditawarkan termasuk sesuai dengan Harga pasar, namun dari segi penawaran dan devices dari perusahaan bisa ditinjau lebih lanjut.

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-20%20103345.png" width=700 height=600>
</p>

  *	Walaupun **Harga bukan menjadi alasan Utama**, namun jika melihat dari jumlah pelanggan dengan biaya **tagihan lebih dari 100/bulan**, mereka mendominasi churn rate. **Ini merupakan hal yang buruk** karena dari total 6400 pelanggan, 6000 pelanggan berasal dari tagihan lebih dari 100/bulan, dengan total churn mereka 1600 orang, hal ini **akan sangat membebani perusahaan karena hanya terdapat 383 pelanggan baru dari kategori tagihan ini.**

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-20%20163739.png" width=600 height=500>
</p>

  *	**Pelanggan paling setia**, yang berlangganan **lebih dari 24 bulan** justru memiliki **churn rate paling tinggi, yakni sebesar 27.5%**. Yang disusul oleh pelanggan dengan tenure 18-24 bulan sebesar 27.2% . Hal ini biasanya terjadi ketika **terdapat penawaran yang lebih menarik bagi pelanggan**, sehingga mereka bisa meninggalkan produk yang mereka konsumsi walaupun dalam  waktu yang lama.

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-20%20095738.png" width=600 height=500>
</p>

  *	Dan juga terdapat **200 keluhan mengenai attitude dari pihak customer support**, hal ini bisa dijadikan **priorits dalam segi improvement**, karena bisa dilakukan tanpa mengeluarkan dana.
  *	Pelanggan dengan tenure **12-18 bulan memiliki tangkat churn paling rendah**, terdapat 63 pelanggan baru dengan total pelanggan sebensar 997. Pelanggan baru ini harus diprioritaskan supaya mereka bisa masuk kategori berlangganan selama 28-14 bulan, menggantikan .


### Siapa yang paling beresiko untuk churn?
**1. Profil pelanggan yang beresiko tinggi (grup usia dan geografis)**
  *	Pelanggan dengan **usia grup diatas 65 tahun sangat berpotensi untuk churn**, perlu diaris bawahi lebih dari 39% dari mereka menggunakan service Kabel, dan memiliki 6-12 bulan masa berlangganan. **Namun hal ini sebenarnya cukup masuk akal**, mengingat usia mereka tidak lagi produktif. **Justru pelanggan churn di usia 35-50** yang termasuk usia produktif yang menjadi **ancaman terhadap perusahaan, 27%** dari mereka yang tenure **selama 18-24 bulan melakukan churn.**

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-20%20100446.png" width=700 height=500>
</p>

  *	Menariknya **di hampir semua wilayah**, metode Kontrak **month-to-month selalu mendominasi jumlah pelanggan yang churn**, misal di wilayah **Jammu & Kashmir, terdapat 77%** pelanggan dari wilayah tersebut yang menggunakan Kontrak month-to-month merupakan **pelanggan yang churn**, disusul dengan Kontrak One Year sebesar 25%.

**2. Segmentasi Pelanggan (short-tenure + high charges, many tech tickets, etc)**
  *	Pelanggan dengan **tenure kurang dari 6 bulan** yang churn didominasi oleh **usia 50-65 tahun**, ini merupakan hal yang ganjil, karena usia mereka menjadi usia yang bisa memutuskan secara matang dan bisa menjadi pelanggan dengan tenure yang tinggi. Hal ini terjadi **kemungkinan karena produk berbasis teknologi, interface kompleks**, dan (yang sudah terbukti berdasarkan data) **attitude dari support person.**
  *	Kita memiliki **2.087 pelanggan** yang berlangganan selama **lebih dari 24 bulan, 41%** dari mereka menggunakan **service Fiber Optic**, dan potensi mereka  untuk churn juga tinggi mengingat kalau **competitor memiliki device dan penawaran yang lebih baik.**

**3. Pelanggan mana yang kita prioritaskan untuk meningkatkan retensi**
  *	Untuk jangka panjang, **Pelanggan dengan usia 35-50** tidak hanya **pelanggan terbanyak dengan jumlah 1.815 pelanggan**, mereka juga memiliki tingkat churn pada retensi lebih dari 24 bulan **paling rendah** dibandingkan yang lain, hanya 23%. Pelanggan ini berada dalam **usia produktif**, jadi Perusahaan memiliki kesempatan untuk meningkatkan retensi mereka.
  *	Untuk jangka pendek, **Perbaiki attitude support person**, hal ini berpengaruh terhadap pelanggan **usia 50-65**, karena mereka memiliki pengetahuan mengenai teknologi lebih sedikit dan tingkat emosional yang tinggi. Memiliki support person yang mampu menangani hal ini sangat dibutuhkan.


### Prediksi Pelanggan Churn
**1.Laporan model ML**
  *	Saya telah mengevaluasi model ML yang cocok dengan Analisa churn, yakni RandomForestClassification. Model Random Forest dipilih karena mampu menangkap pola non-linear dalam perilaku pelanggan sekaligus memberikan interpretasi faktor utama penyebab churn.
  *	Dengan menggunakan 2000 data pelanggan yang telah dipilih dengan churn sebanyak 879, model bisa memprediksi 70% pelanggan yang Churn. 

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-20%20094650.png" width=700 height=600>
</p>

**2.Feature Importance**
  *	Menurut model ini, Churn paling dipengaruhi oleh faktor terkait Contract, Total Revenue, Total Charges, dan Total long distance charges. Faktor-faktor ini menunjukkan bahwa churn lebih dipicu oleh rendahnya switching cost dan persepsi value, bukan oleh masalah demografis pelanggan, ataupun yang lain.

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-20%20200126.png" width=600 height=500>
</p>

**3.Analisa Hasil Prediksi**
  *	Profil pelanggan yang akan churn 
    * Dari 412 pelanggan yang baru bergabung, model memprediksi 315 pelanggan akan churn. Terutama mereka yang tenure lebih dari 24 bulan (sebanyak 26%) dan menggunakan kartu kredit sebagai metode pembayaran (sebanyak 49%).
    * Sama seperti sebelumnya Kontrak jenis month-to-month juga mendominasi pelanggan yang churn. Hal ini semakin memperkuat rekomendasi untuk menyediakan metode pembayaran yang lebih fleksibel.

<p align="center">
  <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-22%20100520.png" width=600 height=500>
   <img src="https://github.com/AlHafidzLuhurDarma/Analisa_Churn_StarConnect/blob/main/visualization/Screenshot%202025-12-22%20105201.png" width=600 height=500>
</p>


## Rekomendasi
  *	Dengan 200+ keluhan terkait attitude support person, kami merekomendasikan pelatihan soft skill, empathy training, dan pendekatan personal terutama untuk segmen usia 50+ yang lebih sensitif terhadap pelayanan.
  *	Berikan diskon tetap, upgrade gratis ke layanan premium, atau hadiah loyalitas (misal: modem/router terbaru) bagi pelanggan yang memperpanjang kontrak. Kampanyekan bahwa kontrak tahunan lebih hemat dibandingkan month-to-month
  *	Mengingat churn rate Fiber Optic mencapai 41%, pastikan kualitas jaringan stabil dan kecepatan sesuai janji.
  *	Lakukan riset pasar untuk memahami secara spesifik keunggulan kompetitor dalam hal device, penawaran, dan metode pembayaran.
  *	Pada 49% prediksi churn menggunakan kartu kredit, tawarkan diskon atau cashback untuk metode pembayaran lain (e-wallet, transfer bank, dll).
  *	Gunakan model ML untuk mengidentifikasi pelanggan berisiko churn setiap bulan. Prioritaskan pada:
    *	Tagihan tinggi (>100/bulan)
    *	Menggunakan kontrak month-to-month
    *	Berada di wilayah kritis (contoh: Jammu & Kashmir)
## Pertanyaan
* Bagian komplain dari pelanggan yang churn, terdapat pernyataan yang terlalu ambigu, seperti:
  *	Apa yang dimaksud dengan “penawaran competitor lebih menarik”?, Apakah dari segi promosi atau metode bisnis secara keseluruhan?
  *	Apakah “Competitor had better device”, apakah ini terdapat di bagian layanan? Metode pembayaran? Atau produk yang kita sediakan?
*	Mengapa data tanggal tidak tersedia? Karena data tersebut bisa memberikan insight yang lebih dalam.	
* Mengapa tidak mencatat pekerjaan dari pelanggan? Kita bisa memfokuskan promosi kepada pelanggan yang membutuhkan layanan internet secara konstan dan mendapatkan kepercayaan mereka dalam jangka panjang.
