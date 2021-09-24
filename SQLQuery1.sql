create table buildings
(building_id int primary key not null identity(1,1),
 building_name nvarchar(30),
 building_name_abb nvarchar(30))

 select * from buildings

 insert into buildings values
 (N'3Давхар', N'C'),
 (N'10Давхар',N'B'),
 (N'15Давхар',N'A')

 create table room
 (room_id int primary key not null identity(1,1),
  room_number int,
  room_type nvarchar(30),
  building_id int,
  IPPhone_number int)

  select * from room

  INSERT INTO room values 
  (10,N'Санхүүгийн алба',1,505),
  (20,N'БУТ',2,506),
  (30,N'МСМ',3,507),
  (40,N'НББ',3,508),
  (50,N'СУТ',1,509),
  (60,N'Санхүүгийн албй',1,510),
  (70,N'Санхүүгийн алба',1,511)

  create table teacher
  (teacher_id int primary key not null identity(1,1),
   teacher_code nvarchar(30),
   room_id int,
   user_id int,
   hasbagsh_buren_erh bit,
   isUndsen_bagsh bit)

   select * from teacher

   insert into teacher VALUES 
   (N'1111',1,6,0,1),
   (N'1112',2,7,1,1),
   (N'1113',3,8,0,1),
   (N'1114',4,9,1,1),
   (N'1115',5,10,0,1),
   (N'1116',6,11,0,1)

   select * from users
   insert into users values
   (N'dondog@gmail',N'Ууган',N'Батгэрэл',N'TD9876543',N'Эрэгтэй',N'c21io1043',N'Баянгол',98767545,3,27),
   (N'erdene@gmail',N'Гэрэл',N'Баточир',N'TD9825624',N'Эрэгтэй',N'c21io1143',N'Баянгол',98767545,2,40),
   (N'tergel@gmail',N'Од',N'Нараа',N'TD9876543',N'Эмэгтэй',N'c21io1143',N'Баянгол',98767545,2,45),
   (N'enh@gmail',N'Хулан',N'Энх',N'TD9876543',N'Эмэгтэй',N'c21io1173',N'Баянгол',98767545,2,36),
   (N'amgalan@gmail',N'Саран',N'Амгалан',N'TD9876543',N'Эрэгтэй',N'c21io1125',N'Баянгол',98767545,2,52),
   (N'dulam@gmail',N'Галаа',N'Дулам',N'TD9876543',N'Эмэгтэй',N'c21io112545',N'Баянгол',98767545,2,54),
   (N'solongo@gmail',N'Наран',N'Солонго',N'TD9876543',N'Эмэгтэй',N'c21io117854',N'Баянгол',98767545,2,30)

   select users.ner,user_type.user_type_id,room.room_type, teacher.user_id, 
          teacher.teacher_code,teacher.isUndsen_bagsh,room.room_number,buildings.building_name,
		  buildings.building_name_abb
   from users
   inner join teacher on users.user_id=teacher.user_id
   inner join room on teacher.room_id=room.room_id
   inner join buildings on room.building_id=buildings.building_id
   inner join user_type on users.user_type_id=user_type.user_type_id

   select * from users
   select * from teacher

   update users set user_type_id=2
   where user_id=6