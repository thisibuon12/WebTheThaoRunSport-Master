ALTER TABLE dbo.SANPHAM
ADD CONSTRAINT FK_SANPHAM_DANHMUCSP FOREIGN KEY(IdDanhMuc)
REFERENCES dbo.DANHMUCSP(IdDanhMuc)
ON DELETE CASCADE
ON UPDATE CASCADE
