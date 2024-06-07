# Logic Design Lab Projects

Bu repository, Lojik Devreler ve Tasarım dersinin laboratuvar projelerini içermektedir. Bu projelerin genel amaçları şunlardır:

## Genel Amaçlar
1. **Donanım Tanımlama Dillerini (DTD) Kullanarak Devre Tasarımı Yapmak**
   - VHDL veya Verilog gibi donanım tanımlama dillerini kullanarak dijital devreler tasarlamak ve uygulamak.

2. **Aritmetik Devreleri Yapısal Formda Hiyerarşik Olarak Tasarlamak**
   - Aritmetik devreleri, yapısal formda ve hiyerarşik yaklaşımla tasarlayarak modülerlik ve yeniden kullanılabilirlik sağlamak.

3. **FPGA için Devreleri Sentezlemek**
   - Sentez araçlarını kullanarak DTD ile tanımlanan devreleri FPGA konfigürasyonlarına dönüştürmek.

4. **Simülasyon Araçları ile Otomatik Simülasyon Yapmak**
   - Tasarlanan devrelerin işlevselliğini doğrulamak için otomatik simülasyonlar gerçekleştirmek.

5. **Birleşik Lojik Devreleri Senkronize Etmek**
   - Birleşik lojik devrelerin doğru ve güvenilir çalışmasını sağlamak için senkronizasyon işlemlerini gerçekleştirmek.

6. **Fonksiyonel Testleri ve Raporlamayı Otomatikleştirmek**
   - Test vektörlerini dosyalardan okuyarak otomatik fonksiyonel testler yapmak, sonuçları karşılaştırmak ve raporlamak.

## Laboratuvar İçerikleri
Repository'de dört laboratuvar bulunmaktadır. Her laboratuvar, ilgili raporu, testbench dosyasını ve ana tasarım dosyasını içermektedir.

### Lab 1: Boolean Algebra
- **Amaç:** Boole cebri denklemleri ile doğruluk tablosu ve lojik devre diyagramları arasındaki ilişkiyi gözlemlemek ve dönüşümleri gerçekleştirmek. Basit lojik kapıları ile devre tasarlamak ve donanım tanımlama dili (DTD) simülasyonuyla çalışmasını doğrulamak. Boole cebri kullanarak lojik sadeleştirme yapmak ve sadeleştirilmiş lojik devrenin çalışmasını DTD fonksiyonel simülasyonla doğrulamak. Zamanlama diyagramı kullanmayı ve yorumlamayı öğrenmek.
- 
- **İçerik:**
  - `lab1/lab1_report.pdf`: Lab 1 raporu
  - `lab1/testbench.sv`: Testbench dosyası
  - `lab1/lab1_boolean_algebra.sv`: Ana tasarım dosyası

### Lab 2: Glitch and Decoder
- **Amaç:** Donanım tanımlama dillerini (DTD) kullanarak devre tasarımı yapmak, sentezleyici araçlar kullanarak DTD ile tanımlanan devreleri FPGA için sentezlemek. Devrelerde oluşan gecikmeleri ve kusurları gözlemlemek ve K-map gibi konuları incelemek. Ayrıca bu kusurların düzeltilme yollarını araştırmak. Yedi segment LED Display modülü için decoder tasarımı gerçekleştirmek.
- 
- **İçerik:**
  - `lab2/lab2_report.pdf`: Lab 2 raporu
  - `lab2/lab2_tb_glitch.sv`: Glitch testbench dosyası
  - `lab2/lab2_tb_decoder.sv`: Decoder testbench dosyası
  - `lab2/lab2_decoder.sv`: Decoder ana tasarım dosyası
  - `lab2/lab2_glitch.sv`: Glitch ana tasarım dosyası

### Lab 3: Decoder and MUX Design by using NAND Gates
- **Amaç:** Donanım tanımlama dillerini (DTD) kullanarak devre tasarımı yapmak, sentezleyici araçlar kullanarak DTD ile tanımlanan devreleri FPGA için sentezlemek. Yalnızca NAND kapıları kullanarak decoder ve multiplexer tasarımı gerçekleştirmek.
  - **Problem 1:** 2N x 1 Çoğullayıcı (MUX) Tasarımı
  - **Problem 2:** 2N x 1 Çoğullayıcı (MUX) ile Temel Lojik Kapıların ve Büyük Çoğullayıcıların Tasarımı
  - **Problem 3:** 2 x 4 Kod Çözücü (Decoder) Tasarımı

- **İçerik:**
  - `lab3/lab3_report.pdf`: Lab 3 raporu
  - `lab3/lab3_p1_tb.sv`: Problem 1 testbench dosyası
  - `lab3/lab3_p1.sv`: Problem 1 ana tasarım dosyası
  - `lab3/lab3_p2_tb.sv`: Problem 2 testbench dosyası
  - `lab3/lab3_p2.sv`: Problem 2 ana tasarım dosyası
  - 
### Lab 4: Aritmetik Devrelerin Tasarımı
- **Amaç:** Yarım Ekleyici (Half Adder), Tam Ekleyici (Full Adder) ve Serbest Akışlı Ekleyici (Ripple Carry Adder) tasarımı ve analizi yapmak. Bu ekleyicilerin fonksiyonlarını anlamak ve devrelerde nasıl kullanıldıklarını öğrenmek.
  - **Problem 1:** Aritmetik Devrelerin Tasarımı (Half Adder, Full Adder, Ripple Carry Adder)
  - **Problem 2:** 32-bitlik Bir Aritmetik Lojik Birimin (ALU) Tasarımı 

  - **İçerik:**
  - `lab4/lab4_report.pdf`: Lab 4 raporu
  - `lab4/lab4_p1_tb.sv`: Problem 1 ripple carry adder testbench dosyası
  - `lab4/full_Adder.sv`: half adder kullanarak full adder tasarımı dosyası
  - `lab4/half_adder_n.sv`: half adder tasarım dosyası
  - `lab4/ripple_carry_adder_5.sv`: full adder kullanarak ripple carry adder tasarımı dosyası
  - `lab4/lab4_p2.sv`: Problem 2 alu tasarım dosyası
  - `lab4/lab4_p1_tb.sv`: Problem 2 alu testbench dosyası

