#SENARYO:ECZANE YÖNETİM VE STOK TAKİP SİSTEMİ
#çalışanların tutulan bilgileri
CREATE TABLE employee(
  employee_no int Primary key,
  full_name VARCHAR(100),
  hire_date DATE, 
  job_title VARCHAR(50)
  );
#ilaçlara ait bilgiler
CREATE TABLE medicine(
  serial_no int Primary key,
  medicine_name VARCHAR(100)
  stock_status int,
  category VARCHAR(50),
  expiration_date DATE
  );
#tedarikçi bilgileri
CREATE TABLE supplier(
  supplier_no int Primary key,
  company_info VARCHAR(200)
  );
#müşteri bilgileri
CREATE TABLE customer(
  national_id_number int Primary key,
  full_name VARCHAR(100)
  birth_date DATE
  );
#reçete bilgisi
 CREATE TABLE prescription(
  prescription_no int Primary key,
  issue_date DATE
   national_id_numberVARCHAR(11),
   CONSTRAINT fk_prescription_customer
   FOREIGN KEY (national_id_number)
   REFERENCES customer(national_id_number)
  );
#çalışanlarla ilaçlar arasıdaki ilişki
CREATE TABLE employee_medicine(
  employee_no int,
  serial_no int,
  PRIMARY KEY (employee_no, serial_no),
  
  CONSTRAINT fk_employee_medicine_employee
  FOREIGN KEY (employee_no)
  REFERENCES employee(employee_no),

  CONSTRAINT fk_employee_medicine_medicine
  FOREIGN KEY (serial_no)
  REFERENCES medicine(serial_no)
  );
#reçete ve ilaçlar arasındaki ilişki
CREATE TABLE prescription_medicine(
  prescription_no int,
  serial_no int,
  PRIMARY KEY (prescription_no, serial_no),
  CONSTRAINT fk_prescription_medicine_prescription
  FOREIGN KEY(employee_no)
  REFERENCES employee(employee_no),

  CONSTRAINT fk_prescription_medicine_medicine
  FOREIGN KEY(serial_no)
  REFERENCES medicine(serial_no)
);
#ilaçlar ve tedarikçiler arasındaki ilişki
CREATE TABLE medicine_supplier(
  serial_no int,
  supplier_no int,
  PRIMARY KEY (serial_no, supplier_no)
  CONSTRAINT fk_medicine_suplier_medicine
  FOREIGN KEY(serial_no)
  REFERENCES medicine(serial_no),

  CONSTRAINT fk_medicine_suplier_supplier
  FOREIGN KEY (supplier_no)
  REFERENCES supplier(supplier_no)
);

  
  
