NULL Deneyi

Deney 1: NULL değerini eşitlik operatörüyle kontrol etme
Sorgu
SELECT full_name, phone
FROM customer
WHERE phone = NULL;

Beklenen Çıktı
 full_name | phone
-----------+-------
(0 rows)

Yorum
:i
785
9+ULL değeri SQL’de eşitlik operatörü (=) ile karşılaştırılamaz. Bu nedenle phone = 
NULL koşulu doğru olarak değerlendirilmez ve sorgu herhangi bir kayıt döndürmez.


Deney 2: NULL değerini IS NULL ile kontrol etme
Sorgu
SELECT full_name, phone
FROM customer
WHERE phone IS NULL;

Beklenen Çıktı
   full_name   | phone
---------------+-------
 Mehmet Kaya   | NULL
 Can Arslan    | NULL
 Selin Öztürk  | NULL
(3 rows)

Yorum
IS NULL operatörü, sütundaki değerlerin NULL olup olmadığını kontrol etmek için kullanılır. 
Bu sorguda telefon numarası kayıtlı olmayan 3 müşteri listelenir.
Deneylerin Karşılaştırılması

İlk sorguda = NULL kullanıldığı için herhangi bir kayıt elde edilmez. İkinci sorguda IS NULL kullanıldığında ise telefon numarası olmayan müşteriler listelenir. Bu durum SQL’de NULL değerlerinin normal değerler gibi karşılaştırılamadığını gösterir.
