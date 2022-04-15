create database Shop
use Shop

create table Category(
Id int primary key identity,
Name nvarchar(30)
)

create table Brands(
Id int primary key identity,
Name nvarchar(30),
Category_Id int foreign key references Category(Id)
)


create table Marka(
Id int primary key identity,
Name nvarchar(30),
Brand_Id int foreign key references Brands(Id)
)
create table Product(
Id int primary key identity,
[Name] nvarchar(30),
Image nvarchar(50),
Price int,
Color nvarchar(20),
Volume integer,
[Count] integer,
Marka_Id int foreign key references Marka(Id)
)

select Marka.Name,Product.Name,Price,Color,Volume,[Count] from Product 
inner join Marka on  Product.Marka_Id=Marka.Id


select Brands.Name, Sum(Product.Price) 'Total Price' from Brands
inner join Marka on Brands.Id=Brand_Id
inner join Product on Marka.Id=Product.Id
GROUP BY Brands.Name



