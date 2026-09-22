/*==========================================================
  Program : 00_setup.sas
  Study   : HTN101-301
  Purpose : Project setup
==========================================================*/

/* Study information */
%let STUDYID = HTN101-301;

/* Project root */
%let ROOT = /home/u64305129/Projects/HTN101;

/* Library locations */

libname RAW  "&ROOT/data/raw";
libname SDTM "&ROOT/data/sdtm";
libname ADAM "&ROOT/data/adam";
libname QC   "&ROOT/validation/QC";

/* Output locations */

%let OUT_TABLE = &ROOT/output/tables;
%let LOG       = &ROOT/logs;

/* Check libraries */

proc datasets library=raw;
quit;
