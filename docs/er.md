SENARYO:ECZANE YÖNETİM ve STOK TAKİP SİSTEMİ
Bir eczane sahibi, eczanedeki çalışanların, ilaçların, tedarikçilerin 
ve müşterilerin bilgilerini saklayabilmek için satışlarını ve stok durumlarını 
takip edebilmek için bir otomasyon sistemi oluşturmak istemektedir.
Eczanede görev yapan çalışanların sicil numaraları, ad-soyad bilgileri, işe giriş tarihleri
ve görevleri kayıt altında tutulmaktadır. Çalışanlar, eczanede gerçekleştirilen ilaç satış 
işlemlerinde görev almaktadır.
Eczanede bulunan ilaçların ise seri numarası, adı, kategorisi, stok durumu ve son kullanma tarihi
sistemde bulunmaktadır. Eksik veya olmayan ilaçlar tedarikçilerden temin edilmektedir. Bir ilaç 
birden fazla tedarikçiden temin edilebilmektedir, bir tedarikçi de birden fazla ilaç sağlayabilmektedir.
tedarikçilerin tedarik numarası ve şirket bilgileri sistemde tutulmaktadır.
Eczanede ilaç satışları reçete ile gerçekleşmektedir. Satın alınmak istenen ilaçlar için reçete sunulması 
zorunludur. Reçetelerin numarası ve düzenlenme tarihi hayıt altına alınmaktadır. Ayrıca eczaneden alışveriş yapan müşterilerin 
T.C kimlik numarası, ad-soyad bilgisi ve doğum tarihleri sistemde tutulmaktadır.

erDiagram
EMPLOYEE {int employee_no PK
string full_name
date hire_date
string job_title}  
MEDICINE {int serial_no PK
string medicine_name
int stock_status
string category
date expiration_date}
SUPPLIER {int suplier_no PK
string company_info
}
PRESCRIPTION{ int prescription_no PK
date issue_date
string national_id_number FK
}
CUSTOMER{string national_id_number PK
string full_name
date birth_date
}
EMPLOYEE }o--o{ MEDICINE:sells
MEDICINE }o--o{ PRESCRIPTION:contains
PRESCRIPTION }o--|| CUSTOMER:belongs_to
MEDICINE_SUPPLIER{
    int serial_no PK,FK
    int supplier_no PK,FK}
MEDICINE||--o{ MEDICINE_SUPPLIER: has_medicine
SUPPLIER||--o{ MEDICINE_SUPPLIER:has_supplier
