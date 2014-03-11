CREATE TABLE blogger.dbo.Usuario (
	ID int identity(1,1) PRIMARY KEY,
	[User] varchar(50) NOT NULL
)

CREATE TABLE blogger.dbo.Blog (
	ID int identity(1,1) PRIMARY KEY,
	Nombre varchar(250) NOT NULL
)

CREATE TABLE blogger.dbo.Post(
	ID int identity(1,1) PRIMARY KEY,
	IDBlog int NOT NULL FOREIGN KEY REFERENCES Blog (ID),
	Titulo varchar(250) NOT NULL,
	FechaCreado datetime NOT NULL,
	IDUsuario int NOT NULL FOREIGN KEY REFERENCES Usuario (ID),
	Texto varchar(MAX)
)

CREATE TABLE blogger.dbo.Comentarios(
	ID int identity(1,1) PRIMARY KEY,
	IDPost int NOT NULL FOREIGN KEY REFERENCES Post (ID),
	IDUsuario int NOT NULL FOREIGN KEY REFERENCES Usuario (ID),
	Texto varchar(1000)
)

INSERT INTO blogger.dbo.Usuario
values ('Luis Dominguez'), ('Luis García'), ('Jesús León'), ('Beatriz Ríos')

INSERT INTO blogger.dbo.Blog
VALUES ('BaxTech Madrid'), ('BaxTech Valencia')

INSERT INTO blogger.dbo.Post
VALUES
	(1, 'Titulo Madrid Post 1', GETDATE(), 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam varius nunc non auctor suscipit. Phasellus ac mollis ligula, nec ultrices orci. In metus justo, hendrerit eget tempor id, mattis nec lorem. Maecenas venenatis lacus ut est dapibus tempus. Praesent dictum vulputate enim a rutrum. Cras mollis gravida ultrices. Nullam non diam ultrices libero iaculis eleifend ultricies sit amet eros. Quisque ut erat vitae ipsum luctus scelerisque. '),
	(1, 'Titulo MadridPost 2', GETDATE(), 4, 'Nulla in molestie metus. Integer sed mi bibendum, congue lacus non, aliquam mauris. Suspendisse vulputate aliquam mi. Quisque facilisis lobortis odio eget volutpat. Nullam ut nisl libero. Duis fermentum quam a elit aliquam, id faucibus ante suscipit. Nullam vitae felis in neque venenatis posuere. Nam laoreet, lorem in condimentum convallis, urna lorem elementum odio, et tempus neque erat et felis. Integer eu molestie purus, sed adipiscing mi. Vestibulum adipiscing tincidunt elit nec mattis. Quisque ornare id nunc ac placerat. Nulla est ipsum, aliquam id. '),
	(2, 'Titulo Valencia Post 1', GETDATE(), 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum vulputate tellus quis dapibus. Mauris euismod turpis et velit blandit, ut iaculis risus elementum. Ut eu mauris sapien. Donec feugiat erat turpis, eu auctor neque ultrices quis. Nam sit amet neque elit. Donec pellentesque justo dignissim nibh porta elementum. Curabitur ligula purus, pretium ut justo quis, bibendum accumsan turpis. Donec id justo et mauris sagittis laoreet eu sit amet sem. Ut egestas nec leo nec euismod. Donec sit amet est augue. Aenean sit amet urna at diam adipiscing fermentum. Duis non leo elementum, feugiat libero a, venenatis velit. '),
	(2, 'Titulo Valencia Post 2', GETDATE(), 2, 'Suspendisse porttitor dui id nunc malesuada dignissim. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce odio erat, ornare nec dolor ac, tempus dapibus odio. Suspendisse accumsan molestie nibh ut hendrerit. Fusce mauris magna, commodo eget venenatis ut, vehicula a velit. Pellentesque ac dignissim lectus, nec porta. ')

INSERT INTO blogger.dbo.Comentarios
VALUES
	(1, 1, 'Comentario 1'),
	(1, 2, 'Comentario 2'),
	(1, 3, 'Comentario 3'),
	(2, 4, 'Comentario 4'),
	(4, 3, 'Más comentarios')