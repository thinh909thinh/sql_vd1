IF EXISTS (SElect *from sys.databases where Name ='Nhn')
DROP DATABASE Nhn
GO
CREATE DATABASE Nhn
GO
USE Nhn 
GO
CREATE TABLE Sinhvien(
MaSV int PRIMARY KEY,
MaLopHoc VARCHAR(10)
)
GO
INSERT INTO Sinhvien(MaSV) VALUES(1)
SELECT *FROM Sinhvien
CREATE TABLE Lophoc(
Malop INT PRIMARY KEY IDENTITY,
MaLopHoc VARCHAR(10),

)
GO
CREATE TABLE Lophoc2(
Malop2 INT PRIMARY KEY IDENTITY,
MaLop INT,
Masv int,
CONSTRAINT FK FOREIGN KEY(Masv) REFERENCES Sinhvien(MaSV)
)
GO
INSERT INTO Sinhvien VALUES('')