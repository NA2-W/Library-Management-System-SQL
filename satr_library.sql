-- 1. حذف الجداول القديمة إن وجدت لتصفير البيانات
DROP TABLE IF EXISTS borrowings;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS members;

-- 2. إنشاء الجداول من جديد
CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    biography TEXT
);

CREATE TABLE books (
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    publish_year INTEGER,
    category TEXT,
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE SET NULL
);

-- 3. إدخال كافة المؤلفين مرة واحدة (بأرقام معروفة من 1 إلى5 )
INSERT INTO authors (name, biography) VALUES 
('إليزابيث غاسكل', 'روائية بريطانية شهيرة من العصر الفيكتوري تناولت القضايا الاجتماعية'), -- ID: 1
('أسامة المسلم', 'كاتب سعودي برع في أدب الفانتازيا والخيالي والرعب'),                       -- ID: 2
('أمين معلوف', 'أديب وروائي لبناني فرنسي وعضو الأكاديمية الفرنسية'),                          -- ID: 3
('أجاثا كريستي', 'كاتبة بريطانية تُلقب بـ ملكة الجريمة والتشويق البوليسي'),                   -- ID: 4
('إبراهيم عباس', 'كاتب ومخرج سعودي متألق في أدب الفانتازيا والخيال العلمي');               -- ID: 5


-- 4. إدخال الكتب وربطها بالأرقام الصحيحة للمؤلفين
INSERT INTO books (title, publish_year, category, author_id) VALUES 
('الشمال والجنوب', 1855, 'رواية اجتماعية/تاريخية', 1),
('خوف 1', 2015, 'فانتازيا/رعب', 2),
('خوف 2', 2018, 'فانتازيا/رعب', 2),
('الهويات القاتلة', 1998, 'فكر/دراسات اجتماعية', 3),
('القضية الغامضة في ستايلز', 1920, 'جريمة/غموض', 4),
('ليلة لا تنتهي', 1967, 'جريمة/تشويق', 4),
('شركاء في الجريمة', 1929, 'جريمة/غموض', 4),
('حوجن', 2013, 'فانتازيا/رعب خيالي', 5);

-- 5. استعلام التقرير النهائي النظيف
SELECT 
    b.book_id AS "رقم الكتاب",
    b.title AS "عنوان الكتاب",
    b.publish_year AS "سنة النشر",
    b.category AS "الفئة",
    a.name AS "اسم الروائي / المؤلف"
FROM books b
JOIN authors a ON b.author_id = a.author_id
ORDER BY b.book_id ASC;