﻿CREATE TABLE [HomeRoom] (
    [MaLop] char(4)  NOT NULL PRIMARY KEY,
    [MGV] char(9)  NOT NULL ,
    [NienKhoa] int  NOT NULL ,
)
GO
ALTER TABLE [HomeRoom] ADD CONSTRAINT [FK_HomeRoom_MGV] FOREIGN KEY([MGV])
REFERENCES [Teacher] ([MaGiaoVien])
GO

ALTER TABLE [HomeRoom] CHECK CONSTRAINT [FK_HomeRoom_MGV]
GO
ALTER TABLE [HomeRoom] ADD CONSTRAINT [FK_HomeRoom_MaLop] FOREIGN KEY([MaLop])
REFERENCES [Class] ([MaLop])
GO

ALTER TABLE [HomeRoom] CHECK CONSTRAINT [FK_HomeRoom_MaLop]