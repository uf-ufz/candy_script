-- extension to store the settings of fitting tasks

DROP TABLE  if exists opti.fitting_parms;

CREATE TABLE opti.fitting_parms (
	task_id int4 NULL,
	item_ix int4 NOT NULL,
	fname varchar(16) NULL,
	pname varchar(10) NULL,
	minimum float8 NULL,
	maximum float8 NULL,
	ival float8 NULL,
	step float8 NULL,
	aval float8 NULL,
	selection bpchar(50) NULL,
	alias bpchar(15) NULL,
	error float8 NULL );

DROP TABLE if exists opti.fitting_tasks;

CREATE TABLE opti.fitting_tasks (
	task_id int4 NULL,
	name varchar(80) NULL,
	time_frame varchar NULL,
	preprocessing varchar NULL,
	resultprep varchar NULL,
	reslst varchar NULL,
	mix1 int4 NULL,
	mix2 int4 NULL,
	modperf varchar(6) NULL,
	grp_ix varchar NULL,
	maxit int8 NULL,
	finerr float8 NULL );