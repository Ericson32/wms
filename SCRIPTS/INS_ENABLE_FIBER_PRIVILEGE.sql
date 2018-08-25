-------------------------------------------------------------------------
--
-- Autor: Luan 
-- Data: 22/08/2018
-- Requerimento : PRJ 32468
--
-- Descricao: Insert na CWPRIVILEGE e CWUSERGROUPPRIVILEGE
-- para criação das permissões para formulários de Execução e planejamento
--
----------------------------------------------------------------------------

SPOOL INS_ENABLE_FIBER_PRIVILEGE.log

SET SERVEROUTPUT ON

WHENEVER SQLERROR EXIT SQL.SQLCODE;

INSERT INTO "CWPRIVILEGE" (PRIVILEGE, DESCRIPTION) VALUES ('enableFiberPlanning', 'Enable Fiber Network Planning Task Privilege');
INSERT INTO "CWPRIVILEGE" (PRIVILEGE, DESCRIPTION) VALUES ('enableFiberExecution', 'Enable Fiber Network Execution Task Privilege');
INSERT INTO "CWUSERGROUPPRIVILEGE" (PRIVILEGE, USERGROUP) VALUES ('enableFiberPlanning', 'User Profile Administrators');
INSERT INTO "CWUSERGROUPPRIVILEGE" (PRIVILEGE, USERGROUP) VALUES ('enableFiberExecution', 'User Profile Administrators');

COMMIT;

SPOOL OFF;