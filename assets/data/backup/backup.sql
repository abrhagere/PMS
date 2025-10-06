#
# TABLE STRUCTURE FOR: acc_coa
#

DROP TABLE IF EXISTS `acc_coa`;

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021403', 'AC', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:33:55', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50202', 'Account Payable', 'Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203', 'Account Receivable', 'Current Asset', '2', '1', '0', '0', 'A', '0', '0', '0.00', '', '2019-08-10 11:01:12', 'admin', '2013-09-18 15:29:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502020000006', 'ADDIS FABRIC-0', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', '1', '2025-07-16 11:25:16', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50205000002', 'ADISS SUPLL-S6MTVXPX6N5846XBLOGS', 'Supplier Ledger', '3', '1', '1', '0', 'L', '0', '0', '0.00', '1', '2025-07-16 11:33:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020201', 'Advance', 'Advance, Deposit And Pre-payments', '3', '1', '0', '1', 'A', '0', '0', '0.00', 'Zoherul', '2015-05-31 13:29:12', 'admin', '2015-12-31 16:46:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020103', 'Advance House Rent', 'Advance', '4', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-10-02 16:55:38', 'admin', '2016-10-02 16:57:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10202', 'Advance, Deposit And Pre-payments', 'Current Asset', '2', '1', '0', '0', 'A', '0', '0', '0.00', '', '2019-08-10 11:01:12', 'admin', '2015-12-31 16:46:24');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020602', 'Advertisement and Publicity', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:51:44', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010410', 'Air Cooler', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-05-23 12:13:55', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020603', 'AIT Against Advertisement', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:52:09', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000002', 'Alula Primary Hospital-5', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-09 17:18:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000008', 'Amanuel Clinic  -11', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '4', '2025-09-16 10:18:16', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1', 'Assets', 'COA', '0', '1', '0', '0', 'A', '0', '0', '0.00', '', '2019-08-10 11:01:12', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010204', 'Attendance Machine', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:49:31', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40216', 'Audit Fee', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2017-07-18 12:54:30', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021002', 'Bank Charge', 'Financial Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:21:03', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30203', 'Bank Interest', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'Obaidul', '2015-01-03 14:49:54', 'admin', '2016-09-25 11:04:19');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000009', 'Betel Wholesale -12', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-19 09:32:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010104', 'Book Shelf', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:46:11', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010407', 'Books and Journal', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:45:37', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000004', 'Bruh tesfa Hospital -7', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-13 17:27:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020604', 'Business Development Expenses', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:52:29', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020606', 'Campaign Expenses', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:52:57', 'admin', '2016-09-19 14:52:48');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020502', 'Campus Rent', 'House Rent', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:46:53', 'admin', '2017-04-27 17:02:39');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40212', 'Car Running Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:28:43', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10201', 'Cash & Cash Equivalent', 'Current Asset', '2', '1', '0', '1', 'A', '0', '0', '0.00', '1', '2019-06-12 11:47:24', 'admin', '2015-10-15 15:57:55');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', '3', '1', '0', '1', 'A', '0', '0', '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', '3', '1', '1', '0', 'A', '0', '0', '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010207', 'CCTV', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:51:24', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020102', 'CEO Current A/C', 'Advance', '4', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-09-25 11:54:54', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010101', 'Class Room Chair', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:45:29', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021407', 'Close Circuit Cemera', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:35:35', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020601', 'Commision on Admission', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:51:21', 'admin', '2016-09-19 14:42:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010206', 'Computer', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:51:09', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021410', 'Computer (R)', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-03-24 12:38:52', 'Zoherul', '2016-03-24 12:41:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010102', 'Computer Table', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:45:44', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('301020401', 'Continuing Registration fee - UoL (Income)', 'Registration Fee (UOL) Income', '4', '1', '1', '0', 'I', '0', '0', '0.00', 'admin', '2015-10-15 17:40:40', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020904', 'Contratuall Staff Salary', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:12:34', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020709', 'Cultural Expense', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'nasmud', '2017-04-29 12:45:10', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102', 'Current Asset', 'Assets', '1', '1', '0', '0', 'A', '0', '0', '0.00', '', '2019-08-10 11:01:12', 'admin', '2018-07-07 11:23:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502', 'Current Liabilities', 'Liabilities', '1', '1', '0', '0', 'L', '0', '0', '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301', 'Customer Receivable', 'Account Receivable', '3', '1', '0', '1', 'A', '0', '0', '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020202', 'Deposit', 'Advance, Deposit And Pre-payments', '3', '1', '0', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:40:42', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020605', 'Design & Printing Expense', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:55:00', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020404', 'Dish Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:58:21', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40215', 'Dividend', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2016-09-25 14:07:55', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000006', 'Dr semere internal Medicine Specialty Clinic -9', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-16 01:44:48', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020403', 'Drinking Water Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:58:10', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010211', 'DSLR Camera', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:53:17', 'admin', '2016-01-02 16:23:25');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020908', 'Earned Leave', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:13:38', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020607', 'Education Fair Expenses', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:53:42', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010602', 'Electric Equipment', 'Electrical Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:44:51', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010203', 'Electric Kettle', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:49:07', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10106', 'Electrical Equipment', 'Non Current Assets', '2', '1', '0', '1', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:43:44', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020407', 'Electricity Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:59:31', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50204', 'Employee Ledger', 'Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', '1', '2019-04-08 10:36:32', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('404', 'Employee Salary', 'Expence', '1', '1', '1', '0', 'E', '0', '0', '0.00', '1', '2019-05-23 05:46:14', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40201', 'Entertainment', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2013-07-08 16:21:26', 'anwarul', '2013-07-17 14:21:47');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('2', 'Equity', 'COA', '0', '1', '0', '0', 'L', '0', '0', '0.00', '', '2019-08-10 11:01:12', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102010201', 'ETHINGDBANK', 'Cash At Bank', '4', '1', '1', '0', 'A', '0', '0', '0.00', '1', '2025-07-16 11:29:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4', 'Expence', 'COA', '0', '1', '1', '0', 'E', '0', '0', '0.00', '1', '2019-06-18 11:40:41', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020903', 'Faculty,Staff Salary & Allowances', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:12:21', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021404', 'Fax Machine', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:34:15', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020905', 'Festival & Incentive Bonus', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:12:48', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010103', 'File Cabinet', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:46:02', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40210', 'Financial Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-08-20 12:24:31', 'admin', '2015-10-15 19:20:36');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010403', 'Fire Extingushier', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:39:32', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('405', 'Fixed Assets Cost', 'Expence', '1', '1', '1', '0', 'E', '0', '0', '0.00', '1', '2019-05-29 05:32:01', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021408', 'Furniture', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:35:47', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10101', 'Furniture & Fixturers', 'Non Current Assets', '2', '1', '0', '1', 'A', '0', '0', '0.00', 'anwarul', '2013-08-20 16:18:15', 'anwarul', '2013-08-21 13:35:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020406', 'Gas Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:59:20', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('20201', 'General Reserve', 'Reserve & Surplus', '2', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-25 14:07:12', 'admin', '2016-10-02 17:48:49');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10105', 'Generator', 'Non Current Assets', '2', '1', '1', '1', 'A', '0', '0', '0.00', 'Zoherul', '2016-02-27 16:02:35', 'admin', '2016-05-23 12:05:18');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021414', 'Generator Repair', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-06-16 10:21:05', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40213', 'Generator Running Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:29:29', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10103', 'Groceries and Cutleries', 'Non Current Assets', '2', '1', '1', '1', 'A', '0', '0', '0.00', '2', '2018-07-12 10:02:55', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010408', 'Gym Equipment', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:46:03', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000010', 'Hewan Wholesale -13', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-19 11:30:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000005', 'Hiwot Specialty Clinic -8', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-13 18:01:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020907', 'Honorarium', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:13:26', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40205', 'House Rent', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-08-24 10:26:56', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3', 'Income', 'COA', '0', '1', '0', '0', 'I', '0', '0', '0.00', '1', '2019-05-20 05:32:59', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30204', 'Income from Photocopy & Printing', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'Zoherul', '2015-07-14 10:29:54', 'admin', '2016-09-25 11:04:28');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020302', 'Income Tax Payable', 'Liabilities for Expenses', '3', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2016-09-19 11:18:17', 'admin', '2016-09-28 13:18:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10107', 'Inventory', 'Non Current Assets', '1', '1', '0', '0', 'A', '0', '0', '0.00', '2', '2018-07-07 15:21:58', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010210', 'LCD TV', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:52:27', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30103', 'Lease Sale', 'Store Income', '1', '1', '1', '1', 'I', '0', '0', '0.00', '2', '2018-07-08 07:51:52', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5', 'Liabilities', 'COA', '0', '1', '0', '0', 'L', '0', '0', '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50203', 'Liabilities for Expenses', 'Current Liabilities', '2', '1', '0', '0', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:50:59', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020707', 'Library Expenses', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2017-01-10 15:34:54', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021409', 'Lift', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:36:12', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020302', 'Loan Receivable', 'Account Receivable', '3', '1', '0', '1', 'A', '0', '0', '0.00', '1', '2019-01-26 07:37:20', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50101', 'Long Term Borrowing', 'Non Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2013-07-04 12:32:26', 'admin', '2015-10-15 19:47:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502020000001', 'Manufacturer Name-0', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', '1', '2025-06-03 14:41:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020608', 'Marketing & Promotion Exp.', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:53:59', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020901', 'Medical Allowance', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:11:33', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010411', 'Metal Ditector', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'Zoherul', '2016-08-22 10:55:22', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021413', 'Micro Oven', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-05-12 14:53:51', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30202', 'Miscellaneous (Income)', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'anwarul', '2014-02-06 15:26:31', 'admin', '2016-09-25 11:04:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020909', 'Miscellaneous Benifit', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:13:53', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020701', 'Miscellaneous Exp', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-09-25 12:54:39', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40207', 'Miscellaneous Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2014-04-26 16:49:56', 'admin', '2016-09-25 12:54:19');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010401', 'Mobile Phone', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-01-29 10:43:30', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000011', 'Momona Internal Medicine Specialty-14', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-19 11:51:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000003', 'Nebiyat Medium Clinic-6', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-13 17:24:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010212', 'Network Accessories', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-01-02 16:23:32', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020408', 'News Paper Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-01-02 15:55:57', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('101', 'Non Current Assets', 'Assets', '1', '1', '0', '0', 'A', '0', '0', '0.00', '', '2019-08-10 11:01:12', 'admin', '2015-10-15 15:29:11');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('501', 'Non Current Liabilities', 'Liabilities', '1', '1', '0', '0', 'L', '0', '0', '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010404', 'Office Decoration', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:40:02', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10102', 'Office Equipment', 'Non Current Assets', '2', '1', '0', '1', 'A', '0', '0', '0.00', 'anwarul', '2013-12-06 18:08:00', 'admin', '2015-10-15 15:48:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021401', 'Office Repair & Maintenance', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:33:15', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30201', 'Office Stationary (Income)', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'anwarul', '2013-07-17 15:21:06', 'admin', '2016-09-25 11:04:50');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('302', 'Other Income', 'Income', '1', '1', '0', '0', 'I', '0', '0', '0.00', '2', '2018-07-07 13:40:57', 'admin', '2016-09-25 11:04:09');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40211', 'Others (Non Academic Expenses)', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'Obaidul', '2014-12-03 16:05:42', 'admin', '2015-10-15 19:22:09');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30205', 'Others (Non-Academic Income)', 'Other Income', '2', '1', '0', '1', 'I', '0', '0', '0.00', 'admin', '2015-10-15 17:23:49', 'admin', '2015-10-15 17:57:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10104', 'Others Assets', 'Non Current Assets', '2', '1', '0', '1', 'A', '0', '0', '0.00', 'admin', '2016-01-29 10:43:16', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020910', 'Outstanding Salary', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-04-24 11:56:50', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021405', 'Oven', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:34:31', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021412', 'PABX-Repair', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-04-24 14:40:18', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020902', 'Part-time Staff Salary', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:12:06', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010202', 'Photocopy & Fax Machine', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:47:27', 'admin', '2016-05-23 12:14:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021411', 'Photocopy Machine Repair', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-04-24 12:40:02', 'admin', '2017-04-27 17:03:17');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3020503', 'Practical Fee', 'Others (Non-Academic Income)', '3', '1', '1', '1', 'I', '0', '0', '0.00', 'admin', '2017-07-22 18:00:37', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020203', 'Prepayment', 'Advance, Deposit And Pre-payments', '3', '1', '0', '1', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:40:51', 'admin', '2015-12-31 16:49:58');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010201', 'Printer', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:47:15', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40202', 'Printing and Stationary', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2013-07-08 16:21:45', 'admin', '2016-09-19 14:39:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('402', 'Product Purchase', 'Expence', '1', '1', '1', '0', 'E', '0', '0', '0.00', '1', '2019-05-20 07:46:59', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('304', 'Product Sale', 'Income', '1', '1', '1', '0', 'I', '0', '0', '0.00', '1', '2019-06-16 12:15:40', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3020502', 'Professional Training Course(Oracal-1)', 'Others (Non-Academic Income)', '3', '1', '1', '0', 'I', '0', '0', '0.00', 'nasim', '2017-06-22 13:28:05', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30207', 'Professional Training Course(Oracal)', 'Other Income', '2', '1', '0', '1', 'I', '0', '0', '0.00', 'nasim', '2017-06-22 13:24:16', 'nasim', '2017-06-22 13:25:56');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010208', 'Projector', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:51:44', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40206', 'Promonational Expence', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-07-11 13:48:57', 'anwarul', '2013-07-17 14:23:03');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40214', 'Repair and Maintenance', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:32:46', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('202', 'Reserve & Surplus', 'Equity', '1', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2016-09-25 14:06:34', 'admin', '2016-10-02 17:48:57');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('20102', 'Retained Earnings', 'Share Holders Equity', '2', '1', '1', '1', 'L', '0', '0', '0.00', 'admin', '2016-05-23 11:20:40', 'admin', '2016-09-25 14:05:06');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020708', 'River Cruse', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2017-04-24 15:35:25', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000007', 'Romanat  Primary Hospital -10', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-16 02:08:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000012', 'Said -15', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '5', '2025-09-19 12:41:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020105', 'Salary', 'Advance', '4', '1', '0', '0', 'A', '0', '0', '0.00', 'admin', '2018-07-05 11:46:44', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40209', 'Salary & Allowances', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-12-12 11:22:58', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010406', 'Security Equipment', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:41:30', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('305', 'Service Income', 'Income', '1', '1', '1', '0', 'I', '0', '0', '0.00', '1', '2019-05-22 13:36:02', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('20101', 'Share Capital', 'Share Holders Equity', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'anwarul', '2013-12-08 19:37:32', 'admin', '2015-10-15 19:45:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('201', 'Share Holders Equity', 'Equity', '1', '1', '0', '0', 'L', '0', '0', '0.00', '', '2019-08-10 11:01:12', 'admin', '2015-10-15 19:43:51');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50201', 'Short Term Borrowing', 'Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:50:30', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40208', 'Software Development Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-11-21 14:13:01', 'admin', '2015-10-15 19:02:51');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50205000001', 'Solayman-3IRQIF9E9KRWRUGRS6J4', 'Supplier Ledger', '3', '1', '1', '0', 'L', '0', '0', '0.00', '1', '2019-11-11 12:00:59', '', '2019-08-10 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020906', 'Special Allowances', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:13:13', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50102', 'Sponsors Loan', 'Non Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:48:02', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020706', 'Sports Expense', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'nasmud', '2016-11-09 13:16:53', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('301', 'Store Income', 'Income', '1', '1', '0', '0', 'I', '0', '0', '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3020501', 'Students Info. Correction Fee', 'Others (Non-Academic Income)', '3', '1', '1', '0', 'I', '0', '0', '0.00', 'admin', '2015-10-15 17:24:45', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010601', 'Sub Station', 'Electrical Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:44:11', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50205', 'Supplier Ledger', 'Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', '1', '2019-10-06 06:18:49', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020704', 'TB Care Expenses', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-10-08 13:03:04', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30206', 'TB Care Income', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'admin', '2016-10-08 13:00:56', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020501', 'TDS on House Rent', 'House Rent', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:44:07', 'admin', '2016-09-19 14:40:16');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502030201', 'TDS Payable House Rent', 'Income Tax Payable', '4', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-19 11:19:42', 'admin', '2016-09-28 13:19:37');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502030203', 'TDS Payable on Advertisement Bill', 'Income Tax Payable', '4', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-28 13:20:51', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502030202', 'TDS Payable on Salary', 'Income Tax Payable', '4', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-28 13:20:17', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020402', 'Telephone Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:57:59', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010209', 'Telephone Set & PABX', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:51:57', 'admin', '2016-10-02 17:10:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30301', 'test in 1', 'Test Income', '2', '1', '1', '0', 'I', '0', '0', '0.00', '1', '2019-05-20 05:25:43', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('303', 'Test Income', 'Income', '1', '1', '1', '0', 'I', '0', '0', '0.00', '1', '2019-05-20 05:24:33', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40203', 'Travelling & Conveyance', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2013-07-08 16:22:06', 'admin', '2015-10-15 18:45:13');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021406', 'TV', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:35:07', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010205', 'UPS', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:50:38', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40204', 'Utility Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-07-11 16:20:24', 'admin', '2016-01-02 15:55:22');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020503', 'VAT on House Rent Exp', 'House Rent', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:49:22', 'admin', '2016-09-25 14:00:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020301', 'VAT Payable', 'Liabilities for Expenses', '3', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:51:11', 'admin', '2016-09-28 13:23:53');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010409', 'Vehicle A/C', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'Zoherul', '2016-05-12 12:13:21', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010405', 'Voltage Stablizer', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:40:59', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203000001', 'walking customer-4', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '1', '2025-08-25 17:52:13', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020405', 'WASA Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:58:51', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010402', 'Water Purifier', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-01-29 11:14:11', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020705', 'Website Development Expenses', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-10-15 12:42:47', '', '2019-08-10 11:01:12');


#
# TABLE STRUCTURE FOR: acc_transaction
#

DROP TABLE IF EXISTS `acc_transaction`;

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('1', '20250603144513', 'Purchase', '2025-06-03', '10107', 'Inventory Debit For Purchase No20250603144513', '1000.00', '0.00', '1', '1', '2025-06-03 14:45:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('2', '20250603144513', 'Purchase', '2025-06-03', '502020000005', 'Purchase No.20250603144513', '0.00', '1000.00', '1', '1', '2025-06-03 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('3', '20250603144513', 'Purchase', '2025-06-03', '402', 'Company Credit For Purchase No20250603144513', '1000.00', '0.00', '1', '1', '2025-06-03 14:45:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('4', '20250603144513', 'Purchase', '2025-06-03', '1020101', 'Cash in Hand For Purchase No20250603144513', '0.00', '1000.00', '1', '1', '2025-06-03 14:45:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('5', '20250603144513', 'Purchase', '2025-06-03', '502020000005', 'Purchase No.20250603144513', '1000.00', '0.00', '1', '1', '2025-06-03 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('6', '20250716112338', 'Purchase', '2025-07-16', '10107', 'Inventory Debit For Purchase No20250716112338', '800.00', '0.00', '1', '1', '2025-07-16 11:23:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('7', '20250716112338', 'Purchase', '2025-07-16', '502020000005', 'Purchase No.20250716112338', '0.00', '800.00', '1', '1', '2025-07-16 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('8', '20250716112338', 'Purchase', '2025-07-16', '402', 'Company Credit For Purchase No20250716112338', '800.00', '0.00', '1', '1', '2025-07-16 11:23:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('9', '20250716112338', 'Purchase', '2025-07-16', '1020101', 'Cash in Hand For Purchase No20250716112338', '0.00', '800.00', '1', '1', '2025-07-16 11:23:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('10', '20250716112338', 'Purchase', '2025-07-16', '502020000005', 'Purchase No.20250716112338', '800.00', '0.00', '1', '1', '2025-07-16 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('11', '5247351359', 'INVOICE', '2025-07-16', '10107', 'Inventory credit For Invoice No5247351359', '0.00', '400.00', '1', '1', '2025-07-16 11:45:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('12', '5247351359', 'INVOICE', '2025-07-16', '10203000001', 'Customer debit For Invoice No5247351359', '500.00', '0.00', '1', '1', '2025-07-16 11:45:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('13', '5247351359', 'INVOICE', '2025-07-16', '304', 'Customer debit For Invoice No5247351359', '0.00', '500.00', '1', '1', '2025-07-16 11:45:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('14', '5247351359', 'INVOICE', '2025-07-16', '10203000001', 'Customer credit for Paid Amount For Invoice No5247351359', '0.00', '500.00', '1', '1', '2025-07-16 11:45:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('15', '5247351359', 'INVOICE', '2025-07-16', '1020101', 'Cash in Hand For Invoice No5247351359', '500.00', '0.00', '1', '1', '2025-07-16 11:45:27', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('19', '1935352534', 'INVOICE', '2025-07-16', '10107', 'Inventory credit For Invoice No1935352534', '0.00', '20000.00', '1', '1', '2025-07-16 11:59:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('20', '1935352534', 'INVOICE', '2025-07-16', '10203000001', 'Customer debit For Invoice No1935352534', '25000.00', '0.00', '1', '1', '2025-07-16 11:59:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('21', '1935352534', 'INVOICE', '2025-07-16', '304', 'Customer debit For Invoice No1935352534', '0.00', '25000.00', '1', '1', '2025-07-16 11:59:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('22', '20250731202841', 'Purchase', '2025-07-31', '10107', 'Inventory Debit For Purchase No20250731202841', '30000.00', '0.00', '1', '1', '2025-07-31 20:28:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('23', '20250731202841', 'Purchase', '2025-07-31', '502020000002', 'Purchase No.20250731202841', '0.00', '30000.00', '1', '1', '2025-07-31 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('24', '20250731202841', 'Purchase', '2025-07-31', '402', 'Company Credit For Purchase No20250731202841', '30000.00', '0.00', '1', '1', '2025-07-31 20:28:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('25', '20250731202841', 'Purchase', '2025-07-31', '1020101', 'Cash in Hand For Purchase No20250731202841', '0.00', '30000.00', '1', '1', '2025-07-31 20:28:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('26', '20250731202841', 'Purchase', '2025-07-31', '502020000002', 'Purchase No.20250731202841', '30000.00', '0.00', '1', '1', '2025-07-31 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('27', '7784677163', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No7784677163', '0.00', '2000.00', '1', '1', '2025-07-31 20:32:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('28', '7784677163', 'INVOICE', '2025-07-31', '10203000002', 'Customer debit For Invoice No7784677163', '2500.00', '0.00', '1', '1', '2025-07-31 20:32:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('29', '7784677163', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No7784677163', '0.00', '2500.00', '1', '1', '2025-07-31 20:32:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('30', '7784677163', 'INVOICE', '2025-07-31', '10203000002', 'Customer credit for Paid Amount For Invoice No7784677163', '0.00', '2500.00', '1', '1', '2025-07-31 20:32:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('31', '7784677163', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No7784677163', '2500.00', '0.00', '1', '1', '2025-07-31 20:32:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('32', '7741148249', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No7741148249', '0.00', '5000.00', '1', '1', '2025-07-31 20:39:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('33', '7741148249', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No7741148249', '10000.00', '0.00', '1', '1', '2025-07-31 20:39:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('34', '7741148249', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No7741148249', '0.00', '10000.00', '1', '1', '2025-07-31 20:39:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('35', '7741148249', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No7741148249', '0.00', '10000.00', '1', '1', '2025-07-31 20:39:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('36', '7741148249', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No7741148249', '10000.00', '0.00', '1', '1', '2025-07-31 20:39:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('37', '20250731204317', 'Purchase', '2025-07-31', '10107', 'Inventory Debit For Purchase No20250731204317', '40000.00', '0.00', '1', '1', '2025-07-31 20:43:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('38', '20250731204317', 'Purchase', '2025-07-31', '502020000002', 'Purchase No.20250731204317', '0.00', '40000.00', '1', '1', '2025-07-31 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('39', '20250731204317', 'Purchase', '2025-07-31', '402', 'Company Credit For Purchase No20250731204317', '40000.00', '0.00', '1', '1', '2025-07-31 20:43:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('40', '20250731204317', 'Purchase', '2025-07-31', '1020101', 'Cash in Hand For Purchase No20250731204317', '0.00', '40000.00', '1', '1', '2025-07-31 20:43:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('41', '20250731204317', 'Purchase', '2025-07-31', '502020000002', 'Purchase No.20250731204317', '40000.00', '0.00', '1', '1', '2025-07-31 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('42', '20250716115928', 'Purchase', '2025-07-16', '10107', 'Inventory Debit For Purchase No20250716115928', '200000.00', '0.00', '1', '1', '2025-07-31 21:11:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('43', '20250716115928', 'Purchase', '2025-07-16', '402', 'Company Credit For Purchase No20250716115928', '200000.00', '0.00', '1', '1', '2025-07-31 21:11:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('44', '20250716115928', 'Purchase', '2025-07-16', '1020101', 'Cash in Hand For Purchase No20250716115928', '0.00', '200000.00', '1', '1', '2025-07-31 21:11:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('45', '8234742463', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No8234742463', '0.00', '400.00', '1', '1', '2025-07-31 21:50:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('46', '8234742463', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No8234742463', '500.00', '0.00', '1', '1', '2025-07-31 21:50:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('47', '8234742463', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No8234742463', '0.00', '500.00', '1', '1', '2025-07-31 21:50:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('48', '8234742463', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No8234742463', '0.00', '500.00', '1', '1', '2025-07-31 21:50:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('49', '8234742463', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No8234742463', '500.00', '0.00', '1', '1', '2025-07-31 21:50:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('50', '20250731215444', 'Purchase', '2025-07-31', '10107', 'Inventory Debit For Purchase No20250731215444', '375000.00', '0.00', '1', '1', '2025-07-31 21:54:44', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('51', '20250731215444', 'Purchase', '2025-07-31', '402', 'Company Credit For Purchase No20250731215444', '375000.00', '0.00', '1', '1', '2025-07-31 21:54:44', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('52', '20250731215444', 'Purchase', '2025-07-31', '1020101', 'Cash in Hand For Purchase No20250731215444', '0.00', '375000.00', '1', '1', '2025-07-31 21:54:44', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('64', '3952363222', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No3952363222', '0.00', '3000.00', '1', '1', '2025-07-31 22:42:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('65', '3952363222', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No3952363222', '0.00', '1500.00', '1', '1', '2025-07-31 22:42:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('66', '3952363222', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No3952363222', '3000.00', '0.00', '1', '1', '2025-07-31 22:42:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('67', '3952363222', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No3952363222', '3000.00', '0.00', '1', '1', '2025-07-31 22:42:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('68', '3952363222', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No3952363222', '0.00', '3000.00', '1', '1', '2025-07-31 22:42:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('69', '3952363222', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No3952363222', '3000.00', '0.00', '1', '1', '2025-07-31 22:42:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('75', '5635685645', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No5635685645', '0.00', '38000.00', '1', '1', '2025-07-31 23:07:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('76', '5635685645', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No5635685645', '0.00', '18000.00', '1', '1', '2025-07-31 23:07:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('77', '5635685645', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No5635685645', '38000.00', '0.00', '1', '1', '2025-07-31 23:07:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('78', '5635685645', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No5635685645', '38000.00', '0.00', '1', '1', '2025-07-31 23:07:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('79', '5635685645', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No5635685645', '0.00', '38000.00', '1', '1', '2025-07-31 23:07:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('80', '5635685645', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No5635685645', '38000.00', '0.00', '1', '1', '2025-07-31 23:07:41', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('81', '6173575641', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No6173575641', '0.00', '2100.00', '1', '1', '2025-07-31 23:41:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('82', '6173575641', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No6173575641', '2752.75', '0.00', '1', '1', '2025-07-31 23:41:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('83', '6173575641', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No6173575641', '0.00', '2752.75', '1', '1', '2025-07-31 23:41:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('84', '6173575641', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No6173575641', '0.00', '2752.75', '1', '1', '2025-07-31 23:41:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('85', '6173575641', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No6173575641', '2752.75', '0.00', '1', '1', '2025-07-31 23:41:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('86', '2399641192', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No2399641192', '0.00', '200.00', '1', '1', '2025-07-31 23:42:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('87', '2399641192', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No2399641192', '250.00', '0.00', '1', '1', '2025-07-31 23:42:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('88', '2399641192', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No2399641192', '0.00', '250.00', '1', '1', '2025-07-31 23:42:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('89', '2399641192', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No2399641192', '0.00', '250.00', '1', '1', '2025-07-31 23:42:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('90', '2399641192', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No2399641192', '250.00', '0.00', '1', '1', '2025-07-31 23:42:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('91', '9194955997', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No9194955997', '0.00', '200.00', '1', '1', '2025-07-31 23:43:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('92', '9194955997', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No9194955997', '250.00', '0.00', '1', '1', '2025-07-31 23:43:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('93', '9194955997', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No9194955997', '0.00', '250.00', '1', '1', '2025-07-31 23:43:32', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('94', '1292749434', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No1292749434', '0.00', '3000.00', '1', '1', '2025-07-31 23:43:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('95', '1292749434', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No1292749434', '4000.00', '0.00', '1', '1', '2025-07-31 23:43:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('96', '1292749434', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No1292749434', '0.00', '4000.00', '1', '1', '2025-07-31 23:43:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('97', '1292749434', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No1292749434', '0.00', '4000.00', '1', '1', '2025-07-31 23:43:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('98', '1292749434', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No1292749434', '4000.00', '0.00', '1', '1', '2025-07-31 23:43:45', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('99', '8144493413', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No8144493413', '0.00', '400.00', '1', '1', '2025-07-31 23:45:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('100', '8144493413', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No8144493413', '500.00', '0.00', '1', '1', '2025-07-31 23:45:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('101', '8144493413', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No8144493413', '0.00', '500.00', '1', '1', '2025-07-31 23:45:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('102', '8144493413', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No8144493413', '0.00', '500.00', '1', '1', '2025-07-31 23:45:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('103', '8144493413', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No8144493413', '500.00', '0.00', '1', '1', '2025-07-31 23:45:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('104', '6162327188', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No6162327188', '0.00', '5000.00', '1', '1', '2025-07-31 23:46:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('105', '6162327188', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No6162327188', '6250.00', '0.00', '1', '1', '2025-07-31 23:46:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('106', '6162327188', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No6162327188', '0.00', '6250.00', '1', '1', '2025-07-31 23:46:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('107', '6162327188', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No6162327188', '0.00', '6250.00', '1', '1', '2025-07-31 23:46:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('108', '6162327188', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No6162327188', '6250.00', '0.00', '1', '1', '2025-07-31 23:46:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('109', '3272568797', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No3272568797', '0.00', '400.00', '1', '1', '2025-07-31 23:47:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('110', '3272568797', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No3272568797', '500.00', '0.00', '1', '1', '2025-07-31 23:47:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('111', '3272568797', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No3272568797', '0.00', '500.00', '1', '1', '2025-07-31 23:47:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('112', '3272568797', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No3272568797', '0.00', '500.00', '1', '1', '2025-07-31 23:47:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('113', '3272568797', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No3272568797', '500.00', '0.00', '1', '1', '2025-07-31 23:47:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('114', '8633983145', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No8633983145', '0.00', '3000.00', '1', '1', '2025-07-31 23:49:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('115', '8633983145', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No8633983145', '4000.00', '0.00', '1', '1', '2025-07-31 23:49:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('116', '8633983145', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No8633983145', '0.00', '4000.00', '1', '1', '2025-07-31 23:49:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('117', '8633983145', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No8633983145', '0.00', '4000.00', '1', '1', '2025-07-31 23:49:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('118', '8633983145', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No8633983145', '4000.00', '0.00', '1', '1', '2025-07-31 23:49:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('119', '7958836427', 'INVOICE', '2025-07-31', '10107', 'Inventory credit For Invoice No7958836427', '0.00', '200.00', '1', '1', '2025-07-31 23:55:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('120', '7958836427', 'INVOICE', '2025-07-31', '10203000001', 'Customer debit For Invoice No7958836427', '250.00', '0.00', '1', '1', '2025-07-31 23:55:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('121', '7958836427', 'INVOICE', '2025-07-31', '304', 'Customer debit For Invoice No7958836427', '0.00', '250.00', '1', '1', '2025-07-31 23:55:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('122', '7958836427', 'INVOICE', '2025-07-31', '10203000001', 'Customer credit for Paid Amount For Invoice No7958836427', '0.00', '250.00', '1', '1', '2025-07-31 23:55:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('123', '7958836427', 'INVOICE', '2025-07-31', '1020101', 'Cash in Hand For Invoice No7958836427', '250.00', '0.00', '1', '1', '2025-07-31 23:55:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('124', '3437553829', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No3437553829', '0.00', '200.00', '1', '1', '2025-08-01 00:04:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('125', '3437553829', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No3437553829', '250.00', '0.00', '1', '1', '2025-08-01 00:04:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('126', '3437553829', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No3437553829', '0.00', '250.00', '1', '1', '2025-08-01 00:04:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('127', '3437553829', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No3437553829', '0.00', '250.00', '1', '1', '2025-08-01 00:04:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('128', '3437553829', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No3437553829', '250.00', '0.00', '1', '1', '2025-08-01 00:04:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('129', '3416358999', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No3416358999', '0.00', '4500.00', '1', '1', '2025-08-01 00:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('130', '3416358999', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No3416358999', '6000.00', '0.00', '1', '1', '2025-08-01 00:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('131', '3416358999', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No3416358999', '0.00', '6000.00', '1', '1', '2025-08-01 00:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('132', '3416358999', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No3416358999', '0.00', '6000.00', '1', '1', '2025-08-01 00:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('133', '3416358999', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No3416358999', '6000.00', '0.00', '1', '1', '2025-08-01 00:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('134', '1828712927', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No1828712927', '0.00', '400.00', '1', '1', '2025-08-01 00:11:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('135', '1828712927', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No1828712927', '500.00', '0.00', '1', '1', '2025-08-01 00:11:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('136', '1828712927', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No1828712927', '0.00', '500.00', '1', '1', '2025-08-01 00:11:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('137', '1828712927', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No1828712927', '0.00', '500.00', '1', '1', '2025-08-01 00:11:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('138', '1828712927', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No1828712927', '500.00', '0.00', '1', '1', '2025-08-01 00:11:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('139', '4618887976', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No4618887976', '0.00', '200.00', '1', '1', '2025-08-01 00:13:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('140', '4618887976', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No4618887976', '250.00', '0.00', '1', '1', '2025-08-01 00:13:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('141', '4618887976', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No4618887976', '0.00', '250.00', '1', '1', '2025-08-01 00:13:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('142', '4618887976', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No4618887976', '0.00', '250.00', '1', '1', '2025-08-01 00:13:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('143', '4618887976', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No4618887976', '250.00', '0.00', '1', '1', '2025-08-01 00:13:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('144', '8998772616', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No8998772616', '0.00', '200.00', '1', '1', '2025-08-01 00:15:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('145', '8998772616', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No8998772616', '250.00', '0.00', '1', '1', '2025-08-01 00:15:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('146', '8998772616', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No8998772616', '0.00', '250.00', '1', '1', '2025-08-01 00:15:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('147', '8998772616', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No8998772616', '0.00', '250.00', '1', '1', '2025-08-01 00:15:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('148', '8998772616', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No8998772616', '250.00', '0.00', '1', '1', '2025-08-01 00:15:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('149', '9119287572', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No9119287572', '0.00', '200.00', '1', '1', '2025-08-01 00:16:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('150', '9119287572', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No9119287572', '250.00', '0.00', '1', '1', '2025-08-01 00:16:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('151', '9119287572', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No9119287572', '0.00', '250.00', '1', '1', '2025-08-01 00:16:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('152', '9119287572', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No9119287572', '0.00', '250.00', '1', '1', '2025-08-01 00:16:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('153', '9119287572', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No9119287572', '250.00', '0.00', '1', '1', '2025-08-01 00:16:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('154', '1472235217', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No1472235217', '0.00', '1500.00', '1', '1', '2025-08-01 00:18:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('155', '1472235217', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No1472235217', '2000.00', '0.00', '1', '1', '2025-08-01 00:18:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('156', '1472235217', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No1472235217', '0.00', '2000.00', '1', '1', '2025-08-01 00:18:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('157', '1472235217', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No1472235217', '0.00', '2000.00', '1', '1', '2025-08-01 00:18:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('158', '1472235217', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No1472235217', '2000.00', '0.00', '1', '1', '2025-08-01 00:18:22', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('159', '6197149656', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No6197149656', '0.00', '400.00', '1', '1', '2025-08-01 00:19:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('160', '6197149656', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No6197149656', '500.00', '0.00', '1', '1', '2025-08-01 00:19:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('161', '6197149656', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No6197149656', '0.00', '500.00', '1', '1', '2025-08-01 00:19:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('162', '6197149656', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No6197149656', '0.00', '500.00', '1', '1', '2025-08-01 00:19:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('163', '6197149656', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No6197149656', '500.00', '0.00', '1', '1', '2025-08-01 00:19:26', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('164', '5875959626', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No5875959626', '0.00', '4500.00', '1', '1', '2025-08-01 00:19:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('165', '5875959626', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No5875959626', '6000.00', '0.00', '1', '1', '2025-08-01 00:19:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('166', '5875959626', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No5875959626', '0.00', '6000.00', '1', '1', '2025-08-01 00:19:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('167', '5875959626', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No5875959626', '0.00', '6000.00', '1', '1', '2025-08-01 00:19:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('168', '5875959626', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No5875959626', '6000.00', '0.00', '1', '1', '2025-08-01 00:19:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('169', '5794198627', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No5794198627', '0.00', '1500.00', '1', '1', '2025-08-01 00:22:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('170', '5794198627', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No5794198627', '2000.00', '0.00', '1', '1', '2025-08-01 00:22:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('171', '5794198627', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No5794198627', '0.00', '2000.00', '1', '1', '2025-08-01 00:22:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('172', '5794198627', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No5794198627', '0.00', '2000.00', '1', '1', '2025-08-01 00:22:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('173', '5794198627', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No5794198627', '2000.00', '0.00', '1', '1', '2025-08-01 00:22:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('174', '2456426478', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No2456426478', '0.00', '3000.00', '1', '1', '2025-08-01 00:23:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('175', '2456426478', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No2456426478', '4000.00', '0.00', '1', '1', '2025-08-01 00:23:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('176', '2456426478', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No2456426478', '0.00', '4000.00', '1', '1', '2025-08-01 00:23:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('177', '2456426478', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No2456426478', '0.00', '4000.00', '1', '1', '2025-08-01 00:23:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('178', '2456426478', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No2456426478', '4000.00', '0.00', '1', '1', '2025-08-01 00:23:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('179', '4976868621', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No4976868621', '0.00', '4500.00', '1', '1', '2025-08-01 00:23:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('180', '4976868621', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No4976868621', '6000.00', '0.00', '1', '1', '2025-08-01 00:23:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('181', '4976868621', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No4976868621', '0.00', '6000.00', '1', '1', '2025-08-01 00:23:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('182', '4976868621', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No4976868621', '0.00', '6000.00', '1', '1', '2025-08-01 00:23:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('183', '4976868621', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No4976868621', '6000.00', '0.00', '1', '1', '2025-08-01 00:23:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('184', '9616745934', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No9616745934', '0.00', '3000.00', '1', '1', '2025-08-01 00:25:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('185', '9616745934', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No9616745934', '4000.00', '0.00', '1', '1', '2025-08-01 00:25:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('186', '9616745934', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No9616745934', '0.00', '4000.00', '1', '1', '2025-08-01 00:25:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('187', '9616745934', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No9616745934', '0.00', '4000.00', '1', '1', '2025-08-01 00:25:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('188', '9616745934', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No9616745934', '4000.00', '0.00', '1', '1', '2025-08-01 00:25:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('189', '8873354913', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No8873354913', '0.00', '37500.00', '1', '1', '2025-08-01 00:52:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('190', '8873354913', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No8873354913', '725000.00', '0.00', '1', '1', '2025-08-01 00:52:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('191', '8873354913', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No8873354913', '0.00', '725000.00', '1', '1', '2025-08-01 00:52:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('192', '8873354913', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No8873354913', '0.00', '725000.00', '1', '1', '2025-08-01 00:52:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('193', '8873354913', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No8873354913', '725000.00', '0.00', '1', '1', '2025-08-01 00:52:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('194', '5435719828', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No5435719828', '0.00', '400.00', '1', '1', '2025-08-01 07:37:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('195', '5435719828', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No5435719828', '500.00', '0.00', '1', '1', '2025-08-01 07:37:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('196', '5435719828', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No5435719828', '0.00', '500.00', '1', '1', '2025-08-01 07:37:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('197', '5435719828', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No5435719828', '0.00', '500.00', '1', '1', '2025-08-01 07:37:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('198', '5435719828', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No5435719828', '500.00', '0.00', '1', '1', '2025-08-01 07:37:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('199', '8121868252', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No8121868252', '0.00', '1500.00', '1', '1', '2025-08-01 07:38:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('200', '8121868252', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No8121868252', '2000.00', '0.00', '1', '1', '2025-08-01 07:38:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('201', '8121868252', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No8121868252', '0.00', '2000.00', '1', '1', '2025-08-01 07:38:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('202', '8121868252', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No8121868252', '0.00', '2000.00', '1', '1', '2025-08-01 07:38:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('203', '8121868252', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No8121868252', '2000.00', '0.00', '1', '1', '2025-08-01 07:38:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('204', '5673634891', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No5673634891', '0.00', '400.00', '1', '1', '2025-08-01 07:38:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('205', '5673634891', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No5673634891', '500.00', '0.00', '1', '1', '2025-08-01 07:38:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('206', '5673634891', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No5673634891', '0.00', '500.00', '1', '1', '2025-08-01 07:38:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('207', '5673634891', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No5673634891', '0.00', '500.00', '1', '1', '2025-08-01 07:38:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('208', '5673634891', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No5673634891', '500.00', '0.00', '1', '1', '2025-08-01 07:38:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('209', '4494661686', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No4494661686', '0.00', '400.00', '1', '1', '2025-08-01 07:42:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('210', '4494661686', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No4494661686', '500.00', '0.00', '1', '1', '2025-08-01 07:42:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('211', '4494661686', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No4494661686', '0.00', '500.00', '1', '1', '2025-08-01 07:42:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('212', '4494661686', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No4494661686', '0.00', '500.00', '1', '1', '2025-08-01 07:42:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('213', '4494661686', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No4494661686', '500.00', '0.00', '1', '1', '2025-08-01 07:42:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('214', '3487246323', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No3487246323', '0.00', '200.00', '1', '1', '2025-08-01 07:43:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('215', '3487246323', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No3487246323', '250.00', '0.00', '1', '1', '2025-08-01 07:43:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('216', '3487246323', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No3487246323', '0.00', '250.00', '1', '1', '2025-08-01 07:43:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('217', '3487246323', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No3487246323', '0.00', '250.00', '1', '1', '2025-08-01 07:43:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('218', '3487246323', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No3487246323', '250.00', '0.00', '1', '1', '2025-08-01 07:43:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('219', '9773552183', 'INVOICE', '2025-08-01', '10107', 'Inventory credit For Invoice No9773552183', '0.00', '400.00', '1', '1', '2025-08-01 07:45:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('220', '9773552183', 'INVOICE', '2025-08-01', '10203000001', 'Customer debit For Invoice No9773552183', '500.00', '0.00', '1', '1', '2025-08-01 07:45:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('221', '9773552183', 'INVOICE', '2025-08-01', '304', 'Customer debit For Invoice No9773552183', '0.00', '500.00', '1', '1', '2025-08-01 07:45:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('222', '9773552183', 'INVOICE', '2025-08-01', '10203000001', 'Customer credit for Paid Amount For Invoice No9773552183', '0.00', '500.00', '1', '1', '2025-08-01 07:45:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('223', '9773552183', 'INVOICE', '2025-08-01', '1020101', 'Cash in Hand For Invoice No9773552183', '500.00', '0.00', '1', '1', '2025-08-01 07:45:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('224', '9531863124', 'INVOICE', '2025-08-02', '10107', 'Inventory credit For Invoice No9531863124', '0.00', '600.00', '1', '1', '2025-08-02 08:14:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('225', '9531863124', 'INVOICE', '2025-08-02', '10203000003', 'Customer debit For Invoice No9531863124', '900.00', '0.00', '1', '1', '2025-08-02 08:14:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('226', '9531863124', 'INVOICE', '2025-08-02', '304', 'Customer debit For Invoice No9531863124', '0.00', '900.00', '1', '1', '2025-08-02 08:14:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('227', '9531863124', 'INVOICE', '2025-08-02', '10203000003', 'Customer credit for Paid Amount For Invoice No9531863124', '0.00', '900.00', '1', '1', '2025-08-02 08:14:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('228', '9531863124', 'INVOICE', '2025-08-02', '1020101', 'Cash in Hand For Invoice No9531863124', '900.00', '0.00', '1', '1', '2025-08-02 08:14:59', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('229', '2999272936', 'INVOICE', '2025-08-02', '10107', 'Inventory credit For Invoice No2999272936', '0.00', '600.00', '1', '1', '2025-08-02 08:42:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('230', '2999272936', 'INVOICE', '2025-08-02', '10203000003', 'Customer debit For Invoice No2999272936', '750.00', '0.00', '1', '1', '2025-08-02 08:42:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('231', '2999272936', 'INVOICE', '2025-08-02', '304', 'Customer debit For Invoice No2999272936', '0.00', '750.00', '1', '1', '2025-08-02 08:42:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('232', '2999272936', 'INVOICE', '2025-08-02', '10203000003', 'Customer credit for Paid Amount For Invoice No2999272936', '0.00', '750.00', '1', '1', '2025-08-02 08:42:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('233', '2999272936', 'INVOICE', '2025-08-02', '1020101', 'Cash in Hand For Invoice No2999272936', '750.00', '0.00', '1', '1', '2025-08-02 08:42:17', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('234', '9219197765', 'INVOICE', '2025-08-19', '10107', 'Inventory credit For Invoice No9219197765', '0.00', '1500.00', '1', '1', '2025-08-19 10:07:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('235', '9219197765', 'INVOICE', '2025-08-19', '10203000001', 'Customer debit For Invoice No9219197765', '2000.00', '0.00', '1', '1', '2025-08-19 10:07:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('236', '9219197765', 'INVOICE', '2025-08-19', '304', 'Customer debit For Invoice No9219197765', '0.00', '2000.00', '1', '1', '2025-08-19 10:07:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('237', '1519539456', 'INVOICE', '2025-08-19', '10107', 'Inventory credit For Invoice No1519539456', '0.00', '41500.00', '1', '1', '2025-08-19 10:11:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('238', '1519539456', 'INVOICE', '2025-08-19', '10203000003', 'Customer debit For Invoice No1519539456', '52000.00', '0.00', '1', '1', '2025-08-19 10:11:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('239', '1519539456', 'INVOICE', '2025-08-19', '304', 'Customer debit For Invoice No1519539456', '0.00', '52000.00', '1', '1', '2025-08-19 10:11:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('240', '5539129265', 'INVOICE', '2025-08-19', '10107', 'Inventory credit For Invoice No5539129265', '0.00', '41500.00', '1', '1', '2025-08-19 10:11:33', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('241', '5539129265', 'INVOICE', '2025-08-19', '10203000003', 'Customer debit For Invoice No5539129265', '52000.00', '0.00', '1', '1', '2025-08-19 10:11:33', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('242', '5539129265', 'INVOICE', '2025-08-19', '304', 'Customer debit For Invoice No5539129265', '0.00', '52000.00', '1', '1', '2025-08-19 10:11:33', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('243', '5544422543', 'INVOICE', '2025-08-19', '10107', 'Inventory credit For Invoice No5544422543', '0.00', '1500.00', '1', '1', '2025-08-19 10:36:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('244', '5544422543', 'INVOICE', '2025-08-19', '10203000003', 'Customer debit For Invoice No5544422543', '2000.00', '0.00', '1', '1', '2025-08-19 10:36:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('245', '5544422543', 'INVOICE', '2025-08-19', '304', 'Customer debit For Invoice No5544422543', '0.00', '2000.00', '1', '1', '2025-08-19 10:36:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('246', '5544422543', 'INVOICE', '2025-08-19', '10203000003', 'Customer credit for Paid Amount For Invoice No5544422543', '0.00', '106000.00', '1', '1', '2025-08-19 10:36:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('247', '5544422543', 'INVOICE', '2025-08-19', '1020101', 'Cash in Hand For Invoice No5544422543', '106000.00', '0.00', '1', '1', '2025-08-19 10:36:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('248', '20250825213611', 'Purchase', '2025-08-25', '10107', 'Inventory Debit For Purchase No20250825213611', '10000000.00', '0.00', '1', '1', '2025-08-25 21:36:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('249', '20250825213611', 'Purchase', '2025-08-25', '402', 'Company Credit For Purchase No20250825213611', '10000000.00', '0.00', '1', '1', '2025-08-25 21:36:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('250', '20250825213611', 'Purchase', '2025-08-25', '1020101', 'Cash in Hand For Purchase No20250825213611', '0.00', '10000000.00', '1', '1', '2025-08-25 21:36:11', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('251', '20250826124104', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826124104', '203010.00', '0.00', '1', '5', '2025-08-26 12:41:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('252', '20250826124104', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826124104', '203010.00', '0.00', '1', '5', '2025-08-26 12:41:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('253', '20250826124104', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826124104', '0.00', '203010.00', '1', '5', '2025-08-26 12:41:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('254', '20250826131347', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826131347', '252740.00', '0.00', '1', '5', '2025-08-26 13:13:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('255', '20250826131347', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826131347', '252740.00', '0.00', '1', '5', '2025-08-26 13:13:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('256', '20250826131347', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826131347', '0.00', '252740.00', '1', '5', '2025-08-26 13:13:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('257', '20250826133705', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826133705', '74480.00', '0.00', '1', '5', '2025-08-26 13:37:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('258', '20250826133705', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826133705', '74480.00', '0.00', '1', '5', '2025-08-26 13:37:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('259', '20250826133705', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826133705', '0.00', '74480.00', '1', '5', '2025-08-26 13:37:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('260', '20250826135806', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826135806', '133230.00', '0.00', '1', '5', '2025-08-26 13:58:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('261', '20250826135806', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826135806', '133230.00', '0.00', '1', '5', '2025-08-26 13:58:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('262', '20250826135806', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826135806', '0.00', '133230.00', '1', '5', '2025-08-26 13:58:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('263', '20250826154621', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826154621', '76420.00', '0.00', '1', '5', '2025-08-26 15:46:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('264', '20250826154621', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826154621', '76420.00', '0.00', '1', '5', '2025-08-26 15:46:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('265', '20250826154621', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826154621', '0.00', '76420.00', '1', '5', '2025-08-26 15:46:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('266', '20250826160458', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826160458', '417735.00', '0.00', '1', '5', '2025-08-26 16:04:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('267', '20250826160458', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826160458', '417735.00', '0.00', '1', '5', '2025-08-26 16:04:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('268', '20250826160458', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826160458', '0.00', '417735.00', '1', '5', '2025-08-26 16:04:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('269', '20250826110520', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826110520', '72730.00', '0.00', '1', '5', '2025-08-26 11:05:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('270', '20250826110520', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826110520', '72730.00', '0.00', '1', '5', '2025-08-26 11:05:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('271', '20250826110520', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826110520', '0.00', '72730.00', '1', '5', '2025-08-26 11:05:21', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('272', '20250826110814', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826110814', '250.00', '0.00', '1', '5', '2025-08-26 11:08:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('273', '20250826110814', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826110814', '250.00', '0.00', '1', '5', '2025-08-26 11:08:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('274', '20250826110814', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826110814', '0.00', '250.00', '1', '5', '2025-08-26 11:08:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('275', '20250826114242', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826114242', '145440.00', '0.00', '1', '5', '2025-08-26 11:42:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('276', '20250826114242', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826114242', '145440.00', '0.00', '1', '5', '2025-08-26 11:42:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('277', '20250826114242', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826114242', '0.00', '145440.00', '1', '5', '2025-08-26 11:42:42', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('278', '20250826121551', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826121551', '245050.00', '0.00', '1', '5', '2025-08-26 12:15:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('279', '20250826121551', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826121551', '245050.00', '0.00', '1', '5', '2025-08-26 12:15:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('280', '20250826121551', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826121551', '0.00', '245050.00', '1', '5', '2025-08-26 12:15:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('281', '20250826121924', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826121924', '3500.00', '0.00', '1', '5', '2025-08-26 12:19:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('282', '20250826121924', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826121924', '3500.00', '0.00', '1', '5', '2025-08-26 12:19:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('283', '20250826121924', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826121924', '0.00', '3500.00', '1', '5', '2025-08-26 12:19:24', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('284', '20250826140147', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826140147', '239438.00', '0.00', '1', '5', '2025-08-26 14:01:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('285', '20250826140147', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826140147', '239438.00', '0.00', '1', '5', '2025-08-26 14:01:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('286', '20250826140147', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826140147', '0.00', '239438.00', '1', '5', '2025-08-26 14:01:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('287', '20250826141318', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826141318', '49650.00', '0.00', '1', '5', '2025-08-26 14:13:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('288', '20250826141318', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826141318', '49650.00', '0.00', '1', '5', '2025-08-26 14:13:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('289', '20250826141318', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826141318', '0.00', '49650.00', '1', '5', '2025-08-26 14:13:18', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('290', '20250826153037', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826153037', '223660.00', '0.00', '1', '5', '2025-08-26 15:30:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('291', '20250826153037', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826153037', '223660.00', '0.00', '1', '5', '2025-08-26 15:30:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('292', '20250826153037', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826153037', '0.00', '223660.00', '1', '5', '2025-08-26 15:30:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('293', '20250826155100', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826155100', '203674.00', '0.00', '1', '5', '2025-08-26 15:51:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('294', '20250826155100', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826155100', '203674.00', '0.00', '1', '5', '2025-08-26 15:51:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('295', '20250826155100', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826155100', '0.00', '203674.00', '1', '5', '2025-08-26 15:51:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('296', '20250826155516', 'Purchase', '2025-08-26', '10107', 'Inventory Debit For Purchase No20250826155516', '1350.00', '0.00', '1', '5', '2025-08-26 15:55:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('297', '20250826155516', 'Purchase', '2025-08-26', '402', 'Company Credit For Purchase No20250826155516', '1350.00', '0.00', '1', '5', '2025-08-26 15:55:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('298', '20250826155516', 'Purchase', '2025-08-26', '1020101', 'Cash in Hand For Purchase No20250826155516', '0.00', '1350.00', '1', '5', '2025-08-26 15:55:16', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('299', '20250909161707', 'Purchase', '2025-09-09', '10107', 'Inventory Debit For Purchase No20250909161707', '1409.00', '0.00', '1', '5', '2025-09-09 16:17:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('300', '20250909161707', 'Purchase', '2025-09-09', '402', 'Company Credit For Purchase No20250909161707', '1409.00', '0.00', '1', '5', '2025-09-09 16:17:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('301', '20250909161707', 'Purchase', '2025-09-09', '1020101', 'Cash in Hand For Purchase No20250909161707', '0.00', '1409.00', '1', '5', '2025-09-09 16:17:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('302', '20250909163905', 'Purchase', '2025-09-09', '10107', 'Inventory Debit For Purchase No20250909163905', '1080.00', '0.00', '1', '4', '2025-09-09 16:39:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('303', '20250909163905', 'Purchase', '2025-09-09', '402', 'Company Credit For Purchase No20250909163905', '1080.00', '0.00', '1', '4', '2025-09-09 16:39:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('304', '20250909163905', 'Purchase', '2025-09-09', '1020101', 'Cash in Hand For Purchase No20250909163905', '0.00', '1080.00', '1', '4', '2025-09-09 16:39:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('305', '20250909165619', 'Purchase', '2025-09-09', '10107', 'Inventory Debit For Purchase No20250909165619', '9480.00', '0.00', '1', '4', '2025-09-09 16:56:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('306', '20250909165619', 'Purchase', '2025-09-09', '402', 'Company Credit For Purchase No20250909165619', '9480.00', '0.00', '1', '4', '2025-09-09 16:56:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('307', '20250909165619', 'Purchase', '2025-09-09', '1020101', 'Cash in Hand For Purchase No20250909165619', '0.00', '9480.00', '1', '4', '2025-09-09 16:56:19', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('308', '7431945468', 'INVOICE', '2025-09-09', '10107', 'Inventory credit For Invoice No7431945468', '0.00', '19500.00', '1', '5', '2025-09-09 17:19:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('309', '7431945468', 'INVOICE', '2025-09-09', '10203000002', 'Customer debit For Invoice No7431945468', '20900.00', '0.00', '1', '5', '2025-09-09 17:19:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('310', '7431945468', 'INVOICE', '2025-09-09', '304', 'Customer debit For Invoice No7431945468', '0.00', '20900.00', '1', '5', '2025-09-09 17:19:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('311', '7337376655', 'INVOICE', '2025-09-13', '10107', 'Inventory credit For Invoice No7337376655', '0.00', '9300.00', '1', '5', '2025-09-13 17:30:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('312', '7337376655', 'INVOICE', '2025-09-13', '10203000003', 'Customer debit For Invoice No7337376655', '9320.00', '0.00', '1', '5', '2025-09-13 17:30:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('313', '7337376655', 'INVOICE', '2025-09-13', '304', 'Customer debit For Invoice No7337376655', '0.00', '9320.00', '1', '5', '2025-09-13 17:30:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('314', '7358559413', 'INVOICE', '2025-09-13', '10107', 'Inventory credit For Invoice No7358559413', '0.00', '18700.00', '1', '5', '2025-09-13 17:31:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('315', '7358559413', 'INVOICE', '2025-09-13', '10203000004', 'Customer debit For Invoice No7358559413', '23580.00', '0.00', '1', '5', '2025-09-13 17:31:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('316', '7358559413', 'INVOICE', '2025-09-13', '304', 'Customer debit For Invoice No7358559413', '0.00', '23580.00', '1', '5', '2025-09-13 17:31:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('317', '6971575623', 'INVOICE', '2025-09-13', '10107', 'Inventory credit For Invoice No6971575623', '0.00', '7500.00', '1', '5', '2025-09-13 18:02:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('318', '6971575623', 'INVOICE', '2025-09-13', '10203000005', 'Customer debit For Invoice No6971575623', '8500.00', '0.00', '1', '5', '2025-09-13 18:02:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('319', '6971575623', 'INVOICE', '2025-09-13', '304', 'Customer debit For Invoice No6971575623', '0.00', '8500.00', '1', '5', '2025-09-13 18:02:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('320', '20250915182913', 'Purchase', '2025-09-15', '10107', 'Inventory Debit For Purchase No20250915182913', '1600.00', '0.00', '1', '5', '2025-09-15 18:29:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('321', '20250915182913', 'Purchase', '2025-09-15', '402', 'Company Credit For Purchase No20250915182913', '1600.00', '0.00', '1', '5', '2025-09-15 18:29:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('322', '20250915182913', 'Purchase', '2025-09-15', '1020101', 'Cash in Hand For Purchase No20250915182913', '0.00', '1600.00', '1', '5', '2025-09-15 18:29:13', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('323', '20250915183738', 'Purchase', '2025-09-15', '10107', 'Inventory Debit For Purchase No20250915183738', '3000.00', '0.00', '1', '5', '2025-09-15 18:37:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('324', '20250915183738', 'Purchase', '2025-09-15', '402', 'Company Credit For Purchase No20250915183738', '3000.00', '0.00', '1', '5', '2025-09-15 18:37:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('325', '20250915183738', 'Purchase', '2025-09-15', '1020101', 'Cash in Hand For Purchase No20250915183738', '0.00', '3000.00', '1', '5', '2025-09-15 18:37:38', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('326', '20250916014800', 'Purchase', '2025-09-16', '10107', 'Inventory Debit For Purchase No20250916014800', '77420.00', '0.00', '1', '5', '2025-09-16 01:48:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('327', '20250916014800', 'Purchase', '2025-09-16', '402', 'Company Credit For Purchase No20250916014800', '77420.00', '0.00', '1', '5', '2025-09-16 01:48:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('328', '20250916014800', 'Purchase', '2025-09-16', '1020101', 'Cash in Hand For Purchase No20250916014800', '0.00', '77420.00', '1', '5', '2025-09-16 01:48:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('329', '9536329322', 'INVOICE', '2025-09-16', '10107', 'Inventory credit For Invoice No9536329322', '0.00', '41700.00', '1', '5', '2025-09-16 01:48:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('330', '9536329322', 'INVOICE', '2025-09-16', '10203000006', 'Customer debit For Invoice No9536329322', '46400.00', '0.00', '1', '5', '2025-09-16 01:48:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('331', '9536329322', 'INVOICE', '2025-09-16', '304', 'Customer debit For Invoice No9536329322', '0.00', '46400.00', '1', '5', '2025-09-16 01:48:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('332', '20250916020203', 'Purchase', '2025-09-16', '10107', 'Inventory Debit For Purchase No20250916020203', '70680.00', '0.00', '1', '5', '2025-09-16 02:02:03', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('333', '20250916020203', 'Purchase', '2025-09-16', '402', 'Company Credit For Purchase No20250916020203', '70680.00', '0.00', '1', '5', '2025-09-16 02:02:03', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('334', '20250916020203', 'Purchase', '2025-09-16', '1020101', 'Cash in Hand For Purchase No20250916020203', '0.00', '70680.00', '1', '5', '2025-09-16 02:02:03', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('335', '3612578812', 'INVOICE', '2025-09-16', '10107', 'Inventory credit For Invoice No3612578812', '0.00', '303260.00', '1', '5', '2025-09-16 02:12:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('336', '3612578812', 'INVOICE', '2025-09-16', '10203000007', 'Customer debit For Invoice No3612578812', '196000.00', '0.00', '1', '5', '2025-09-16 02:12:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('337', '3612578812', 'INVOICE', '2025-09-16', '304', 'Customer debit For Invoice No3612578812', '0.00', '196000.00', '1', '5', '2025-09-16 02:12:55', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('338', '20250916044851', 'Purchase', '2025-09-16', '10107', 'Inventory Debit For Purchase No20250916044851', '75000.00', '0.00', '1', '5', '2025-09-16 04:48:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('339', '20250916044851', 'Purchase', '2025-09-16', '402', 'Company Credit For Purchase No20250916044851', '75000.00', '0.00', '1', '5', '2025-09-16 04:48:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('340', '20250916044851', 'Purchase', '2025-09-16', '1020101', 'Cash in Hand For Purchase No20250916044851', '0.00', '75000.00', '1', '5', '2025-09-16 04:48:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('341', '20250916085336', 'Purchase', '2025-09-16', '10107', 'Inventory Debit For Purchase No20250916085336', '6100.00', '0.00', '1', '4', '2025-09-16 08:53:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('342', '20250916085336', 'Purchase', '2025-09-16', '402', 'Company Credit For Purchase No20250916085336', '6100.00', '0.00', '1', '4', '2025-09-16 08:53:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('343', '20250916085336', 'Purchase', '2025-09-16', '1020101', 'Cash in Hand For Purchase No20250916085336', '0.00', '6100.00', '1', '4', '2025-09-16 08:53:36', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('344', '3164929197', 'INVOICE', '2025-09-16', '10107', 'Inventory credit For Invoice No3164929197', '0.00', '4500.00', '1', '4', '2025-09-16 10:19:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('345', '3164929197', 'INVOICE', '2025-09-16', '10203000008', 'Customer debit For Invoice No3164929197', '5200.00', '0.00', '1', '4', '2025-09-16 10:19:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('346', '3164929197', 'INVOICE', '2025-09-16', '304', 'Customer debit For Invoice No3164929197', '0.00', '5200.00', '1', '4', '2025-09-16 10:19:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('347', '6369481177', 'INVOICE', '2025-09-19', '10107', 'Inventory credit For Invoice No6369481177', '0.00', '1300.00', '1', '5', '2025-09-19 11:30:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('348', '6369481177', 'INVOICE', '2025-09-19', '10203000010', 'Customer debit For Invoice No6369481177', '1500.00', '0.00', '1', '5', '2025-09-19 11:30:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('349', '6369481177', 'INVOICE', '2025-09-19', '304', 'Customer debit For Invoice No6369481177', '0.00', '1500.00', '1', '5', '2025-09-19 11:30:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('350', '6542877568', 'INVOICE', '2025-09-19', '10107', 'Inventory credit For Invoice No6542877568', '0.00', '5150.00', '1', '5', '2025-09-19 11:52:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('351', '6542877568', 'INVOICE', '2025-09-19', '10203000011', 'Customer debit For Invoice No6542877568', '6050.00', '0.00', '1', '5', '2025-09-19 11:52:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('352', '6542877568', 'INVOICE', '2025-09-19', '304', 'Customer debit For Invoice No6542877568', '0.00', '6050.00', '1', '5', '2025-09-19 11:52:46', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('353', '4546727184', 'INVOICE', '2025-09-19', '10107', 'Inventory credit For Invoice No4546727184', '0.00', '6190.00', '1', '5', '2025-09-19 12:49:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('354', '4546727184', 'INVOICE', '2025-09-19', '10203000012', 'Customer debit For Invoice No4546727184', '7550.00', '0.00', '1', '5', '2025-09-19 12:49:29', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('355', '4546727184', 'INVOICE', '2025-09-19', '304', 'Customer debit For Invoice No4546727184', '0.00', '7550.00', '1', '5', '2025-09-19 12:49:29', NULL, NULL, '1');


#
# TABLE STRUCTURE FOR: accesslog
#

DROP TABLE IF EXISTS `accesslog`;

CREATE TABLE `accesslog` (
  `sl_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_page` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_done` text COLLATE utf8_unicode_ci,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  UNIQUE KEY `SerialNo` (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('1', 'Role Permission', 'create', 'Role id :101', '1', '2025-08-19 10:49:35');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('2', 'Role Permission', 'create', 'Role id :209', '1', '2025-08-25 17:56:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('3', 'Role Permission', 'create', 'Role id :317', '1', '2025-08-25 18:00:13');


#
# TABLE STRUCTURE FOR: asset_purchase
#

DROP TABLE IF EXISTS `asset_purchase`;

CREATE TABLE `asset_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_date` date NOT NULL,
  `supplier_id` varchar(30) NOT NULL,
  `grand_total` float NOT NULL,
  `payment_type` tinyint(4) DEFAULT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: attendance
#

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL,
  PRIMARY KEY (`att_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bank_add
#

DROP TABLE IF EXISTS `bank_add`;

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `bank_add` (`id`, `bank_id`, `bank_name`, `ac_name`, `ac_number`, `branch`, `signature_pic`, `status`) VALUES ('1', 'CNHO5CUEX2', 'ETHINGDBANK', 'TESFUUUU', '1000028282828', 'MAIN BRANTCH', NULL, '1');


#
# TABLE STRUCTURE FOR: bank_summary
#

DROP TABLE IF EXISTS `bank_summary`;

CREATE TABLE `bank_summary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) DEFAULT NULL,
  `description` text,
  `deposite_id` varchar(250) DEFAULT NULL,
  `date` varchar(250) DEFAULT NULL,
  `ac_type` varchar(50) DEFAULT NULL,
  `dr` decimal(12,2) DEFAULT '0.00',
  `cr` decimal(10,2) DEFAULT '0.00',
  `ammount` decimal(12,2) DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ci_sessions
#

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: company_information
#

DROP TABLE IF EXISTS `company_information`;

CREATE TABLE `company_information` (
  `company_id` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `tin_number` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `company_information` (`company_id`, `company_name`, `tin_number`, `email`, `address`, `mobile`, `website`, `status`) VALUES ('NOILG8EGCRXXBWUEUQBM', 'CARE Medicine and Medical device\'s wholesale ', '0090538760', 'care@gmail.com', 'Mekelle,Kedamay weyane', '0909681803 / 0922886725', 'http://www.care.com', '1');


#
# TABLE STRUCTURE FOR: currency_tbl
#

DROP TABLE IF EXISTS `currency_tbl`;

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES ('1', 'birr', 'birr');
INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES ('2', 'Azerbaijan Manat', 'dolar');


#
# TABLE STRUCTURE FOR: customer_information
#

DROP TABLE IF EXISTS `customer_information`;

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `tin_number` varchar(30) DEFAULT NULL,
  `vat_number` varchar(30) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `house_number` varchar(30) DEFAULT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('4', 'walking customer', '', '', '', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('5', 'Alula Primary Hospital', '', '', 'Mekelle ', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('6', 'Nebiyat Medium Clinic', '', '', 'Mekelle ', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('7', 'Bruh tesfa Hospital ', '', '', '', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('8', 'Hiwot Specialty Clinic ', '', '', 'Mekelle ', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('9', 'Dr semere internal Medicine Specialty Clinic ', '', '', 'Alamata ', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('10', 'Romanat  Primary Hospital ', '', '', 'Mekelle ', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('11', 'Amanuel Clinic  ', '', '', 'Mekelle ', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('12', 'Betel Wholesale ', '', '', 'Mekelle ', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('13', 'Hewan Wholesale ', '', '', 'Mekelle', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('14', 'Momona Internal Medicine Specialty', '', '', 'Mekelle', '', '', '', '1');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `tin_number`, `vat_number`, `customer_address`, `house_number`, `customer_mobile`, `customer_email`, `status`) VALUES ('15', 'Said ', '', '', 'Mekelle ', '', '', '', '1');


#
# TABLE STRUCTURE FOR: customer_ledger
#

DROP TABLE IF EXISTS `customer_ledger`;

CREATE TABLE `customer_ledger` (
  `transaction_id` varchar(100) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `invoice_no` bigint(20) DEFAULT NULL,
  `receipt_no` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT '0.00',
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_c` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receipt_no` (`receipt_no`),
  KEY `receipt_no_2` (`receipt_no`),
  KEY `receipt_no_3` (`receipt_no`),
  KEY `receipt_no_4` (`receipt_no`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('JZ8XGSBA3Y4MKUY', '15', NULL, 'FQ1D245U6P', '7550.00', 'Medicine Received By Customer', '1', '', '2025-09-19', '1', '125', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('JZ8XGSBA3Y4MKUY', '15', '4546727184', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-19', '1', '124', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('T1SNTVLU1C', '15', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-19', '1', '123', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('C9ZKG42QUQTXGAK', '14', NULL, '3G71ZX5NB2', '6050.00', 'Medicine Received By Customer', '1', '', '2025-09-19', '1', '122', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('C9ZKG42QUQTXGAK', '14', '6542877568', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-19', '1', '121', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('N1Y7TM3OJL', '14', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-19', '1', '120', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('K6VYEXJDGZQI1U6', '13', NULL, 'KS8Y14687T', '1500.00', 'Medicine Received By Customer', '1', '', '2025-09-19', '1', '119', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('K6VYEXJDGZQI1U6', '13', '6369481177', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-19', '1', '118', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('BFNGY8LV5C', '13', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-19', '1', '117', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('Y7UU6MVE3A', '12', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-19', '1', '116', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('VZEL6G76FO5BH38', '11', NULL, 'LHXC9SY4N3', '5200.00', 'Medicine Received By Customer', '1', '', '2025-09-16', '1', '115', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('VZEL6G76FO5BH38', '11', '3164929197', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-16', '1', '114', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('4MDLUTGZZT', '11', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-16', '1', '113', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('TTVRUR5CUT2OZEO', '10', NULL, '81ECLM9NLQ', '196000.00', 'Medicine Received By Customer', '1', '', '2025-09-16', '1', '112', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('TTVRUR5CUT2OZEO', '10', '3612578812', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-16', '1', '111', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('9QVS4VAMKP', '10', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-16', '1', '110', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('KCHV1C5I7DSXRX8', '9', NULL, '3FEXK5O4IP', '46400.00', 'Medicine Received By Customer', '1', '', '2025-09-16', '1', '109', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('KCHV1C5I7DSXRX8', '9', '9536329322', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-16', '1', '108', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('56EA6SYO1K', '9', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-16', '1', '107', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('7GM9OYZO6KAPJJT', '8', NULL, '8UBT5PA7K4', '8500.00', 'Medicine Received By Customer', '1', '', '2025-09-13', '1', '106', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('CQ5DNKR3Q7', '7', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-13', '1', '101', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('6GBXA8Q1GYKBSOU', '7', '7358559413', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-13', '1', '102', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('6GBXA8Q1GYKBSOU', '7', NULL, 'VP2SES8F9S', '23580.00', 'Medicine Received By Customer', '1', '', '2025-09-13', '1', '103', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('RRMD5SAFOQ', '8', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-13', '1', '104', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('7GM9OYZO6KAPJJT', '8', '6971575623', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-13', '1', '105', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('ZPRZ68VXHC3UKC4', '6', NULL, 'MBFQ3EWLIV', '9320.00', 'Medicine Received By Customer', '1', '', '2025-09-13', '1', '100', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('SJOED1I6F1', '4', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-08-25', '1', '94', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('OJJ6KO6RUD', '5', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-09', '1', '95', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('RP6OKBQ7DJB92OK', '5', '7431945468', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-09', '1', '96', 'c');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('RP6OKBQ7DJB92OK', '5', NULL, 'L6ISW2R6F8', '20900.00', 'Medicine Received By Customer', '1', '', '2025-09-09', '1', '97', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('GE1O795EST', '6', '0', NULL, '0.00', 'Previous adjustment with software', 'NA', 'NA', '2025-09-13', '1', '98', 'd');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `id`, `d_c`) VALUES ('ZPRZ68VXHC3UKC4', '6', '7337376655', NULL, '0.00', 'Cash Paid By Customer', '', '', '2025-09-13', '1', '99', 'c');


#
# TABLE STRUCTURE FOR: daily_closing
#

DROP TABLE IF EXISTS `daily_closing`;

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`closing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: designation
#

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: employee_history
#

DROP TABLE IF EXISTS `employee_history`;

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: employee_salary_payment
#

DROP TABLE IF EXISTS `employee_salary_payment`;

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT '0.00',
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 NOT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `salary_month` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`emp_sal_pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: employee_salary_setup
#

DROP TABLE IF EXISTS `employee_salary_setup`;

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`e_s_s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: expense
#

DROP TABLE IF EXISTS `expense`;

CREATE TABLE `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: expense_item
#

DROP TABLE IF EXISTS `expense_item`;

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: fixed_assets
#

DROP TABLE IF EXISTS `fixed_assets`;

CREATE TABLE `fixed_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `insert_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: invoice
#

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `invoice` bigint(20) DEFAULT NULL,
  `total_discount` decimal(10,2) DEFAULT '0.00' COMMENT 'total invoice discount',
  `invoice_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) DEFAULT '0.00',
  `prevous_due` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sales_by` varchar(30) DEFAULT NULL,
  `invoice_details` varchar(200) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `payment_type` int(11) NOT NULL DEFAULT '1',
  `bank_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('43', '7431945468', '5', '2025-09-09', '20900.00', '1000', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('44', '7337376655', '6', '2025-09-13', '9320.00', '1001', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('45', '7358559413', '7', '2025-09-13', '23580.00', '1002', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('46', '6971575623', '8', '2025-09-13', '8500.00', '1003', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('47', '9536329322', '9', '2025-09-16', '46400.00', '1004', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('48', '3612578812', '10', '2025-09-16', '196000.00', '1005', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('49', '3164929197', '11', '2025-09-16', '5200.00', '1006', '0.00', '0.00', '0.00', '0.00', '4', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('50', '6369481177', '13', '2025-09-19', '1500.00', '1007', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('51', '6542877568', '14', '2025-09-19', '6050.00', '1008', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);
INSERT INTO `invoice` (`id`, `invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `total_tax`, `prevous_due`, `sales_by`, `invoice_details`, `status`, `payment_type`, `bank_id`) VALUES ('52', '4546727184', '15', '2025-09-19', '7550.00', '1009', '0.00', '0.00', '0.00', '0.00', '5', '', '1', '1', NULL);


#
# TABLE STRUCTURE FOR: invoice_details
#

DROP TABLE IF EXISTS `invoice_details`;

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_details_id` varchar(30) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `batch_id` varchar(30) NOT NULL,
  `expiry_date` date NOT NULL,
  `cartoon` float DEFAULT NULL,
  `quantity` float NOT NULL,
  `rate` decimal(12,2) DEFAULT NULL,
  `manufacturer_rate` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(12,0) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `pinvoice_id` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('53', '489884137919379', '7431945468', '45564156', '221110', '0000-00-00', NULL, '3', '500.00', '500.00', '1500.00', '0', '0.00', '0', '20900.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('54', '396325139256544', '7431945468', '81711923', 'F20411797BD', '2026-11-21', NULL, '2', '9700.00', '9000.00', '19400.00', '0', '0.00', '0', '20900.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('55', '293913599674687', '7337376655', '87395973', '20250302', '0000-00-00', NULL, '2', '960.00', '1650.00', '1920.00', '0', '0.00', '0', '9320.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('56', '846783641422618', '7337376655', '69785616', '20250303', '0000-00-00', NULL, '3', '1600.00', '1300.00', '4800.00', '0', '0.00', '0', '9320.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('57', '535165895675697', '7337376655', '52829584', '2506031301', '0000-00-00', NULL, '2', '1300.00', '1050.00', '2600.00', '0', '0.00', '0', '9320.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('58', '824277824877953', '7358559413', '97943497', '253166', '0000-00-00', NULL, '10', '900.00', '790.00', '9000.00', '0', '0.00', '0', '23580.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('59', '119351997817392', '7358559413', '45777176', 'KLG100024', '0000-00-00', NULL, '1', '1100.00', '900.00', '1100.00', '0', '0.00', '0', '23580.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('60', '971621723431232', '7358559413', '94941436', 'URS24050004', '0000-00-00', NULL, '2', '690.00', '570.00', '1380.00', '0', '0.00', '0', '23580.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('61', '222544712335798', '7358559413', '74889721', 'F2201B505AD', '2026-12-18', NULL, '1', '9400.00', '8200.00', '9400.00', '0', '0.00', '0', '23580.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('62', '273841816181941', '7358559413', '56212845', 'SLO2365', '0000-00-00', NULL, '4', '300.00', '270.00', '1200.00', '0', '0.00', '0', '23580.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('63', '173454356356328', '7358559413', '32486247', '581017', '0000-00-00', NULL, '2', '750.00', '520.00', '1500.00', '0', '0.00', '0', '23580.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('64', '326219789874927', '6971575623', '67296766', 'SH22149-72', '0000-00-00', NULL, '10', '850.00', '750.00', '8500.00', '0', '0.00', '0', '8500.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('65', '862993488145152', '9536329322', '81711923', 'F20411797BD', '2026-11-21', NULL, '2', '9800.00', '9000.00', '19600.00', '0', '0.00', '0', '46400.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('66', '928258967817762', '9536329322', '53881557', 'F2071B803AD', '0000-00-00', NULL, '2', '7400.00', '6600.00', '14800.00', '0', '0.00', '0', '46400.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('67', '347655381354875', '9536329322', '69785616', '20250303', '0000-00-00', NULL, '2', '1600.00', '1300.00', '3200.00', '0', '0.00', '0', '46400.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('68', '385291727122978', '9536329322', '97943497', 'Viva123', '0000-00-00', NULL, '10', '880.00', '790.00', '8800.00', '0', '0.00', '0', '46400.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('69', '745851779793971', '3612578812', '81711923', 'F20411797BD', '2026-11-21', NULL, '4', '9580.00', '9000.00', '38320.00', '0', '0.00', '0', '196000.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('70', '411368433329882', '3612578812', '81711923', 'F24117907BD', '2026-11-28', NULL, '5', '9580.00', '9000.00', '47900.00', '0', '0.00', '0', '196000.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('71', '393391343944986', '3612578812', '47357983', 'F24441560AAD', '0000-00-00', NULL, '2', '9090.00', '8750.00', '18180.00', '0', '0.00', '0', '196000.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('72', '552929116953142', '3612578812', '29867431', 'F24516508AD', '0000-00-00', NULL, '1', '9090.00', '8750.00', '9090.00', '0', '0.00', '0', '196000.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('73', '174392885913628', '3612578812', '45663429', '20240808', '0000-00-00', NULL, '60', '730.00', '700.00', '43800.00', '0', '0.00', '0', '196000.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('74', '571386748591935', '3612578812', '84762119', '26042023', '0000-00-00', NULL, '81', '410.00', '380.00', '33210.00', '0', '0.00', '0', '196000.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('75', '261117212213325', '3612578812', '92486258', 'ZY24050087', '0000-00-00', NULL, '2', '2750.00', '2660.00', '5500.00', '0', '0.00', '0', '196000.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('76', '849435724233133', '3164929197', '33473235', '250423', '0000-00-00', NULL, '1', '5200.00', '4500.00', '5200.00', '0', '0.00', '0', '5200.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('77', '635681862879318', '6369481177', '48215874', '2102', '0000-00-00', NULL, '2', '750.00', '650.00', '1500.00', '0', '0.00', '0', '1500.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('78', '829751892729798', '6542877568', '32557788', '20250205', '0000-00-00', NULL, '1', '1750.00', '1650.00', '1750.00', '0', '0.00', '0', '6050.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('79', '611348137393646', '6542877568', '22521917', 'A4291', '2027-10-30', NULL, '1', '4300.00', '3500.00', '4300.00', '0', '0.00', '0', '6050.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('80', '286814634236663', '4546727184', '52829584', '2506031301', '0000-00-00', NULL, '1', '1250.00', '1050.00', '1250.00', '0', '0.00', '0', '7550.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('81', '281698976649641', '4546727184', '32557788', '20250205', '0000-00-00', NULL, '1', '1700.00', '1650.00', '1700.00', '0', '0.00', '0', '7550.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('82', '384178578538926', '4546727184', '69785616', '20250303', '0000-00-00', NULL, '1', '1600.00', '1300.00', '1600.00', '0', '0.00', '0', '7550.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('83', '256394354767575', '4546727184', '67466855', 'SE53-051', '0000-00-00', NULL, '1', '700.00', '530.00', '700.00', '0', '0.00', '0', '7550.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('84', '342915177741214', '4546727184', '33454874', 'SESO-046', '2026-12-30', NULL, '1', '700.00', '460.00', '700.00', '0', '0.00', '0', '7550.00', '1', 'INV01');
INSERT INTO `invoice_details` (`id`, `invoice_details_id`, `invoice_id`, `product_id`, `batch_id`, `expiry_date`, `cartoon`, `quantity`, `rate`, `manufacturer_rate`, `total_price`, `discount`, `tax`, `paid_amount`, `due_amount`, `status`, `pinvoice_id`) VALUES ('85', '465218828455743', '4546727184', '91931131', '20250204', '0000-00-00', NULL, '1', '1600.00', '1200.00', '1600.00', '0', '0.00', '0', '7550.00', '1', 'INV01');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) unsigned NOT NULL,
  `phrase` text NOT NULL,
  `english` text,
  `bangla` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('1', 'user_profile', 'User Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('2', 'setting', 'Web Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('3', 'language', 'Language', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('4', 'manage_users', 'Manage Users', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('5', 'add_user', 'Add User', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('6', 'manage_company', 'Manage Company', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('7', 'web_settings', 'Software Settings', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('8', 'manage_accounts', 'Manage Accounts', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('9', 'create_accounts', 'Create Accounts', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('10', 'manage_bank', 'Manage Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('11', 'add_new_bank', 'Add New Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('12', 'settings', 'Settings', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('13', 'closing_report', 'Closing Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('14', 'closing', 'Closing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('15', 'cheque_manager', 'Cheque Manager', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('16', 'accounts_summary', 'Accounts Summary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('17', 'expense', 'Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('18', 'income', 'Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('19', 'accounts', 'Accounts', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('20', 'stock_report', 'Stock Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('21', 'stock', 'Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('22', 'pos_invoice', 'POS Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('23', 'manage_invoice', 'Manage Invoice ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('24', 'new_invoice', 'New Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('25', 'invoice', 'Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('26', 'manage_purchase', 'Manage Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('27', 'add_purchase', 'Add Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('28', 'purchase', 'Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('29', 'paid_customer', 'Paid Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('30', 'manage_customer', 'Manage Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('31', 'add_customer', 'Add Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('32', 'customer', 'Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('33', 'manufacturer_payment_actual', 'Manufacturer Payment Actual', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('34', 'manufacturer_sales_summary', 'Manufacturer  Sales Summary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('35', 'manufacturer_sales_details', 'Manufacturer Sales Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('36', 'manufacturer_ledger', 'Manufacturer Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('37', 'manage_manufacturer', 'Manage Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('38', 'add_manufacturer', 'Add Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('39', 'manufacturer', 'Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('40', 'product_statement', 'Medicine Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('41', 'manage_product', 'Manage Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('42', 'add_product', 'Add Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('43', 'product', 'Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('44', 'manage_category', 'Manage Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('45', 'add_category', 'Add Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('46', 'category', 'Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('47', 'sales_report_product_wise', 'Sales Report (Medicine Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('48', 'purchase_report', 'Purchase Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('49', 'sales_report', 'Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('50', 'todays_report', 'Todays Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('51', 'report', 'Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('52', 'dashboard', 'Dashboard', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('53', 'online', 'Online', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('54', 'logout', 'Logout', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('56', 'total_purchase', 'Total Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('57', 'total_amount', 'Total Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('58', 'manufacturer_name', 'Manufacturer  Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('59', 'invoice_no', 'Invoice No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('60', 'purchase_date', 'Purchase Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('61', 'todays_purchase_report', 'Todays Purchase Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('62', 'total_sales', 'Total Sales', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('63', 'customer_name', 'Customer Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('64', 'sales_date', 'Sales Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('65', 'todays_sales_report', 'Todays Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('66', 'home', 'Home', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('67', 'todays_sales_and_purchase_report', 'Todays sales and purchase report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('68', 'total_ammount', 'Total Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('69', 'rate', 'Unit Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('70', 'product_model', 'Medicine Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('71', 'product_name', 'Medicine Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('72', 'search', 'Search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('73', 'end_date', 'End Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('74', 'start_date', 'Start Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('75', 'total_purchase_report', 'Total Purchase Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('76', 'total_sales_report', 'Total Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('77', 'total_seles', 'Total Sales', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('78', 'all_stock_report', 'All Stock Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('79', 'search_by_product', 'Search By Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('80', 'date', 'Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('81', 'print', 'Print', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('82', 'stock_date', 'Stock Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('83', 'print_date', 'Print Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('84', 'sales', 'Sales', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('85', 'price', 'Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('86', 'sl', 'S.NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('87', 'add_new_category', 'Add new category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('88', 'category_name', 'Category Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('89', 'save', 'Save', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('90', 'delete', 'Delete', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('91', 'update', 'Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('92', 'action', 'Action', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('93', 'manage_your_category', 'Manage your category ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('94', 'category_edit', 'Category Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('95', 'status', 'Status', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('96', 'active', 'Active', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('97', 'inactive', 'Inactive', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('98', 'save_changes', 'Save Changes', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('99', 'save_and_add_another', 'Save And Add Another', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('100', 'model', 'equipment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('101', 'manufacturer_price', 'Manufacturer Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('102', 'sell_price', 'Sell Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('103', 'image', 'Image', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('104', 'select_one', 'Select One', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('105', 'details', 'Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('106', 'new_product', 'New Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('107', 'add_new_product', 'Add new medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('108', 'barcode', 'Barcode', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('109', 'qr_code', 'Qr-Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('110', 'product_details', 'Medicine Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('111', 'manage_your_product', 'Manage your medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('112', 'product_edit', 'Medicine Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('113', 'edit_your_product', 'Edit your medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('114', 'cancel', 'Cancel', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('115', 'incl_vat', 'Incl. Vat', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('116', 'money', 'Dollar', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('117', 'grand_total', 'Grand Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('118', 'quantity', 'QTY.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('119', 'product_report', 'Medicine Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('120', 'product_sales_and_purchase_report', 'Medicine sales and purchase report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('121', 'previous_stock', 'Previous Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('122', 'out', 'Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('123', 'in', 'In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('124', 'to', 'To', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('125', 'previous_balance', 'Previous Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('126', 'customer_address', 'Customer Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('127', 'customer_mobile', 'Customer Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('128', 'customer_email', 'Customer Email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('129', 'add_new_customer', 'Add new customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('130', 'balance', 'Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('131', 'mobile', 'Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('132', 'address', 'Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('133', 'manage_your_customer', 'Manage your customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('134', 'customer_edit', 'Customer Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('135', 'paid_customer_list', 'Paid Customer List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('136', 'ammount', 'Total Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('137', 'customer_ledger', 'Customer Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('138', 'manage_customer_ledger', 'Manage Customer Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('139', 'customer_information', 'Customer Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('140', 'debit_ammount', 'Debit Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('141', 'credit_ammount', 'Credit Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('142', 'balance_ammount', 'Balance Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('143', 'receipt_no', 'Receipt NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('144', 'description', 'Description', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('145', 'debit', 'Debit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('146', 'credit', 'Credit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('147', 'item_information', 'Item Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('148', 'total', 'Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('149', 'please_select_manufacturer', 'Please Select Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('150', 'submit', 'Submit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('151', 'submit_and_add_another', 'Submit And Add Another One', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('152', 'add_new_item', 'Add New Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('153', 'manage_your_purchase', 'Manage your purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('154', 'purchase_edit', 'Purchase Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('155', 'purchase_ledger', 'Purchase Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('156', 'invoice_information', 'Invoice Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('157', 'paid_ammount', 'Paid Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('158', 'discount', 'Discount / Pcs.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('159', 'save_and_paid', 'Save And Paid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('160', 'payee_name', 'Payee Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('161', 'manage_your_invoice', 'Manage your invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('162', 'invoice_edit', 'Invoice Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('163', 'new_pos_invoice', 'New POS invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('164', 'add_new_pos_invoice', 'Add new pos invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('165', 'product_id', 'Medicine ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('166', 'paid_amount', 'Paid Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('167', 'authorised_by', 'Authorised By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('168', 'checked_by', 'Checked By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('169', 'received_by', 'Received By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('170', 'prepared_by', 'Prepared By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('171', 'memo_no', 'Memo No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('172', 'website', 'Website', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('173', 'email', 'Email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('174', 'invoice_details', 'Invoice Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('175', 'reset', 'Reset', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('176', 'payment_account', 'Payment Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('177', 'bank_name', 'Bank Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('178', 'cheque_or_pay_order_no', 'Cheque/Pay Order No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('179', 'payment_type', 'Payment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('180', 'payment_from', 'Payment From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('181', 'payment_date', 'Payment Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('182', 'add_income', 'Add Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('183', 'cash', 'Cash', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('184', 'cheque', 'Cheque', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('185', 'pay_order', 'Pay Order', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('186', 'payment_to', 'Payment To', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('187', 'total_expense_ammount', 'Total Expense Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('188', 'transections', 'Transactions', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('189', 'accounts_name', 'Accounts Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('190', 'outflow_report', 'Expense Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('191', 'inflow_report', 'Income Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('192', 'all', 'All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('193', 'account', 'Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('194', 'from', 'From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('195', 'account_summary_report', 'Account Summary Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('196', 'search_by_date', 'Search By Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('197', 'cheque_no', 'Cheque No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('198', 'name', 'Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('199', 'closing_account', 'Closing Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('200', 'close_your_account', 'Close your account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('201', 'last_day_closing', 'Last Day Closing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('202', 'cash_in', 'Cash In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('203', 'cash_out', 'Cash Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('204', 'cash_in_hand', 'Cash In Hand', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('205', 'add_new_bank', 'Add New Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('206', 'day_closing', 'Day Closing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('207', 'account_closing_report', 'Account Closing Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('208', 'last_day_ammount', 'Last Day Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('209', 'adjustment', 'Adjustment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('210', 'pay_type', 'Pay Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('211', 'customer_or_manufacturer', 'Customer,Manufacturer Or Others', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('212', 'transection_id', 'Transactions ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('213', 'accounts_summary_report', 'Accounts Summary Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('214', 'bank_list', 'Bank List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('215', 'bank_edit', 'Bank Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('216', 'debit_plus', 'Debit (+)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('217', 'credit_minus', 'Credit (-)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('218', 'account_name', 'Account Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('219', 'account_type', 'Account Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('220', 'account_real_name', 'Account Real Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('221', 'manage_account', 'Manage Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('222', 'company_name', 'Company Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('223', 'edit_your_company_information', 'Edit your company information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('224', 'company_edit', 'Company Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('225', 'admin', 'Admin', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('226', 'user', 'User', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('227', 'password', 'Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('228', 'last_name', 'Last Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('229', 'first_name', 'First Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('230', 'add_new_user_information', 'Add new user information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('231', 'user_type', 'User Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('232', 'user_edit', 'User Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('233', 'rtr', 'RTR', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('234', 'ltr', 'LTR', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('235', 'ltr_or_rtr', 'LTR/RTR', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('236', 'footer_text', 'Footer Text', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('237', 'favicon', 'Favicon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('238', 'logo', 'Logo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('239', 'update_setting', 'Update Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('240', 'update_your_web_setting', 'Update your Web setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('241', 'login', 'Login', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('242', 'your_strong_password', 'Your strong password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('243', 'your_unique_email', 'Your unique email', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('244', 'please_enter_your_login_information', 'Please enter your login information.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('245', 'update_profile', 'Update Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('246', 'your_profile', 'Your Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('247', 're_type_password', 'Re-Type Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('248', 'new_password', 'New Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('249', 'old_password', 'Old Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('250', 'new_information', 'New Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('251', 'old_information', 'Old Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('252', 'change_your_information', 'Change your information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('253', 'change_your_profile', 'Change your profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('254', 'profile', 'Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('255', 'wrong_username_or_password', 'Wrong User Name Or Password !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('256', 'successfully_updated', 'Successfully Updated.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('257', 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('258', 'successfully_changed_password', 'Successfully changed password.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('259', 'you_are_not_authorised_person', 'You are not authorised person !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('260', 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('261', 'new_password_at_least_six_character', 'New Password At Least 6 Character.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('262', 'you_put_wrong_email_address', 'You put wrong email address !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('263', 'cheque_ammount_asjusted', 'Cheque amount adjusted.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('264', 'successfully_payment_paid', 'Successfully Payment Paid.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('265', 'successfully_added', 'Successfully Added.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('266', 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('267', 'successfully_payment_received', 'Successfully Payment Received.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('268', 'already_inserted', 'Already Inserted !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('269', 'successfully_delete', 'Successfully Delete.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('270', 'successfully_created', 'Successfully Created.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('271', 'logo_not_uploaded', 'Logo not uploaded !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('272', 'favicon_not_uploaded', 'Favicon not uploaded !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('273', 'manufacturer_mobile', 'Manufacturer  Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('274', 'manufacturer_address', 'Manufacturer  Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('275', 'manufacturer_details', 'Manufacturer Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('276', 'add_new_manufacturer', 'Add New Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('277', 'manage_suppiler', 'Manage Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('278', 'manage_your_manufacturer', 'Manage your Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('279', 'manage_manufacturer_ledger', 'Manage Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('280', 'invoice_id', 'Invoice ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('281', 'deposite_id', 'Deposit ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('282', 'manufacturer_actual_ledger', 'Manufacturer Actual Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('283', 'manufacturer_information', 'Manufacturer Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('284', 'event', 'Event', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('285', 'add_new_income', 'Add New Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('286', 'add_expese', 'Add Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('287', 'add_new_expense', 'Add New Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('288', 'total_income_ammount', 'Total Income Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('289', 'create_new_invoice', 'Create New Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('290', 'create_pos_invoice', 'Create POS Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('291', 'total_profit', 'Total Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('292', 'monthly_progress_report', 'Monthly Progress Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('293', 'total_invoice', 'Total Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('294', 'account_summary', 'Account Summary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('295', 'total_manufacturer', 'Total manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('296', 'total_product', 'Total Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('297', 'total_customer', 'Total Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('298', 'manufacturer_edit', 'Manufacturer Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('299', 'add_new_invoice', 'Add New Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('300', 'add_new_purchase', 'Add new purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('301', 'currency', 'Currency', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('302', 'currency_position', 'Currency Position', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('303', 'left', 'Left', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('304', 'right', 'Right', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('305', 'add_tax', 'Add Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('306', 'manage_tax', 'Manage Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('307', 'add_new_tax', 'Add new tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('308', 'enter_tax', 'Enter Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('309', 'already_exists', 'Already Exists !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('310', 'successfully_inserted', 'Successfully Inserted.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('311', 'tax', 'Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('312', 'tax_edit', 'Tax Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('313', 'product_not_added', 'Medicine not added !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('314', 'total_tax', 'Total Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('315', 'manage_your_manufacturer_details', 'Manage your Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('316', 'invoice_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s                                       standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('317', 'thank_you_for_choosing_us', 'Thank you very much for choosing us.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('318', 'billing_date', 'Billing Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('319', 'billing_to', 'Billing To', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('320', 'billing_from', 'Billing From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('321', 'you_cant_delete_this_product', 'Sorry !!  You can\'t delete this medicine.This medicine already used in calculation system!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('322', 'old_customer', 'Old Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('323', 'new_customer', 'New Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('324', 'new_manufacturer', 'New Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('325', 'old_manufacturer', 'Old Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('326', 'credit_customer', 'Credit Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('327', 'account_already_exists', 'This Account Already Exists !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('328', 'edit_income', 'Edit Income', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('329', 'you_are_not_access_this_part', 'You are not authorised person !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('330', 'account_edit', 'Account Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('331', 'due', 'Due', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('332', 'expense_edit', 'Expense Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('333', 'please_select_customer', 'Please select customer !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('334', 'profit_report', 'Profit Report (Invoice Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('335', 'total_profit_report', 'Total profit report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('336', 'please_enter_valid_captcha', 'Please enter valid captcha.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('337', 'category_not_selected', 'Category not selected.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('338', 'manufacturer_not_selected', 'Manufacturer not selected.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('339', 'please_select_product', 'Please select medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('340', 'product_model_already_exist', 'Medicine model already exist !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('341', 'invoice_logo', 'Invoice Logo', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('342', 'available_quantity', 'Available Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('343', 'you_can_not_buy_greater_than_available_quantity', 'You can not select grater than availale quantity !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('344', 'customer_details', 'Customer details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('345', 'manage_customer_details', 'Manage customer details.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('346', 'box_size', 'Box size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('347', 'exp_date', 'EXP.Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('348', 'product_location', 'Medicine  Shelf', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('349', 'generic_name', 'Generic name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('350', 'payment_method', 'Payment Method', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('351', 'card_no', 'Card no', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('352', 'medicine', 'Lab equipment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('353', 'medicine_search', 'equipment Search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('354', 'what_you_search', 'Enter what you search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('355', 'company', 'Company', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('356', 'customer_search', 'Customer search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('357', 'invoice_search', 'Invoice search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('358', 'purchase_search', 'Purchase search', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('359', 'daily_closing_report', 'Daily closing report.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('360', 'closing_search_report', 'Closing Search Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('361', 'category_list', 'Category List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('362', 'company_list', 'Company List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('363', 'customers_list', 'Customer List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('364', 'credit_customer_list', 'Credit Customer List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('365', 'previous_balance_adjustment', 'Previous Balance Adjustment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('366', 'invoice_list', 'Invoice List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('367', 'add_pos_invoice', 'Add POS Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('368', 'add_invoice', 'Add Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('369', 'product_list', 'Medicine List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('370', 'purchases_list', 'Purchase List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('371', 'purchase_list', 'Purchase List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('372', 'stock_list', 'Stock List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('373', 'all_report', 'All Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('374', 'daily_sales_report', 'Daily sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('375', 'product_wise_sales_report', 'Medicine Wise Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('376', 'bank_update', 'Bank Update', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('377', 'account_list', 'Account List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('378', 'manufacturer_list', 'Manufacturer  List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('379', 'manufacturer_search_item', 'Manufacturer  Search Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('380', 'user_list', 'User List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('381', 'user_search_item', 'User Search Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('382', 'change_password', 'Change Password', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('383', 'admin_login_area', 'Admin Login Area', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('384', 'accounts_inflow_form', 'Account Inflow Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('385', 'accounts_outflow_form', 'Accounts Outflow Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('386', 'accounts_tax_form', 'Accounts Tax Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('387', 'accounts_manage_tax', 'Accounts Manage Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('388', 'accounts_tax_edit', 'Accounts Tax Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('389', 'accounts_summary_data', 'Accounts Summary Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('390', 'accounts_details_data', 'Accounts Details Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('391', 'datewise_summary_data', 'Datewise Summary Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('392', 'accounts_cheque_manager', 'Account Cheque Manager', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('393', 'accounts_edit_data', 'Accounts Edit Data', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('394', 'print_barcode', 'Print Barcode', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('395', 'print_qrcode', 'Print Qrcode', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('396', 'add_new_account', 'Add New Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('397', 'table_edit', 'Table Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('398', 'secret_key', 'Secret Key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('399', 'site_key', 'Site Key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('400', 'captcha', 'Captcha', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('401', 'please_add_walking_customer_for_default_customer', 'Please add walking customer for default customer. ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('402', 'barcode_qrcode_scan_here', 'Barcode Or QRcode scan here', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('403', 'manage_your_credit_customer', 'Manage your credit customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('404', 'unit', 'Unit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('405', 'total_discount', 'Total Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('406', 'meter_m', 'Meter (M)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('407', 'piece_pc', 'Piece (Pc)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('408', 'kilogram_kg', 'Kilogram (Kg)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('409', 'import_product_csv', 'Import Medicine (CSV)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('410', 'close', 'Close', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('411', 'csv_file_informaion', 'File Information (CSV)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('412', 'download_example_file', 'Download Example File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('413', 'upload_csv_file', 'Upload CSV File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('414', 'manufacturer_id', 'Manufacturer ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('415', 'category_id', 'Category ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('416', 'are_you_sure_to_delete', 'Are you sure,want to delete ?', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('417', 'stock_report_manufacturer_wise', 'Stock Report (Manufacturer Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('418', 'stock_report_product_wise', 'Stock Report (Medicine Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('419', 'select_manufacturer', 'Select Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('420', 'select_product', 'Select Medicine ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('421', 'phone', 'Phone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('422', 'in_quantity', 'In Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('423', 'out_quantity', 'Sold QTY', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('424', 'in_taka', 'In Taka', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('425', 'out_taka', 'Out Taka', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('426', 'data_synchronizer', 'Data Synchronizer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('427', 'synchronize', 'Synchronize', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('428', 'backup_restore', 'Backup And Restore', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('429', 'synchronizer_setting', 'Synchronizer Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('430', 'backup_and_restore', 'Backup And Restore', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('431', 'hostname', 'Host Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('432', 'username', 'User Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('433', 'ftp_port', 'FTP Port', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('434', 'ftp_debug', 'FTP Debug', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('435', 'project_root', 'Project Root', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('436', 'internet_connection', 'Internet connection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('437', 'ok', 'Ok', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('438', 'not_available', 'Not available', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('439', 'outgoing_file', 'Outgoing File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('440', 'available', 'Available', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('441', 'incoming_file', 'Incoming file', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('442', 'data_upload_to_server', 'Data upload to server', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('443', 'download_data_from_server', 'Download data from server', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('444', 'data_import_to_database', 'Data import to database', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('445', 'please_wait', 'Please Wait', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('446', 'ooops_something_went_wrong', 'Ooops something went wrong', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('447', 'file_information', 'File Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('448', 'size', 'Size', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('449', 'backup_date', 'Backup date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('450', 'backup_now', 'Backup Now', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('451', 'are_you_sure', 'Are you sure ?', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('452', 'download', 'Downlaod', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('453', 'database_backup', 'Database Backup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('454', 'backup_successfully', 'Backup Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('455', 'please_try_again', 'Please Try Again', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('456', 'restore_successfully', 'Restore successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('457', 'download_successfully', 'Download Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('458', 'delete_successfully', 'Delete Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('459', 'ftp_setting', 'FTP Setting', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('460', 'save_successfully', 'Save successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('461', 'upload_successfully', 'Upload successfully.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('462', 'unable_to_upload_file_please_check_configuration', 'unable to upload file please check configuration.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('463', 'please_configure_synchronizer_settings', 'Please Configure Synchronizer Settings ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('464', 'unable_to_download_file_please_check_configuration', 'Unable To Download File,Please Check Configuration.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('465', 'data_import_first', 'Data Import First', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('466', 'data_import_successfully', 'Data Import Successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('467', 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('468', 'restore_now', 'Restore Now', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('469', 'out_of_stock', 'Out Of Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('470', 'others', 'Others', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('471', 'shelf', 'Shelf', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('472', 'discount_type', 'Discount Type ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('473', 'discount_percentage', 'Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('474', 'fixed_dis', 'Fixed Dis', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('475', 'full_paid', 'Full Paid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('476', 'available_qnty', 'Ava.Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('477', 'stock_ctn', 'Stock/Qnt', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('478', 'sale_price', 'Sale Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('479', 'manufacturer_rate', 'Manufacturer  Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('480', 'please_upload_image_type', 'Sorry!!! Please Upload jpg,jpeg,png,gif typeimage', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('481', 'ml', 'Milli liter(ml)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('482', 'mg', 'Milli Gram(mg)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('483', 'you_can_not_buy_greater_than_available_qnty', 'You can not sale more than available quantity ! please purchase this Product', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('484', 'due_amount', 'Due Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('485', 'return_invoice', 'Return Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('486', 'sold_qty', 'Sold Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('487', 'ret_quantity', 'Return QTY', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('488', 'deduction', 'Deduction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('489', 'return', 'Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('490', 'note', 'Return Reasone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('491', 'usablilties', 'Return Usability', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('492', 'adjs_with_stck', 'Adjust With Stock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('493', 'return_to_manufacturer', 'Return To Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('494', 'wastage', 'Wastage', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('495', 'to_deduction', 'Total Deduction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('496', 'nt_return', 'Net Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('497', 'return_id', 'Return Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('498', 'return_details', 'Return Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('499', 'add_return', 'Add Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('500', 'return_list', 'Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('501', 'stock_return_list', 'Stock Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('502', 'wastage_return_list', 'Wastage Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('503', 'check_return', 'Check Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('504', 'quantity_must_be_fillup', 'Return Quantity Must be Fill Up', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('505', 'expeire_date', 'Expiry  date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('506', 'batch_id', 'Batch ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('507', 'manufacturer_return_list', 'Manufacturer  Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('508', 'c_r_slist', 'Customer Return List ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('509', 'manufacturer_return', 'Manufacturer  Return List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('510', 'wastage_list', 'Wastage List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('511', 'in_qnty', 'In Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('512', 'out_qnty', 'Sold QTY', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('513', 'stock_sale', 'Stock Sell Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('514', 'add_product_csv', 'Import Medicine (CSV)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('515', 'purchase_id', 'Purchase ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('516', 'add_payment', 'Add Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('517', 'add_new_payment', 'Add new Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('518', 'transaction', 'Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('519', 'manage_transaction', 'Manage Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('520', 'choose_transaction', 'Choose Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('521', 'receipt', 'Receipt', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('522', 'payment', 'Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('523', 'transaction_categry', 'Transaction Category', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('524', 'transaction_mood', 'Transaction Mood', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('525', 'payment_amount', 'Payment Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('526', 'receipt_amount', 'Receipt Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('527', 'daily_summary', 'Daily Summary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('528', 'daily_cash_flow', 'Daily  Cashflow', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('529', 'custom_report', 'Custom Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('530', 'root_account', 'Root Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('531', 'office', 'Office', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('532', 'loan', 'Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('533', 'successfully_saved', 'Successfully Saved', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('534', 'bank', 'Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('535', 'bank_transaction', 'Bank Transaction', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('536', 'office_loan', 'Office Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('537', 'add_person', 'Add Person', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('538', 'manage_loan', 'Manage Person', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('539', 'add_loan', 'Add Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('540', 'ac_name', 'Account Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('541', 'ac_no', 'Account No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('542', 'branch', 'Branch', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('543', 'signature_pic', 'Signature ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('544', 'withdraw_deposite_id', 'Withdraw Deposit ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('545', 'select_report', 'Select Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('546', 'per_qty', 'Purchase Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('547', 'stock_report_batch_wise', 'Stock Report(Batch Wise)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('548', 'box', 'Box', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('549', 'gram', 'Gram', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('550', 'profit_report_manufacturer_wise', 'Profit/Loss Report(Manufacturer)', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('551', 'calculate', 'Calculate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('552', 'profit_report_product_wise', 'Profit/Loss  Report Product Wise', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('553', 'view_report', 'View Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('554', 'report_for', 'Report For', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('555', 'total_sale_qty', 'Total Sale QTY', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('556', 'total_purchase_pric', 'Total purchase Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('557', 'total_sale', 'Total Sale', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('558', 'net_profit', 'Net Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('559', 'loss', 'Loss', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('560', 'product_type', 'Medicine Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('561', 'add_type', 'Add Medicine Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('562', 'add_new_type', 'Add New Medicine  Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('563', 'type', 'Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('564', 'type_name', 'Type Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('565', 'manage_type', 'Manage Medicine Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('566', 'type_id', 'Type Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('567', 'type_edit', 'Edit Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('568', 'profitloss', 'profit/Loss', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('569', 'manufacturer_wise', 'Manufacturer Wise', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('570', 'product_wise', 'Medicine Wise', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('571', 'medicine_info', 'lab equipment Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('572', 'choose_another_invno', 'Choose Another Invoice No !!', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('573', 'return_manufacturers', 'Return Manufacturers', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('574', 'return_manufacturer', 'Return Manufacturers', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('575', 'please_input_correct_invoice_no', 'Please Input Correct Invoice No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('576', 'stock_purchase_price', 'Stock Purchase Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('577', 'manufacturer_returns', 'Manufacturer  Return ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('578', 'invoice_discount', 'Invoice Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('579', 'qty', 'Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('580', 'discounts', 'Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('581', 'sub_total', 'Sub Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('582', 'paid', 'Paid', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('583', 'change', 'Change', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('584', 'purchase_price', 'Purchase Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('585', 'expiry', 'Expiry', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('586', 'batch', 'Batch', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('587', 'role_permission', 'Role Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('588', 'user_assign_role', 'Assign  User Role', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('589', 'permission', 'Permission', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('590', 'personal_loan', 'Personal Loan', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('591', 'role_name', 'Role Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('592', 'create', 'Create', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('593', 'read', 'Read', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('594', 'add_role', 'Add Role', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('595', 'You do not have permission to access. Please contact with administrator.', 'You do not have permission to access. Please contact with administrator.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('596', 'role_permission_added_successfully', 'Role Permission Added successfully.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('597', 'role_list', 'Role List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('598', 'role_permission_updated_successfully', 'Role Permission Updated Successfully.', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('599', 'add_phrase', 'Add Phrase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('600', 'language_home', 'Language Home', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('601', 'phrase_edit', 'Phrase Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('602', 'no_role_selected', 'No Role Selected', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('603', 'category_added_successfully', 'Category added successfully', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('604', 'category_already_exist', 'Category already exist', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('605', 'select_manufacturer', 'Select Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('607', 'select_tax', 'Select Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('608', 'must_input_numbers', 'Must input numbers', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('609', 'please_check_your_price', 'Please Check Your Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('610', 'your_profit_is', 'Your Profit is', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('611', 'failed', 'Failed', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('612', 'you_have_reached_the_limit_of_adding', 'You have reached the limit of adding', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('613', 'inputs', 'inputs', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('614', 'expiry_date_should_be_greater_than_puchase_date', 'Expiry Date should be greater than Puchase Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('615', 'expiry_date_should_be_greater_than_puchase_date', 'Expiry Date should be greater than Puchase Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('616', 'product_name', 'Medicine Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('617', 'total_quantity', 'Total Quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('618', 'rates', 'Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('619', 'total_amount', 'Total Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('621', 'receipt_detail', 'Receipt Detail', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('622', 'amount', 'Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('623', 'save_and_add_another_one', 'Save and add another one', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('624', 'checque_number', 'Checque Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('625', 'edit_receipt', 'Edit Receipt', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('626', 'receipt_list', 'Receipt List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('627', 'search_by_customer_name', 'Search By Customer Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('628', 'actions', 'Actions', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('629', 'no_data_found', 'No Data Found', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('630', 'edit', 'Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('631', 'product_not_found', 'Medicine  not found', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('632', 'request_failed_please_check_your_code_and_try_again', 'Request Failed, Please check your code and try again', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('633', 'You_can_not_return_more_than_sold_quantity', 'You Can Not Return More than Sold quantity', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('634', 'you_can_not_return_less_than_1', 'You Can Not Return Less than 1', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('635', 'transection_details', 'Transection Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('636', 'transection_details_datewise', 'Transection  Details Datewise', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('637', 'transection_id', 'Transactions ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('638', 'select_option', 'Select Option', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('639', 'loan_list', 'Loan List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('640', 'todays_details', 'Todays Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('641', 'transaction_details', 'Transaction Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('642', 'person_id', 'Person ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('643', 'total_transection', 'Total Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('644', 'transaction_id', 'Transaction ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('645', 'transection_report', 'Transection Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('646', 'add_transection', 'Add Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('647', 'manage_transection', 'Manage Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('648', 'select_id', 'Select ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('649', 'choose_transection', 'Choose Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('650', 'update_transection', 'Update Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('651', 'manufacturer_all', 'Manufacturer All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('652', 'select_all', 'Select All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('653', 'all', 'All', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('654', 'max_rate', 'Max Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('655', 'min_rate', 'Min Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('656', 'average_rate', 'Average Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('657', 'date_expired_please_choose_another.', 'Date Expired!! Please Choose another', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('658', 'your_medicine_is_date_expiry_Please_choose_another', 'Your Medicine is Date Expiry !! Please Choose another', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('659', 'meno', 'MEMO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('660', 'out_of_stock_and_date_expired_medicine', 'Out of Stock and Date Expired Medicine', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('661', 'edit_profile', 'Edit Profile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('662', 'deposit_detail', 'Deposit detail', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('663', 'new_deposit', 'New Deposit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('664', 'edit_deposit', 'Edit Deposit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('665', 'select_customer', 'Select Customer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('666', 'draw', 'Draw', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('667', 'deposit', 'Deposit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('668', 'select_type', 'Select Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('669', 'transaction_type', 'Transaction Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('670', 'cash', 'Cash', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('671', 'select_bank', 'Select Bank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('672', 'drawing', 'Drawing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('673', 'expenses', 'Expenses', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('674', 'banking', 'Banking', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('675', 'daily_closing', 'Daily Closing', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('676', 'title', 'Title', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('677', 'error_get_data_from_ajax', 'Error get data from ajax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('678', 'toggle_navigation', 'Toggle Navigation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('679', 'this_product_not_found', 'This Medicine  Not Found !', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('680', 'search_by_date_from', 'Search By Date: From', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('681', 'manufacturer_sales_report', 'Manufacturer Sales Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('682', 'transection', 'Transection', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('683', 'transection_mood', 'Transection Mood', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('684', 'transection_categry', 'Transection Categry', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('685', 'export_csv', 'Export CSV', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('686', 'select manufacturer', 'Select Manufacturer', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('687', 'customer_return', 'Customer Return', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('688', 'return_form', 'Return Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('689', 'data_not_found', 'Data Not Found', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('690', 'export_csv', 'Export CSV', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('691', 'manage_person', 'Manage Person', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('692', 'backup', 'Back Up', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('693', 'total_balance', 'Total Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('694', 'product_id_model_manufacturer_id_can_not_null', 'Medicine Id & Medicine Type & Manufacturer Id Can not be Blank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('695', 'product_name_can_not_be_null', 'Medicine  Name can Not be Blank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('696', 'product_model_can_not_be_null', 'Medicine  Model Can Not be Blank', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('697', 'sms', 'SMS', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('698', 'sms_configure', 'Sms Configuration', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('699', 'url', 'Url', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('700', 'sender_id', 'Sender ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('701', 'api_key', 'Api Key', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('702', 'barcode_or_qrcode', 'Barcode Or QRcode ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('703', 'currency_name', 'Currency Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('704', 'add_currency', 'Add Currency', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('705', 'currency_icon', 'Currency Icon', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('706', 'currency_list', 'Currency List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('707', 'import', 'Import', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('708', 'c_o_a', 'Chart Of Account', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('709', 'supplier_payment', 'Supplier Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('710', 'customer_receive', 'Customer Receive', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('711', 'debit_voucher', 'Debit Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('712', 'credit_voucher', 'Credit voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('713', 'voucher_approval', 'Voucher Approval', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('714', 'contra_voucher', 'Contra Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('715', 'journal_voucher', 'Journal Voucher', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('716', 'voucher_report', 'Voucher Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('717', 'cash_book', 'Cash Book', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('718', 'inventory_ledger', 'Inventory Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('719', 'bank_book', 'Bank Book', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('720', 'general_ledger', 'General Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('721', 'trial_balance', 'Trial Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('722', 'profit_loss_report', 'Profit Loss Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('723', 'cash_flow', 'Cash Flow', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('724', 'coa_print', 'COA Print', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('725', 'manufacturer_payment', 'Manufacturer Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('726', 'add_more', 'Add More', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('727', 'code', 'Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('728', 'remark', 'Transaction Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('729', 'voucher_no', 'Voucher NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('730', 'accounts_tree_view', 'Accounts Tree view', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('731', 'find', 'Find', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('732', 'voucher_type', 'Voucher Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('733', 'particulars', 'Particulars', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('734', 'cash_flow_statement', 'Cash Flow Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('735', 'amount_in_dollar', 'Amount In Dollar', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('736', 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('737', 'with_details', 'With Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('738', 'transaction_head', 'Transaction Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('739', 'gl_head', 'General Ledger Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('740', 'no_report', 'No Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('741', 'pre_balance', 'Pre Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('742', 'current_balance', 'Current Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('743', 'from_date', 'From Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('744', 'to_date', 'To Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('745', 'profit_loss', 'Profit Loss Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('746', 'add_expense_item', 'Add Expense Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('747', 'manage_expense_item', 'Manage Expense Item', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('748', 'add_expense', 'Add Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('749', 'manage_expense', 'Manage Expense', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('750', 'expense_statement', 'Expense Statement', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('751', 'expense_type', 'Expense Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('752', 'expense_item_name', 'Expense Item Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('753', 'opening_balance', 'Opening Balance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('754', 'tax_settings', 'Tax Settings', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('755', 'add_incometax', 'Add Income Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('756', 'manage_income_tax', 'Manage Income tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('757', 'tax_report', 'Tax Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('758', 'invoice_wise_tax_report', 'Invoice Wise Tax Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('759', 'number_of_tax', 'Number of Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('760', 'default_value', 'Default Value', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('761', 'reg_no', 'Registration No', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('762', 'tax_name', 'Tax Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('763', 'service_id', 'Service Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('764', 'service', 'Service', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('765', 'add_service', 'Add Service', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('766', 'manage_service', 'Manage Service', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('767', 'service_invoice', 'Service Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('768', 'manage_service_invoice', 'Manage Service Invoice', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('769', 'service_name', 'Service Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('770', 'charge', 'Charge', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('771', 'add', 'Add', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('772', 'previous', 'Previous', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('773', 'net_total', 'Net Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('774', 'hanging_over', 'Estimated Time Of Departure', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('775', 'service_discount', 'Service Discount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('776', 'hrm', 'HRM', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('777', 'add_designation', 'Add Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('778', 'manage_designation', 'Manage Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('779', 'add_employee', 'Add Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('780', 'manage_employee', 'Manage Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('781', 'attendance', 'Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('782', 'add_attendance', 'Add Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('783', 'manage_attendance', 'Manage Attendance', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('784', 'attendance_report', 'Attendance Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('785', 'payroll', 'Payroll', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('786', 'add_benefits', 'Add Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('787', 'manage_benefits', 'Manage Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('788', 'add_salary_setup', 'Add Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('789', 'manage_salary_setup', 'Manage Salary Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('790', 'salary_generate', 'Salary Generate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('791', 'manage_salary_generate', 'Manage Salary Generate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('792', 'salary_payment', 'Salary Payment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('793', 'designation', 'Designation', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('794', 'rate_type', 'Rate Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('795', 'hour_rate_or_salary', 'Hourly Rate/Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('796', 'blood_group', 'Blood Group', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('797', 'address_line_1', 'Address Line 1', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('798', 'address_line_2', 'Address Line 2', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('799', 'picture', 'Picture', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('800', 'country', 'Country', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('801', 'city', 'City', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('802', 'zip', 'Zip code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('803', 'single_checkin', 'Single Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('804', 'bulk_checkin', 'Bulk Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('805', 'checkin', 'Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('806', 'employee_name', 'Employee Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('807', 'check_in', 'Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('808', 'checkout', 'Check Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('809', 'confirm_clock', 'Confirm Clock', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('810', 'stay', 'Stay', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('811', 'download_sample_file', 'Download Sample File', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('812', 'employee', 'Employee', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('813', 'sign_in', 'Check In', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('814', 'sign_out', 'Check  Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('815', 'staytime', 'Stay Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('816', 'benefits_list', 'Benefit List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('817', 'benefits', 'Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('818', 'benefit_type', 'Benefit Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('819', 'salary_benefits', 'Salary Benefits', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('820', 'salary_benefits_type', 'Salary Benefits Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('821', 'hourly', 'Hourly', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('822', 'salary', 'Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('823', 'timezone', 'Time Zone', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('824', 'request', 'Request', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('825', 'datewise_report', 'Date Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('826', 'work_hour', 'Work Hours', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('827', 'employee_wise_report', 'Employee Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('828', 'date_in_time_report', 'In Time Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('829', 'successfully_checkout', 'Successfully Checked Out', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('830', 'setup_tax', 'Setup Tax', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('831', 'start_amount', 'Start Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('832', 'end_amount', 'End Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('833', 'tax_rate', 'Tax Rate', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('834', 'setup', 'Setup', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('835', 'income_tax_updateform', 'Income Tax Update Form', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('836', 'salary_type', 'Salary Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('837', 'addition', 'Addition', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('838', 'gross_salary', 'Gross Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('839', 'set', 'Set', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('840', 'salary_month', 'Salary Month', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('841', 'generate', 'Generate ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('842', 'total_salary', 'Total Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('843', 'total_working_minutes', 'Total Working Hours', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('844', 'working_period', 'Total Working Days', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('845', 'paid_by', 'Paid By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('846', 'pay_now', 'Pay Now ?', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('847', 'confirm', 'Confirm', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('848', 'generate_by', 'Generate By', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('849', 'gui_pos', 'GUI POS', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('850', 'add_fixed_assets', 'Add Fixed Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('851', 'fixed_assets_list', 'Fixed Asset List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('852', 'fixed_assets_purchase', 'Purchase Fixed Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('853', 'fixed_assets_purchase_manage', 'Fixed Assets Purchase List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('854', 'fixed_assets', 'Fixed Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('855', 'item_code', 'Item code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('856', 'item_name', 'Item Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('857', 'opening_assets', 'Assets Qty', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('858', 'edit_fixed_asset', 'Edit Fixed Assets', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('859', 'save_change', 'Save Change', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('860', 'in_word', 'In Word', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('861', 'purchase_pad_print', 'Purchase Pad Print', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('862', 'fixed_assets_purchase_details', 'Fixed Assets Purchase Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('863', 'manage_language', 'Manage Language', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('864', 'person_edit', 'Person Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('865', 'person_ledger', 'Person Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('866', 'medicine_name', 'equipment Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('867', 'unit_list', 'Unit List', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('868', 'add_unit', 'Add Unit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('869', 'edit_unit', 'Edit Unit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('870', 'unit_name', 'Unit Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('871', 'unit_not_selected', 'Unit did not Selected', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('872', 'supplier', 'Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('873', 'add_supplier', 'Add Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('874', 'manage_supplier', 'Manage Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('875', 'supplier_ledger', 'Supplier Ledger', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('876', 'supplier_sales_details', 'Supplier Sales Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('877', 'purchase_detail', 'Purchase details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('878', 'purchase_information', 'Purchase Information', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('879', 'account_head', 'Account Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('880', 'transaction_date', 'Transaction Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('881', 'approved', 'Approve', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('882', 'date_wise_report', 'Date Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('883', 'time_wise_report', 'Time Wise Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('884', 'report_date', 'Report Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('885', 's_time', 'Start Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('886', 'e_time', 'End Time', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('887', 'basic', 'Basic', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('888', 'supplier_name', 'Supplier Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('889', 'supplier_mobile', 'Supplier Mobile', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('890', 'supplier_address', 'Supplier Address', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('891', 'supplier_details', 'Supplier Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('892', 'select_supplier', 'Select Supplier', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('893', 'accounts_report', 'Accounts Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('894', 'account_code', 'Account Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('895', 'human_resource_management', 'Human Resource ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('896', 'menu_name', 'Menu Name', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('897', 'head_of_account', 'Account Head', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('898', 'successfully_approved', 'Successfully Approved', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('899', 'supplier_edit', 'Supplier Edit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('900', 'supplier_id', 'Supplier ID', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('901', 'strength', 'Strength', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('902', 'out_of_date', 'Out Of Date', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('903', 'dis', 'Dis', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('904', 'date_expired_please_choose_another', 'Date Expire Please Choose another', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('905', 'expired', 'Expired', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('906', 'cash_adjustment', 'Cash Adjustment', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('907', 'adjustment_type', 'Adjustment Type', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('908', 'item_code', 'Item Code', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('909', 'batch_number', 'Batch NO', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('910', 'uom', 'UOM', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('911', 'vat', 'VAT', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('912', 'tin', 'Tin Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('913', 'vatt', 'Vat Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('914', 'ho', 'House Number', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('915', 'grand_selling', 'Total Grand Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('916', 'total_purchase_price', 'Total Purchase Price', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('917', 'grand_profit', 'Grand Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('918', 'profit_selling', 'Total Paid Amount', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('919', 'paid_profit', 'Paid Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('920', 'manufacturer_total', 'Manufacturer Total', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('921', 'total_paid_salary', 'Total Paid Salary', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('922', 'net_grand_and_paid_profit', 'Net Grand and Paid Profit', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('923', 'inv_id', 'INV Id', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('924', 'inv_due', 'Invoice Due', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('925', 'detail_pur', 'Detail Purchase', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('926', 'expense_report', 'Expense Report', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('927', 'expense_detail', 'Expense Details', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `bangla`) VALUES ('928', 'grand_paid_profit', 'Grand/Paid Profit', NULL);


#
# TABLE STRUCTURE FOR: manufacturer_information
#

DROP TABLE IF EXISTS `manufacturer_information`;

CREATE TABLE `manufacturer_information` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `manufacturer_information` (`manufacturer_id`, `manufacturer_name`, `address`, `mobile`, `details`, `status`) VALUES ('5', 'IMPORT PLC', 'Addis', '0992454555', '', '1');


#
# TABLE STRUCTURE FOR: manufacturer_ledger
#

DROP TABLE IF EXISTS `manufacturer_ledger`;

CREATE TABLE `manufacturer_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `d_c` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `receipt_no` (`deposit_no`),
  KEY `receipt_no_2` (`deposit_no`),
  KEY `receipt_no_3` (`deposit_no`),
  KEY `receipt_no_4` (`deposit_no`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('27', '20250826160458', '5', '06', NULL, '417735.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('26', '20250826160458', '5', '06', NULL, '417735.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('25', '20250826154621', '5', '05', NULL, '76420.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('24', '20250826154621', '5', '05', NULL, '76420.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('23', '20250826135806', '5', '04', NULL, '133230.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('22', '20250826135806', '5', '04', NULL, '133230.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('16', '20250826124104', '5', '01', NULL, '203010.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('17', '20250826124104', '5', '01', NULL, '203010.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('18', '20250826131347', '5', '02', NULL, '252740.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('19', '20250826131347', '5', '02', NULL, '252740.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('20', '20250826133705', '5', '03', NULL, '74480.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('21', '20250826133705', '5', '03', NULL, '74480.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('28', '20250826110520', '5', '07', NULL, '72730.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('29', '20250826110520', '5', '07', NULL, '72730.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('30', '20250826110814', '5', '08', NULL, '250.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('31', '20250826110814', '5', '08', NULL, '250.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('32', '20250826114242', '5', '09', NULL, '145440.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('33', '20250826114242', '5', '09', NULL, '145440.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('34', '20250826121551', '5', '010', NULL, '245050.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('35', '20250826121551', '5', '010', NULL, '245050.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('36', '20250826121924', '5', '011', NULL, '3500.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('37', '20250826121924', '5', '011', NULL, '3500.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('38', '20250826140147', '5', '012', NULL, '239438.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('39', '20250826140147', '5', '012', NULL, '239438.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('40', '20250826141318', '5', '0013', NULL, '49650.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('41', '20250826141318', '5', '0013', NULL, '49650.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('42', '20250826153037', '5', 'A-0014', NULL, '223660.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('43', '20250826153037', '5', 'A-0014', NULL, '223660.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('44', '20250826155100', '5', 'A- 0015', NULL, '203674.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('45', '20250826155100', '5', 'A- 0015', NULL, '203674.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('46', '20250826155516', '5', 'A-0015', NULL, '1350.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('47', '20250826155516', '5', 'A-0015', NULL, '1350.00', 'Purchase From Manufacturer. ', '', '', '2025-08-26', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('48', '20250909161707', '5', 'A-0016', NULL, '1409.00', 'Purchase From Manufacturer. ', '', '', '2025-09-09', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('49', '20250909161707', '5', 'A-0016', NULL, '1409.00', 'Purchase From Manufacturer. ', '', '', '2025-09-09', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('50', '20250909163905', '5', 'A-0018', NULL, '1080.00', 'Purchase From Manufacturer. ', '', '', '2025-09-09', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('51', '20250909163905', '5', 'A-0018', NULL, '1080.00', 'Purchase From Manufacturer. ', '', '', '2025-09-09', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('52', '20250909165619', '5', 'C1/2025/01671', NULL, '9480.00', 'Purchase From Manufacturer. ', '', '', '2025-09-09', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('53', '20250909165619', '5', 'C1/2025/01671', NULL, '9480.00', 'Purchase From Manufacturer. ', '', '', '2025-09-09', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('54', '20250915182913', '5', 'B-001', NULL, '1600.00', 'Purchase From Manufacturer. ', '', '', '2025-09-15', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('55', '20250915182913', '5', 'B-001', NULL, '1600.00', 'Purchase From Manufacturer. ', '', '', '2025-09-15', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('56', '20250915183738', '5', 'B-003', NULL, '3000.00', 'Purchase From Manufacturer. ', '', '', '2025-09-15', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('57', '20250915183738', '5', 'B-003', NULL, '3000.00', 'Purchase From Manufacturer. ', '', '', '2025-09-15', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('58', '20250916014800', '5', 'B-005', NULL, '77420.00', 'Purchase From Manufacturer. ', '', '', '2025-09-16', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('59', '20250916014800', '5', 'B-005', NULL, '77420.00', 'Purchase From Manufacturer. ', '', '', '2025-09-16', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('60', '20250916020203', '5', 'B-006', NULL, '70680.00', 'Purchase From Manufacturer. ', '', '', '2025-09-16', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('61', '20250916020203', '5', 'B-006', NULL, '70680.00', 'Purchase From Manufacturer. ', '', '', '2025-09-16', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('62', '20250916044851', '5', 'B-007', NULL, '75000.00', 'Purchase From Manufacturer. ', '', '', '2025-09-16', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('63', '20250916044851', '5', 'B-007', NULL, '75000.00', 'Purchase From Manufacturer. ', '', '', '2025-09-16', '1', 'd');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('64', '20250916085336', '5', 'B-008', NULL, '6100.00', 'Purchase From Manufacturer. ', '', '', '2025-09-16', '1', 'c');
INSERT INTO `manufacturer_ledger` (`id`, `transaction_id`, `manufacturer_id`, `chalan_no`, `deposit_no`, `amount`, `description`, `payment_type`, `cheque_no`, `date`, `status`, `d_c`) VALUES ('65', '20250916085336', '5', 'B-008', NULL, '6100.00', 'Purchase From Manufacturer. ', '', '', '2025-09-16', '1', 'd');


#
# TABLE STRUCTURE FOR: module
#

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('1', 'Invoice', '', '', 'invoice', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('2', 'Customer', '', '', 'customer', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('3', 'Medicine', '', '', 'medicine', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('4', 'Manufacturer', '', '', 'manufacturer', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('5', 'Purchase', '', '', 'purchase', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('6', 'Stock', '', '', 'stock', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('7', 'Return', '', '', 'return', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('8', 'Report', '', '', 'report', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('9', 'Accounts', '', '', 'accounts', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('10', 'Bank', '', '', 'bank', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('11', 'Tax', '', '', 'tax', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('12', 'Human Resource', '', '', 'human_resource_info', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('13', 'Supplier', '', '', 'supplier', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('14', 'Service', '', '', 'service', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('15', 'Search', '', '', 'search', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('16', 'Settings', '', '', 'settings', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('17', 'Expense Report', 'expense_report', '', 'expense_report', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('18', 'Grand/Paid Profit', 'grand_paid_profit', '', 'grand_paid_profit', '1');


#
# TABLE STRUCTURE FOR: payroll_tax_setup
#

DROP TABLE IF EXISTS `payroll_tax_setup`;

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `end_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `status` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`tax_setup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: person_information
#

DROP TABLE IF EXISTS `person_information`;

CREATE TABLE `person_information` (
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: person_ledger
#

DROP TABLE IF EXISTS `person_ledger`;

CREATE TABLE `person_ledger` (
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: personal_loan
#

DROP TABLE IF EXISTS `personal_loan`;

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` varchar(20) NOT NULL,
  `credit` float NOT NULL,
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  PRIMARY KEY (`per_loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: pesonal_loan_information
#

DROP TABLE IF EXISTS `pesonal_loan_information`;

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: product_category
#

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('1', 'RDT', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('2', 'Lab Equipment\'s ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('3', 'Chemistry Reagent ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('4', 'Medication ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('5', 'CBC Diluent ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('6', 'Finecare Reagent ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('7', 'Centrifuge Machine ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('8', 'Maglumi Reagent ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('9', 'Lyse ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('10', 'Probe Cleanser ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('11', 'Tubes', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('12', 'Glucose Strip', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('13', 'Glove ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('14', 'Plaster ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('15', 'Microscope ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('16', 'Serology Test ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('17', 'Lancet ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('18', 'Surgical blood ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('19', 'Slides ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('20', 'IV Set', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('21', 'IV Cannula ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('22', 'Wooden Stick ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('23', 'Chemicals', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('24', 'Instrument ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('25', 'Tips', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('26', 'Ultrasound Jell', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('27', 'Cotton ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('28', 'Safety Box', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('29', 'Cut Gut ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('30', 'Gauze ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('31', 'CUP', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('32', 'FBD', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('33', 'Mask', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('34', 'Vida Lab Reagent', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('35', 'Blood Group ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('36', 'Grand Water ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('37', 'Oil  Immersion ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('38', 'Fluid ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('39', 'Micro Bids', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('40', 'Veda Lab ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('41', 'CBC Machine ', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `status`) VALUES ('42', 'Electrolyte ', '1');


#
# TABLE STRUCTURE FOR: product_information
#

DROP TABLE IF EXISTS `product_information`;

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(30) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `generic_name` varchar(250) NOT NULL,
  `strength` varchar(250) NOT NULL,
  `box_size` varchar(30) NOT NULL,
  `product_location` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `product_model` varchar(50) DEFAULT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_price` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `product_details` varchar(250) DEFAULT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL,
  `tax0` text,
  `tax1` text,
  `tax2` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('1', '58975766', '0', 'Estradiol ', 'Estradiol ', 's', '1', '', '9300', '0', 'Finecare', '5', '8750.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('2', '98452662', '', 'Testosterone Finecare', 'Testosterone Finecare', '', '1', '', '9200', '0', 'Finecare', '5', '8750.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('3', '71423113', '', 'Troponine (cTnI', 'Troponine (cTnI', '', '1', '', '9000', '0', 'Finecare', '5', '7900.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('4', '73338119', '', 'Progesterone Finecare', 'Progesterone Finecare', '', '1', '', '9400', '0', 'Finecare', '5', '8750.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('5', '47357983', '', 'LH Finecare', 'LH Finecare', '', '1', '', '9500', '0', 'Finecare', '5', '8750.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('6', '75887846', '', 'CEA Finecare', 'CEA Finecare', '', '1', '', '8500', '0', 'Finecare', '5', '7900.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('7', '84946299', '', 'fT4 Finecare', 'fT4 Finecare', '', '1', '', '9600', '0', 'Finecare', '5', '8550.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('8', '39415272', '', 'CK MB', 'CK MB', '', '1', '', '8600', '0', 'Finecare', '5', '7900.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('9', '54568247', '', 'Prolactin Finecare', 'Prolactin Finecare', '', '1', '', '9500', '0', 'Finecare', '5', '8750.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('10', '93493569', '0', 'CRP FInecare', 'CRP FInecare', 's', '1', '', '6600', '0', 'Finecare', '5', '5880.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('11', '53881557', '', 'HbA1C', 'HbA1C', '', '1', '', '7800', '0', 'Finecare', '5', '6600.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('12', '64354957', '0', 'patient  Monitor ', 'patient  Monitor ', 's', '1', '', '5000', '0', 'Finecare', '5', '4000.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('13', '29867431', '', 'FSH Finecare', 'FSH Finecare', '', '1', '', '9400', '0', 'Finecare', '5', '8750.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('14', '69785616', '0', 'HCV Ab', 'HCV Ab', 's', '1', '', '1700', '0', 'RDT', '5', '1300.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('15', '91931131', '0', 'H.pylori AB', 'H.pylori AB', 's', '1', '', '1600', '0', 'RDT', '5', '1200.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('16', '84762119', '', '3cc syringe', '3cc syringe', '', '1', '', '480', '0', 'Syringe ', '5', '380.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('17', '76515862', '', '5cc Syringe', '5cc Syringe', '', '1', '', '550', '0', 'Syringe ', '5', '450.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('18', '87395973', '', 'Syphilis (RPR)', 'Syphilis (RPR)', '', '1', '', '2000', '0', 'RDT', '5', '1650.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('19', '32557788', '', 'H.pylory AG', 'H.pylory AG', '', '1', '', '1750', '0', 'RDT', '5', '1650.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('20', '45379955', '0', 'Twisted Lancet ', 'Twisted Lancet ', 's', '1', '', '950', '0', 'Glucose Strip', '5', '380.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('21', '53626715', '', 'Surgical blood', 'Surgical blood', '', '1', '', '1300', '0', 'Instrument ', '5', '750.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('22', '12182484', '', 'Specula', 'Specula', '', '1', '', '650', '0', 'Medication ', '5', '500.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('23', '53512911', '', 'cover slide', 'cover slide', '', '1', '', '120', '0', 'Instrument ', '5', '70.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('24', '32486247', '', 'Povidone Iodine', 'Povidone Iodine', '', '1', '', '650', '0', 'Chemical ', '5', '520.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('25', '58345649', '', 'IV Cannula  20', 'IV Cannula  20', '', '1', '', '2100', '0', 'IV Cannula ', '5', '1720.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('26', '43844822', '', 'IV cannula 18G', 'IV cannula 18G', '', '1', '', '1500', '0', 'IV Cannula ', '5', '600.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('27', '77612935', '', 'IV cannula 22G', 'IV cannula 22G', '', '1', '', '1500', '0', 'IV Cannula ', '5', '700.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('28', '54645663', '', 'Absorbent  cotton ', 'Absorbent  cotton ', '', '1', '', '350', '0', 'Cotton', '5', '265.00', 'Roll', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('29', '52829584', '', 'HBS Ag Strip', 'HBS Ag Strip', '', '1', '', '1350', '0', 'RDT', '5', '1050.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('30', '56212845', '', 'slide', 'slide', '', '1', '', '300', '0', 'Instrument ', '5', '270.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('31', '35924893', '', 'Pregnacye test ', 'Pregnacye test', '', '1', '', '900', '0', 'RDT', '5', '700.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('32', '64415723', '0', 'Lyse Genuri ', 'Lyse Genuri ', 's', '1', '', '5500', '0', 'Instrument ', '5', '4700.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('33', '42363588', '', 'ESR TUBE', 'ESR TUBE', '', '1', '', '1850', '0', 'Chemical ', '5', '1350.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('34', '45777176', '', 'Giema Stain', 'Giema Stain', '', '1', '', '1100', '0', 'Chemical ', '5', '900.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('35', '55367142', '', 'Alcohol 70% Small', 'Alcohol 70% small', '', '1', '', '300', '0', 'Chemical ', '5', '200.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('36', '45184473', '', 'Hydrogen Peroxide', 'Hydrogen Peroxide', '', '1', '', '800', '0', 'Chemical ', '5', '500.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('37', '35724142', '', 'Sanitizer', 'Sanitizer', '', '1', '', '400', '0', 'Chemical ', '5', '370.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('38', '54824494', '', 'Alcohol 70%', 'Alcohol 70%', '', '1', '', '250', '0', 'Chemical ', '5', '175.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('39', '45663429', '', 'EDTA', 'EDTA', '', '1', '', '850', '0', 'Tube', '5', '700.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('40', '71524415', '', 'Oll  immersion', 'Oll  immersion', '', '1', '', '450', '0', 'Materials', '5', '186.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('41', '57722483', '0', 'Probe cleanser Hemax', 'Probe cleanser Hemax', 'S', '1', '', '3600', '0', 'Materials', '5', '2800.00', 'Pcs', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('42', '99374673', '0', 'Zybio lyse', 'Zybio lyse', 'S', '1', '', '5200', '0', 'Materials', '5', '4700.00', 'Pcs', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('43', '28865583', '', 'Lyse Hemax', 'Lyse Hemax', '', '1', '', '4500', '0', 'Materials', '5', '3200.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('44', '16384273', '', 'Probe Cleanser  Genrui', 'Probe Cleanser  Genrui', '', '1', '', '4500', '0', 'Medication ', '5', '3900.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('45', '37824323', '', 'EZ Cleaner (Hemax)', 'EZ Cleaner (Hemax)', '', '1', '', '4300', '0', 'Medication ', '5', '3400.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('47', '75689713', '', 'DY Mynd probe cleanser', 'DY Mynd probe cleanser', '', '1', '', '3000', '0', 'Medication ', '5', '2200.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('48', '15796263', '0', 'Cotton 100g', 'Cotton 100g', 's', '1', '', '70', '0', 'Materials', '5', '50.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('49', '35868223', '', 'Impnalon', 'Impnalon', '', '1', '', '250', '0', 'Medication ', '5', '150.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('50', '67296766', '', 'Examination Glove powder free(s)', 'Examination Glove powder free(s)', '', '1', '', '850', '0', 'Materials', '5', '750.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('51', '85548341', '', 'Acetone Alcohol', 'Acetone Alcohol', '', '1', '', '850', '0', 'Chemical ', '5', '690.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('52', '96624656', '', 'Wright stain', 'Wright stain', '', '1', '', '650', '0', 'Chemical ', '5', '595.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('53', '43444741', '', 'Tri sodium citrate', 'Tri sodium citrate', '', '1', '', '250', '0', 'Chemical ', '5', '100.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('54', '42481525', '', 'Safranin', 'Safranin', '', '1', '', '290', '0', 'Chemical ', '5', '140.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('55', '85541198', '', 'Crystal Violet', 'Crystal Violet', '', '1', '', '650', '0', 'Chemical ', '5', '200.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('56', '35489811', '', 'Carbol Fuchsin', 'Carbol Fuchsin', '', '1', '', '850', '0', 'Chemical ', '5', '620.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('58', '84266897', '', 'Acid Alcohol', 'Acid Alcohol', '', '1', '', '650', '0', 'Chemical ', '5', '450.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('59', '24444282', '', 'WBC Diluting fluid', 'WBC Diluting fluid', '', '1', '', '300', '0', 'Chemical ', '5', '200.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('60', '84228112', '', 'Methylene blue', 'Methylene blue', '', '1', '', '400', '0', 'Chemical ', '5', '140.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('61', '98568938', '', 'DY MYND Diluent', 'DY MYND Diluent', '', '1', '', '5300', '0', 'CBC  Diluent ', '5', '3200.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('62', '33473235', '', 'Zybio Diluent', 'Zybio Diluent', '', '1', '', '5600', '0', 'CBC  Diluent ', '5', '4500.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('63', '17248946', '', 'Genuri Diluent', 'Genuri Diluent', '', '1', '', '5500', '0', 'CBC  Diluent ', '5', '4500.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('64', '71839595', '', 'urite diluent', 'urite diluent', '', '1', '', '4500', '0', 'CBC  Diluent ', '5', '3200.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('65', '38969925', '', 'Blue Tip', 'Blue Tip', '', '1', '', '800', '0', 'Tips', '5', '600.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('66', '45564156', '', 'Yellow Tips', 'Yellow Tips', '', '1', '', '550', '0', 'Tips', '5', '500.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('67', '81686332', '', 'Surgical glove', 'Surgical glove', '', '1', '', '1500', '0', 'Glove ', '5', '1125.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('68', '46357917', '0', 'SSTube', 'SSTube', 's', '1', '', '1000', '0', 'Tube', '5', '920.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('69', '22521917', '', 'Hemax Diluent', 'Hemax Diluent', '', '1', '', '4300', '0', 'CBC  Diluent ', '5', '3500.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('70', '77318774', '', 'IV Cannula 24G', 'IV Cannula 24G', '', '1', '', '1500', '0', 'IV Cannula ', '5', '700.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('71', '22819732', '', 'IV Set', 'IV Set', '', '1', '', '19', '0', 'Set ', '5', '15.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('72', '75145235', '', 'Nasal Oxygen', 'Nasal Oxygen', '', '1', '', '300', '0', 'IV Cannula ', '5', '250.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('73', '43326436', '', 'Surgical Guaze', 'Surgical Guaze', '', '1', '', '1450', '0', 'Gauze ', '5', '1250.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('74', '22261874', '', 'hemacbe', 'hemacbe', '', '1', '', '3500', '0', 'Serology Test ', '5', '2500.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('75', '64727862', '', 'plaster 7.5', 'plaster 7.5', '', '1', '', '200', '0', 'Plaster ', '5', '135.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('76', '24517854', '', 'Automatic  Lancet', 'Automatic  Lancet', '', '1', '', '1500', '0', 'Materials', '5', '1200.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('77', '51259724', '', 'Ultrasound jell', 'Ultrasound jell', '', '1', '', '1000', '0', 'Materials', '5', '700.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('78', '62484563', '', 'Baby Weight Scale', 'Baby Weight Scale', '', '1', '', '13600', '0', 'Instrument ', '5', '7500.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('79', '25297576', '', 'Centrifuge 8 hole', 'Centrifuge 8 hole', '', '1', '', '15600', '0', 'Materials', '5', '13500.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('80', '54226738', '', 'Centrifuge 12 hole', 'Centrifuge 12 hole', '', '1', '', '16500', '0', 'Materials', '5', '13500.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('81', '81331272', '0', 'Creatinine Biosystem', 'Creatinine Biosystem', 'S', '1', '', '12500', '0', 'Materials', '5', '11000.00', 'Pcs', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('82', '59647131', '', 'Roll Paper ', 'Roll Paper ', '', '1', '', '150', '0', 'Materials', '5', '70.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('83', '41347816', '', 'Calibration  Pack', 'Calibration  Pack', '', '1', '', '12000', '0', 'Materials', '5', '10000.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('84', '71376934', '', 'Diff Lyse ', 'Diff Lyse ', '', '1', '', '2000', '0', 'Materials', '5', '1000.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('85', '26539744', '', 'LH Lyse ', 'LH Lyse ', '', '1', '', '2000', '0', 'Materials', '5', '1200.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('86', '34537699', '', '1cc Syringe ', '1cc Syringe ', '', '1', '', '450', '0', 'Materials', '5', '250.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('87', '29261932', '', 'PT TUBE', 'PT TUBE', '', '1', '', '950', '0', 'Tube', '5', '780.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('88', '94941436', '', 'urine Dipstick', 'urine Dipstick', '', '1', '', '680', '0', 'Tube', '5', '570.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('89', '27143357', '', 'Lyse urit', 'Lyse urit', '', '1', '', '4500', '0', 'Chemical ', '5', '3300.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('90', '57651236', '', 'Mindray Lyse (M-30)', 'Mindray Lyse (M-30)', '', '1', '', '8200', '0', 'Materials', '5', '6990.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('91', '48215874', '', 'Examination Glove Powdered ', 'Examination Glove Powdered ', '', '1', '', '750', '0', 'Glove ', '5', '650.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('92', '27568192', '', 'M-30 Diluent ', 'M-30 Diluent ', '', '1', '', '7200', '0', 'CBC  Diluent ', '5', '5300.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('93', '84942619', '', 'Chlorhexidine gluconate 0.3%(Sav lone)', 'Chlorhexidine gluconate 0.3%(Sav lone)', '', '1', '', '500', '0', 'Materials', '5', '450.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('94', '54779923', '', 'Denature Alcohol 96%', 'Denature Alcohol 96%', '', '1', '', '500', '0', 'Chemical ', '5', '325.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('95', '92486258', '', 'Zybio probe cleanser', 'Zybio probe cleanser', '', '1', '', '4000', '0', 'Materials', '5', '2660.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('96', '31736182', '', 'D - Lab Centrifuge ', 'D - Lab Centrifuge ', '', '1', '', '80000', '0', 'Materials', '5', '54710.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('97', '67392348', '', 'Digital Thermometer  ', 'Digital Thermometer  ', '', '1', '', '350', '0', 'Materials', '5', '250.00', 'PCS', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('98', '99376853', '', 'RF LATEX', 'RF LATEX', '', '1', '', '1700', '0', 'Materials', '5', '1300.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('99', '11849854', '', 'ASO Becane', 'ASO Becane', '', '1', '', '1950', '0', 'Serology Test ', '5', '1850.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('100', '33454874', '', 'weliflex ox19', 'weliflex ox19', '', '1', '', '750', '0', 'Serology Test ', '5', '460.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('101', '67466855', '', 'Widal O&H', 'Widal O&H', '', '1', '', '750', '0', 'Serology Test ', '5', '530.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('102', '75327933', '0', 'Cholesterol Biosystem', 'Cholesterol Biosystem', 'S', '1', '', '3600', '0', 'Serology Test ', '5', '3000.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('103', '28678985', '', 'Trigl  bio system ', 'Trigl  bio system', '', '1', '', '4500', '0', 'Serology Test ', '5', '3000.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('104', '51862183', '', 'ALP Biosystem', 'ALP Biosystem', '', '1', '', '4200', '0', 'Materials', '5', '3700.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('105', '65839844', '0', 'Bilirubin Total', 'Bilirubin Total', 's', '1', '', '2300', '0', 'Materials', '5', '1409.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('106', '23924557', '', 'Cholesterol AMP', 'Cholesterol AMP', '', '1', '', '3850', '0', 'Serology Test ', '5', '3119.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('107', '96467387', '', 'Bilirubin Direct AMP', 'Bilirubin Direct AMP', '', '1', '', '2300', '0', 'Serology Test ', '5', '1319.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('108', '18367874', '0', 'Creatinine Juri lab', 'Creatinine Juri lab', 'S', '1', '', '4200', '0', 'Serology Test ', '5', '2700.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('109', '77268395', '', 'Maglumi Estradiol (CLIA', 'Maglumi Estradiol (CLIA', '', '1', '', '20000', '0', 'Materials', '5', '18000.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('110', '19846143', '', 'Bilirubin Standard Biosystem', 'Bilirubin Standard Biosystem', '', '1', '', '500', '0', 'Materials', '5', '300.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('111', '29789854', '', 'Anti -A', 'Anti -A', '', '1', '', '200', '0', 'Materials', '5', '100.00', 'Ampule ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('112', '35434724', '', 'Anti - B', 'Anti - B', '', '1', '', '300', '0', 'Materials', '5', '150.00', 'Ampule ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('113', '33287934', '', 'Maglumi Light Check ', 'Maglumi Light Check ', '', '1', '', '2300', '0', 'Materials', '5', '1000.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('114', '23615432', '', 'HDL Biosystem', 'HDL Biosystem', '', '1', '', '17500', '0', 'Materials', '5', '16300.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('115', '23899713', '', 'Cholesterol  Juri Lab', 'Cholesterol  Juri Lab', '', '1', '', '1650', '0', 'Materials', '5', '1250.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('116', '95666542', '0', 'uric acid Biosystem', 'uric acid Biosystem', 'S', '1', '', '3490', '0', 'Materials', '5', '2800.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('117', '64123769', '', 'LDL Cholestrol', 'LDL Cholestrol', '', '1', '', '23000', '0', 'Materials', '5', '13000.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('118', '91799485', '', 'Anti - D', 'Anti - D', '', '1', '', '300', '0', 'Materials', '5', '200.00', 'Ampule ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('119', '74889721', '', 'TSH Finecare', 'TSH Finecare', '', '1', '', '9400', '0', 'Finecare', '5', '8200.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('120', '88928311', '', 'fT3 Finecare', 'fT3 Finecare', '', '1', '', '6600', '0', 'Finecare', '5', '8550.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('121', '81711923', '', 'Vitamin D Finecare', 'Vitamin D Finecare', '', '1', '', '10000', '0', 'Finecare', '5', '9000.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('122', '97943497', '', 'Vivacheck', 'Vivacheck', '', '1', '', '880', '0', 'Instrument ', '5', '790.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('123', '41949321', '', 'Gmate Strip ', 'Gmate Strip ', '', '1', '', '970', '0', 'Materials', '5', '800.00', 'Pack', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');
INSERT INTO `product_information` (`id`, `product_id`, `category_id`, `product_name`, `generic_name`, `strength`, `box_size`, `product_location`, `price`, `tax`, `product_model`, `manufacturer_id`, `manufacturer_price`, `unit`, `product_details`, `image`, `status`, `tax0`, `tax1`, `tax2`) VALUES ('124', '85649447', '', 'Probe Cleanser (Mindray)', 'Probe Cleanser (Mindray)', '', '1', '', '3500', '0', 'Materials', '5', '3000.00', 'Bottle ', '', 'http://localhost/pms/my-assets/image/product.png', '1', '0', '0', '0');


#
# TABLE STRUCTURE FOR: product_purchase
#

DROP TABLE IF EXISTS `product_purchase`;

CREATE TABLE `product_purchase` (
  `chalan_no` varchar(100) NOT NULL,
  `manufacturer_id` varchar(100) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(10,2) DEFAULT '0.00',
  `purchase_date` varchar(50) NOT NULL,
  `purchase_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` varchar(30) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('01', '5', '203010.00', NULL, '2025-08-26', '', '1', '8', '20250826124104', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('02', '5', '252740.00', NULL, '2025-08-26', '', '1', '9', '20250826131347', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('03', '5', '74480.00', NULL, '2025-08-26', '', '1', '10', '20250826133705', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('04', '5', '133230.00', NULL, '2025-08-26', '', '1', '11', '20250826135806', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('05', '5', '76420.00', NULL, '2025-08-26', '', '1', '12', '20250826154621', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('06', '5', '417735.00', NULL, '2025-08-26', '', '1', '13', '20250826160458', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('07', '5', '72730.00', NULL, '2025-08-26', '', '1', '14', '20250826110520', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('08', '5', '250.00', NULL, '2025-08-26', '', '1', '15', '20250826110814', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('09', '5', '145440.00', NULL, '2025-08-26', '', '1', '16', '20250826114242', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('010', '5', '245050.00', NULL, '2025-08-26', '', '1', '17', '20250826121551', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('011', '5', '3500.00', NULL, '2025-08-26', '', '1', '18', '20250826121924', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('012', '5', '239438.00', NULL, '2025-08-26', '', '1', '19', '20250826140147', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('0013', '5', '49650.00', NULL, '2025-08-26', '', '1', '20', '20250826141318', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('A-0014', '5', '223660.00', NULL, '2025-08-26', '', '1', '21', '20250826153037', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('A- 0015', '5', '203674.00', NULL, '2025-08-26', '', '1', '22', '20250826155100', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('A-0015', '5', '1350.00', NULL, '2025-08-26', '', '1', '23', '20250826155516', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('A-0016', '5', '1409.00', NULL, '2025-09-09', '', '1', '24', '20250909161707', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('A-0018', '5', '1080.00', NULL, '2025-09-09', '', '1', '25', '20250909163905', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('C1/2025/01671', '5', '9480.00', NULL, '2025-09-09', '', '1', '26', '20250909165619', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('B-001', '5', '1600.00', NULL, '2025-09-15', '', '1', '27', '20250915182913', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('B-003', '5', '3000.00', NULL, '2025-09-15', '', '1', '28', '20250915183738', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('B-005', '5', '77420.00', NULL, '2025-09-16', '', '1', '29', '20250916014800', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('B-006', '5', '70680.00', NULL, '2025-09-16', '', '1', '30', '20250916020203', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('B-007', '5', '75000.00', NULL, '2025-09-16', '', '1', '31', '20250916044851', '', '1');
INSERT INTO `product_purchase` (`chalan_no`, `manufacturer_id`, `grand_total_amount`, `total_discount`, `purchase_date`, `purchase_details`, `status`, `id`, `purchase_id`, `bank_id`, `payment_type`) VALUES ('B-008', '5', '6100.00', NULL, '2025-09-16', '', '1', '32', '20250916085336', '', '1');


#
# TABLE STRUCTURE FOR: product_purchase_details
#

DROP TABLE IF EXISTS `product_purchase_details`;

CREATE TABLE `product_purchase_details` (
  `purchase_detail_id` varchar(100) NOT NULL,
  `purchase_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` decimal(12,2) NOT NULL DEFAULT '0.00',
  `rate` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `sell_price` decimal(10,0) NOT NULL,
  `discount` decimal(10,2) DEFAULT '0.00',
  `batch_id` varchar(25) NOT NULL,
  `expeire_date` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('sKN0Ej2hOgNsIjP', '20250826124104', '58975766', '4.00', '8750.00', '35000.00', '9300', NULL, 'F2471520FA', '2026-6-20', '1', '9', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Jx8KuefBWV4okD8', '20250826124104', '98452662', '3.00', '8750.00', '26250.00', '9200', NULL, 'F2481660DAD', '2026-12-10', '1', '10', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('KZNXiaPuYgihwsG', '20250826124104', '71423113', '5.00', '7900.00', '39500.00', '9000', NULL, 'F20310803AD', '2026-9-3', '1', '11', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('waeBcJUMCOVTnCs', '20250826124104', '73338119', '2.00', '8750.00', '17500.00', '9400', NULL, 'F23116BOAD', '2026-5-8', '1', '12', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('N59U8zj049Te50j', '20250826124104', '47357983', '2.00', '8750.00', '17500.00', '9500', NULL, 'F24441560AAD', '2026-12-8', '1', '13', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('9m8Fjo68qOcJlDa', '20250826124104', '75887846', '3.00', '7900.00', '23700.00', '8500', NULL, 'F22616505AD', '2027-6-12', '1', '14', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Iw9wExB07Rw6HvQ', '20250826124104', '84946299', '1.00', '8550.00', '8550.00', '9600', NULL, 'F24916AO7AD', '2027-6-12', '1', '15', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('g6kNNmi0qgajwNo', '20250826124104', '39415272', '1.00', '7900.00', '7900.00', '8600', NULL, 'F2051690FAD', '2027-2-9', '1', '16', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('dRHHzTtdrpJaq0P', '20250826124104', '54568247', '1.00', '8750.00', '8750.00', '9500', NULL, 'F24616508', '2027-2-9', '1', '17', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('lGpE9DZBmnlLKJM', '20250826124104', '93493569', '2.00', '5880.00', '11760.00', '6600', NULL, 'F2011AC04BD', '2026-12-10', '1', '18', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('OubtiOPgrcVxs5q', '20250826124104', '53881557', '1.00', '6600.00', '6600.00', '7800', NULL, 'F2071B409AD', '2026-12-10', '1', '19', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('U8ybKLWPKy0cEYh', '20250826131347', '29867431', '1.00', '8750.00', '8750.00', '9400', NULL, 'F24516508AD', '2026-10-5', '1', '20', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('QPMaGjH35ljAhuX', '20250826131347', '69785616', '36.00', '1300.00', '46800.00', '1700', NULL, '20250303', '2028-3-5', '1', '21', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('qkSsme4b3SUSZ7d', '20250826131347', '91931131', '28.00', '1200.00', '33600.00', '1600', NULL, '20250204', '2028-12-7', '1', '22', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('7EeQ3qKG0P4eKkZ', '20250826131347', '84762119', '191.00', '380.00', '72580.00', '480', NULL, '26042023', '2028-4-29', '1', '23', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('bOWgKleeob08otS', '20250826131347', '76515862', '28.00', '450.00', '12600.00', '550', NULL, 'SP230310', '2028-3-17', '1', '24', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('cpYTVBgOjb4jRZO', '20250826131347', '32557788', '4.00', '1650.00', '6600.00', '1750', NULL, '20250205', '2028-2-8', '1', '25', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('BIusFP3j5276DPD', '20250826131347', '45379955', '22.00', '380.00', '8360.00', '950', NULL, '2405133', '2029-6-12', '1', '26', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('firLIUEpfht7daF', '20250826131347', '24517854', '25.00', '1200.00', '30000.00', '1500', NULL, '23022610', '2028-2-9', '1', '27', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('cn6o2eWl2HAIcMj', '20250826131347', '12182484', '6.00', '500.00', '3000.00', '650', NULL, '202212', '2027-11-2', '1', '28', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('ZDPqnCnIcIP99uT', '20250826131347', '53512911', '127.00', '70.00', '8890.00', '120', NULL, '230315', '2025-12-12', '1', '29', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('riqhHreCnWGVK1Y', '20250826131347', '32486247', '17.00', '520.00', '8840.00', '650', NULL, '581017', '2027-7-20', '1', '30', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('HUB3Ry5b2TtAcWS', '20250826131347', '54645663', '48.00', '265.00', '12720.00', '350', NULL, '246', '2028-11-30', '1', '31', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('L2baHSfdTGNn04b', '20250826133705', '58345649', '1.00', '1720.00', '1720.00', '2100', NULL, '202204', '2027-3-15', '1', '32', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('3JEU2LAUBcvF88C', '20250826133705', '43844822', '4.00', '600.00', '2400.00', '1500', NULL, '10392/200', '2027-3-20', '1', '33', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('ybEbHzqi3suyqYb', '20250826133705', '77612935', '1.00', '700.00', '700.00', '1500', NULL, '202205', '2027-3-12', '1', '34', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('j90Iu8wd0G3nZlj', '20250826133705', '77318774', '20.00', '700.00', '14000.00', '1500', NULL, '3B670406', '2028-1-12', '1', '35', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('lNtpIEYYb3pFi8L', '20250826133705', '52829584', '4.00', '1050.00', '4200.00', '1350', NULL, '2506031301', '2027-6-8', '1', '36', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('bRijeTXWuItGbTY', '20250826133705', '56212845', '38.00', '270.00', '10260.00', '300', NULL, '13090', '2027-6-7', '1', '37', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('2o95bGOx0j4dhKB', '20250826133705', '35924893', '24.00', '700.00', '16800.00', '900', NULL, '20248116', '2027-7-12', '1', '38', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('3JDfZbip366wUdV', '20250826133705', '45777176', '14.00', '900.00', '12600.00', '1100', NULL, 'KLG100024', '2026-9-5', '1', '39', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('aYgu4mNwLUVX3QF', '20250826133705', '55367142', '54.00', '200.00', '10800.00', '300', NULL, 'KIM2501/24', '2026-8-30', '1', '40', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('eRWrp2rS3rgcBt5', '20250826133705', '45184473', '2.00', '500.00', '1000.00', '800', NULL, 'KIH10002124', '2026-6-7', '1', '41', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('l5ks6n85YJtcTqh', '20250826135806', '35724142', '40.00', '370.00', '14800.00', '400', NULL, 'KIH10003/25', '2027-8-8', '1', '42', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('PHdqCl8RTS138ls', '20250826135806', '54824494', '34.00', '175.00', '5950.00', '250', NULL, 'KF10003/25', '2027-6-7', '1', '43', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('exgBhYvuDAl1TfM', '20250826135806', '45663429', '104.00', '700.00', '72800.00', '850', NULL, '20240808', '20227-8-7', '1', '44', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Q5ttYf7REMrhvgx', '20250826135806', '28865583', '2.00', '3200.00', '6400.00', '4500', NULL, 'B2309', '2027-11-5', '1', '45', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('e7ryxuEXpkGFqMk', '20250826135806', '16384273', '4.00', '3900.00', '15600.00', '4500', NULL, '250302', '2026-3-18', '1', '46', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('HaUoxFCUPAc92lI', '20250826135806', '75689713', '2.00', '2200.00', '4400.00', '3000', NULL, '2024082901', '2026-8-15', '1', '47', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('gi4y76zg59DaUCn', '20250826135806', '35868223', '34.00', '150.00', '5100.00', '250', NULL, 'B118890', '20026-9-30', '1', '48', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('H0GNfcAMh2J01mE', '20250826135806', '15796263', '47.00', '50.00', '2350.00', '70', NULL, '2411', '2029-8-12', '1', '49', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('jbP56JcetixFNQ6', '20250826135806', '85548341', '5.00', '690.00', '3450.00', '850', NULL, '01104', '2027-7-12', '1', '50', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('4rcB84MQ5ziYkzF', '20250826135806', '96624656', '4.00', '595.00', '2380.00', '650', NULL, '13201', '2027-8-9', '1', '51', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('PCybsfNqgsRt7Lj', '20250826154621', '43444741', '3.00', '100.00', '300.00', '250', NULL, '251014', '2026-8-3', '1', '52', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('gjDjfrQ7KYsIbGy', '20250826154621', '42481525', '4.00', '140.00', '560.00', '290', NULL, '621004', '2027-7-14', '1', '53', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('6heGI01ZigpynU9', '20250826154621', '85541198', '7.00', '200.00', '1400.00', '650', NULL, '101003', '2026-12-5', '1', '54', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('OcULAxYRNPIJAHC', '20250826154621', '35489811', '4.00', '620.00', '2480.00', '850', NULL, '061003', '2027-7-10', '1', '55', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Zvi3XkkviVgQYbr', '20250826154621', '84266897', '4.00', '450.00', '1800.00', '650', NULL, '031003', '2026-12-30', '1', '56', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('yu1mwtvyx17AfOj', '20250826154621', '24444282', '1.00', '200.00', '200.00', '300', NULL, '502401013', '2027-1-7', '1', '57', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('z592MsHoaghvOoY', '20250826154621', '84228112', '2.00', '140.00', '280.00', '400', NULL, '501008', '2027-7-30', '1', '58', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('bsWB6ay1GcyxnwA', '20250826154621', '98568938', '2.00', '3200.00', '6400.00', '5300', NULL, '2025011651', '2027--1-18', '1', '59', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('4Bo3RvNgm6E1jfE', '20250826154621', '33473235', '7.00', '4500.00', '31500.00', '5600', NULL, '250423', '2027-8-12', '1', '60', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('3VANO1zqy9YPsBP', '20250826154621', '17248946', '7.00', '4500.00', '31500.00', '5500', NULL, '20250511', '2027-5-11', '1', '61', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('PnlJQ76O3qSoPVC', '20250826160458', '71839595', '7.00', '3200.00', '22400.00', '4500', NULL, '24012173ML', '2026--2-5', '1', '62', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('oe6lCI8L292Mgt9', '20250826160458', '17248946', '7.00', '4500.00', '31500.00', '5500', NULL, '20260611', '2027-6-11', '1', '63', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('zFHjWsco9XoSh0w', '20250826160458', '38969925', '20.00', '600.00', '12000.00', '800', NULL, '240615', '2029-5-10', '1', '64', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('zY4OcmECWLRiVKL', '20250826160458', '45564156', '40.00', '500.00', '20000.00', '550', NULL, '221110', '2027-10-5', '1', '65', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('IX3VyAac1bhzYck', '20250826160458', '81686332', '184.00', '1125.00', '207000.00', '1500', NULL, 'HW40503-62', '2029-4-30', '1', '66', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('ECe6UjRRuxmWQrH', '20250826160458', '46357917', '38.00', '920.00', '34960.00', '1000', NULL, '20250420', '2028-4-19', '1', '67', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Pcd4no5SiVuiB2q', '20250826160458', '22819732', '25.00', '15.00', '375.00', '19', NULL, '20230406', '2026-4-9', '1', '68', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('VYxftZWJVLWyZCR', '20250826160458', '75145235', '68.00', '250.00', '17000.00', '300', NULL, '2211014C', '2027-5-2', '1', '69', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('pUseKmjqHpYLhWD', '20250826160458', '43326436', '2.00', '1250.00', '2500.00', '1450', NULL, '202303', '2028-2-30', '1', '70', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('gIvi9ktQXeddpTC', '20250826160458', '67296766', '70.00', '750.00', '52500.00', '850', NULL, 'SH22149-72', '2027-1-20', '1', '71', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('K04kzI91U4NlNpm', '20250826160458', '22261874', '7.00', '2500.00', '17500.00', '3500', NULL, '2406393', '2026-6-9', '1', '72', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('AMs5KHySUjoAvMx', '20250826110520', '64354957', '1.00', '4000.00', '4000.00', '5000', NULL, '0001', '2028-9-6', '1', '73', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('R280AlVYGObp2PF', '20250826110520', '41347816', '1.00', '10000.00', '10000.00', '12000', NULL, '1-H4-404', '2026-1-19', '1', '74', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('HqfUv5RkASfWpNC', '20250826110520', '71376934', '2.00', '1000.00', '2000.00', '2000', NULL, '20250110501', '2027-1-9', '1', '75', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('hSWD27mMicZofYI', '20250826110520', '26539744', '2.00', '1200.00', '2400.00', '2000', NULL, '2024120551', '2026-12-4', '1', '76', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('uhNM0awOV1lWSD3', '20250826110520', '51259724', '5.00', '700.00', '3500.00', '1000', NULL, '0005', '2027-6-9', '1', '77', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('BMQex8ia6AZcwP1', '20250826110520', '62484563', '3.00', '7500.00', '22500.00', '13600', NULL, '0006', '2029-8-12', '1', '78', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('8ZukINTeOHunr5', '20250826110520', '54226738', '1.00', '13500.00', '13500.00', '16500', NULL, '0007', '2026-5-30', '1', '79', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('audeHHwJn0ibRIV', '20250826110520', '25297576', '1.00', '13500.00', '13500.00', '15600', NULL, '0008', '2027-2-30', '1', '80', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('ZIXSnI9HpFhLI7w', '20250826110520', '59647131', '19.00', '70.00', '1330.00', '150', NULL, '00010', '2028-9-12', '1', '81', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('ynlTH0RVsKBJNPs', '20250826110814', '34537699', '1.00', '250.00', '250.00', '450', NULL, '20220905', '2027-1-30', '1', '82', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('qvh10AFG6ob73Q9', '20250826114242', '29261932', '4.00', '780.00', '3120.00', '950', NULL, '20230602', '2026-6-11', '1', '83', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('jGK63GFOLxoGKtA', '20250826114242', '42363588', '18.00', '1350.00', '24300.00', '1850', NULL, '20250425', '2028-4-24', '1', '84', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('DKexRZESBOA5QVB', '20250826114242', '64415723', '9.00', '4700.00', '42300.00', '5500', NULL, '20250516', '2027-5-12', '1', '85', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('etH1ZpxDYdqEJJ8', '20250826114242', '99374673', '4.00', '4700.00', '18800.00', '5200', NULL, '250102', '2027-2-12', '1', '86', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('RLAQI8rsQ394LJ1', '20250826114242', '57722483', '1.00', '2800.00', '2800.00', '3600', NULL, '250302', '2026-3-15', '1', '87', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('y1PjrSj9PkgcG3o', '20250826114242', '57651236', '3.00', '6990.00', '20970.00', '8200', NULL, '2025011851', '2027-1-17', '1', '88', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('dOU96eE4u3D5X9S', '20250826114242', '48215874', '51.00', '650.00', '33150.00', '750', NULL, '2102', '2026-9-30', '1', '89', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('dtOlGQMaVq38q0X', '20250826121551', '22521917', '19.00', '3500.00', '66500.00', '4300', NULL, 'A4291', '2027-10-30', '1', '90', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('K7Zcw4KSdJhk5I2', '20250826121551', '84942619', '2.00', '450.00', '900.00', '500', NULL, '071079', '2026-10-12', '1', '91', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('B44MqpBKKdAIYUO', '20250826121551', '35924893', '1.00', '700.00', '700.00', '900', NULL, '01201k', '2026-8-10', '1', '92', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('SrjlHDWE5aiYjP0', '20250826121551', '87395973', '25.00', '1650.00', '41250.00', '2000', NULL, '20250302', '2028-3-13', '1', '93', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Ra3YkuZsi7DyPON', '20250826121551', '54779923', '4.00', '325.00', '1300.00', '500', NULL, '121010', '2027-7-5', '1', '94', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('2uapXWHrgzTdauZ', '20250826121551', '37824323', '5.00', '3400.00', '17000.00', '4300', NULL, 'C2403', '2026-8-11', '1', '95', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('konAqEGvy2TQgJk', '20250826121551', '92486258', '3.00', '2660.00', '7980.00', '4000', NULL, 'ZY24050087', '2027-8-10', '1', '96', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('85oBXRDgjznisu4', '20250826121551', '31736182', '2.00', '54710.00', '109420.00', '80000', NULL, '9149002228', '2029-8-10', '1', '97', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('y3Eak1RCQmCBg5p', '20250826121924', '67392348', '14.00', '250.00', '3500.00', '350', NULL, 'Dj0123', '2029-8-8', '1', '98', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('aBNwTTVosy0c5Ln', '20250826140147', '99376853', '22.00', '1300.00', '28600.00', '1700', NULL, 'SE23-193', '2027-8-7', '1', '99', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('29RoDDHIwqKEYv8', '20250826140147', '11849854', '7.00', '1850.00', '12950.00', '1950', NULL, 'SE21-157', '2027-5-30', '1', '100', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('WGvnE4XbrO3xpll', '20250826140147', '33454874', '25.00', '460.00', '11500.00', '750', NULL, 'SESO-046', '2026-12-30', '1', '101', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('RbeRy7mfWWEDvfG', '20250826140147', '67466855', '15.00', '530.00', '7950.00', '750', NULL, 'SE53-051', '2026-7-20', '1', '102', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('JZIyhuRGqiBKEWv', '20250826140147', '75327933', '2.00', '3000.00', '6000.00', '3600', NULL, '60721', '2027-2-25', '1', '103', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('iOBCGd03p5kRaTv', '20250826140147', '28678985', '2.00', '3000.00', '6000.00', '4500', NULL, '001009', '2026-7-2', '1', '104', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('vaParqubUO8NrwK', '20250826140147', '51862183', '5.00', '3700.00', '18500.00', '4200', NULL, '2027-10-8', '2027-10-8', '1', '105', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('F0ETeTsJMTxbCth', '20250826140147', '23924557', '1.00', '3119.00', '3119.00', '3850', NULL, '2412/0067', '2027-7-20', '1', '106', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('xEOlaumAivelo4R', '20250826140147', '96467387', '1.00', '1319.00', '1319.00', '2300', NULL, '250510083', '2028-2-12', '1', '107', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('VVNdDzyASUmSNQf', '20250826140147', '77268395', '7.00', '18000.00', '126000.00', '20000', NULL, '262240221', '2026-5-4', '1', '108', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('lPRjPwVanP7VP3M', '20250826140147', '19846143', '3.00', '300.00', '900.00', '500', NULL, '54114', '2026-7-11', '1', '109', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('EiQSuy5u5jee63n', '20250826140147', '91799485', '19.00', '200.00', '3800.00', '300', NULL, '24CBG050', '2026-11-20', '1', '110', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('h2R3aJ2umZuje9U', '20250826140147', '91799485', '10.00', '200.00', '2000.00', '300', NULL, '0525-20', '2027-11-30', '1', '111', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Zvh3lA5bhmURTJn', '20250826140147', '35434724', '20.00', '150.00', '3000.00', '300', NULL, 'B052527', '2027-11-10', '1', '112', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('aU6t26pmjwtnF0H', '20250826140147', '35434724', '20.00', '150.00', '3000.00', '300', NULL, '610010', '2026-3-23', '1', '113', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('sI7azFG57J6ao6V', '20250826140147', '29789854', '18.00', '100.00', '1800.00', '200', NULL, '600010', '2026-2-22', '1', '114', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('TUDxwqiCjy36NN0', '20250826140147', '29789854', '20.00', '100.00', '2000.00', '200', NULL, 'A0525/12', '2027-12-15', '1', '115', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('VN5PTjD7ArfRk7U', '20250826140147', '33287934', '1.00', '1000.00', '1000.00', '2300', NULL, '31420201', '2025-11-22', '1', '116', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('hmy8X7dOTLZDDSb', '20250826141318', '23615432', '2.00', '16300.00', '32600.00', '17500', NULL, '58427', '2027-3-30', '1', '117', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('2YYvBs0rPKzKNXu', '20250826141318', '23899713', '1.00', '1250.00', '1250.00', '1650', NULL, '132503056', '2027-9-10', '1', '118', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Wt9LTEpqChOfexe', '20250826141318', '95666542', '1.00', '2800.00', '2800.00', '3490', NULL, '332506061', '2027-6-20', '1', '119', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('eWm7BSxq3i1saQb', '20250826141318', '64123769', '1.00', '13000.00', '13000.00', '23000', NULL, '152307036', '2026-7-30', '1', '120', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Uosis5y99ze6bhn', '20250826153037', '93493569', '2.00', '5880.00', '11760.00', '6600', NULL, 'F2011AC04BD', '2026-2-28', '1', '121', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('FqVq1nHHvqSQPr6', '20250826153037', '53881557', '10.00', '6600.00', '66000.00', '7800', NULL, 'F2071B803AD', '2027-2-5', '1', '122', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('vtHi7QYacBnsKgo', '20250826153037', '71423113', '2.00', '7900.00', '15800.00', '9000', NULL, 'F20311B06AOD', '2027-6-5', '1', '123', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('2VOy0X2TeiFAxsc', '20250826153037', '81711923', '8.00', '9000.00', '72000.00', '10000', NULL, 'F20411797BD', '2026-11-21', '1', '124', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('rKjeES8AArJ5ilJ', '20250826153037', '88928311', '1.00', '8550.00', '8550.00', '6600', NULL, 'F23117605AD', '2026-8-21', '1', '125', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('lH8XAxHyD36BQaW', '20250826153037', '84946299', '1.00', '8550.00', '8550.00', '9600', NULL, 'F23117605AD', '2026-7-14', '1', '126', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('LGJDDGgNHz68hv2', '20250826153037', '74889721', '5.00', '8200.00', '41000.00', '9400', NULL, 'F2201B505AD', '2026-12-18', '1', '127', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('3IXRNgXc1KvhcKW', '20250826155100', '81331272', '5.00', '11000.00', '55000.00', '12500', NULL, '60620', '2027-3-31', '1', '128', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('RYdUV0LLrbTsj1M', '20250826155100', '18367874', '12.00', '2700.00', '32400.00', '4200', NULL, '172411059', '2027-11-30', '1', '129', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('5SgHL7tosBiAG85', '20250826155100', '53626715', '8.00', '750.00', '6000.00', '1300', NULL, 'K2203008', '2027-2-12', '1', '130', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('DKJFqY4RMBoQfme', '20250826155100', '27143357', '2.00', '3300.00', '6600.00', '4500', NULL, '24010684MS', '2026-1-30', '1', '131', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('wmmu1O2lKc8e27K', '20250826155100', '71524415', '19.00', '186.00', '3534.00', '450', NULL, '642507026', '2028-7-20', '1', '132', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('MVzopvYvtz7V9ox', '20250826155100', '27568192', '9.00', '5300.00', '47700.00', '7200', NULL, '2025011651', '2027-4-20', '1', '133', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('poEL8bRYLvVdX0e', '20250826155100', '94941436', '92.00', '570.00', '52440.00', '680', NULL, 'URS24050004', '2026-8-2', '1', '134', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('O0dEIbLw0sjSxYS', '20250826155516', '64727862', '10.00', '135.00', '1350.00', '200', NULL, '2024110', '2027-10-4', '1', '135', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('sC83kHJcVhwDVkZ', '20250909161707', '65839844', '1.00', '1409.00', '1409.00', '2300', NULL, '250510083', '2028-2-11', '1', '136', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('PAkUYzxncmrlw29', '20250909163905', '56212845', '4.00', '270.00', '1080.00', '300', NULL, 'SLO2365', '2027-2-5', '1', '137', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Lx045KrSX3Tnbrr', '20250909165619', '97943497', '12.00', '790.00', '9480.00', '880', NULL, '253166', '2027-5-31', '1', '138', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('pSDOQIJVJlzfYg5', '20250915182913', '41949321', '2.00', '800.00', '1600.00', '970', NULL, 'GM10YAMO', '2027-1-30', '1', '139', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('sfNoMaUSE7GntF1', '20250915183738', '85649447', '1.00', '3000.00', '3000.00', '3500', NULL, '2025061051', '2026-12-9', '1', '140', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('SRCPQYtUL9WKCN7', '20250916014800', '97943497', '98.00', '790.00', '77420.00', '880', NULL, 'Viva123', '2027-9-30', '1', '141', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('ZA2dG06O4avsrKt', '20250916020203', '81711923', '5.00', '9000.00', '45000.00', '10000', NULL, 'F24117907BD', '2026-11-28', '1', '142', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('nrrx14UfoYUMOi3', '20250916020203', '53881557', '3.00', '6600.00', '19800.00', '7800', NULL, 'F2071B409AD', '2026-12-10', '1', '143', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('ZF46GMjyI5ddhcT', '20250916020203', '93493569', '1.00', '5880.00', '5880.00', '6600', NULL, 'F2011AC04BD', '2027-2-27', '1', '144', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('RaplRDG6s1t7lyz', '20250916044851', '67296766', '40.00', '750.00', '30000.00', '850', NULL, 'SH22149-72', '2027-1-20', '1', '145', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('kfcirO1kFbpCJ4p', '20250916044851', '81686332', '40.00', '1125.00', '45000.00', '1500', NULL, 'HW40503-62', '2029-4-30', '1', '146', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('HXn2H6gqKlWI327', '20250916085336', '35924893', '4.00', '700.00', '2800.00', '900', NULL, 'HCG24050012', '2026-4-30', '1', '147', 'INV01');
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `quantity`, `rate`, `total_amount`, `sell_price`, `discount`, `batch_id`, `expeire_date`, `status`, `id`, `invoice_id`) VALUES ('Qav6WJs5VnPvHmJ', '20250916085336', '87395973', '2.00', '1650.00', '3300.00', '2000', NULL, 'W03440502', '2026-5-14', '1', '148', 'INV01');


#
# TABLE STRUCTURE FOR: product_return
#

DROP TABLE IF EXISTS `product_return`;

CREATE TABLE `product_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` varchar(30) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `purchase_id` varchar(30) DEFAULT NULL,
  `date_purchase` varchar(20) NOT NULL,
  `date_return` varchar(30) NOT NULL,
  `byy_qty` decimal(12,2) NOT NULL DEFAULT '0.00',
  `ret_qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `customer_id` varchar(20) NOT NULL,
  `manufacturer_id` varchar(30) NOT NULL,
  `product_rate` decimal(12,2) NOT NULL DEFAULT '0.00',
  `deduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_deduct` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(12,2) NOT NULL DEFAULT '0.00',
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reason` text NOT NULL,
  `usablity` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: product_service
#

DROP TABLE IF EXISTS `product_service`;

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax0` text,
  `tax1` text,
  `tax2` text,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `product_service` (`service_id`, `service_name`, `description`, `charge`, `tax0`, `tax1`, `tax2`) VALUES ('1', 'YEARLY SERVICE ', '', '1000.00', '0', '0', '0');


#
# TABLE STRUCTURE FOR: product_type
#

DROP TABLE IF EXISTS `product_type`;

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('1', 'ND1OKNBTD1516Q2', 'Finecare', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('2', 'E7YEL8AUGSLEAHO', 'RDT', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('3', 'OVNVU3NP73YPN1S', 'Syringe ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('4', 'QH7KJKMMET1GPH9', 'Chemical ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('5', '8T9JDTETVIKP93V', 'Tube', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('6', '1ZQBIM2NEO6JFB9', 'Medication ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('7', '1K49F7OOLF8VPNG', 'Cotton', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('8', 'N4EVJMZ5SOGS1MJ', 'Glove ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('9', 'E8RXIVSMR8E4O2W', 'CBC  Diluent ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('10', 'RW6BG7EZS22VGH6', 'Serology Test ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('11', 'NHMSBZWVW9SIW76', 'Instrument ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('12', 'LJW65QVSH1M1VN7', 'Plaster ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('13', 'LSJXCEKT536X4AY', 'Gauze ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('14', '88QPFCN5CZ3WYLC', 'Tips', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('15', 'BK228SMYXPFUD2E', 'Set ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('16', '9IQD4WJ2P2EQSVJ', 'IV Cannula ', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('17', 'RB7SEKJO1AK5Y4I', 'Glucose Strip', '1');
INSERT INTO `product_type` (`id`, `type_id`, `type_name`, `status`) VALUES ('18', 'CXN4RU3K6F7BGLM', 'Materials', '1');


#
# TABLE STRUCTURE FOR: role_permission
#

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8;

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('1', '1', '1', '1', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('2', '2', '1', '1', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('3', '3', '1', '1', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('4', '4', '1', '1', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('5', '27', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('6', '28', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('7', '29', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('8', '30', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('9', '22', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('10', '23', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('11', '24', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('12', '25', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('13', '26', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('14', '105', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('15', '106', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('16', '31', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('17', '32', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('18', '33', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('19', '34', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('20', '35', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('21', '36', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('22', '77', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('23', '80', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('24', '60', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('25', '61', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('26', '62', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('27', '63', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('28', '81', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('29', '82', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('30', '83', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('31', '84', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('32', '85', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('33', '5', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('34', '6', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('35', '7', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('36', '8', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('37', '9', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('38', '10', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('39', '11', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('40', '12', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('41', '13', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('42', '14', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('43', '15', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('44', '16', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('45', '17', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('46', '18', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('47', '19', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('48', '20', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('49', '21', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('50', '110', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('51', '86', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('52', '87', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('53', '88', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('54', '72', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('55', '73', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('56', '74', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('57', '75', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('58', '76', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('59', '37', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('60', '38', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('61', '39', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('62', '40', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('63', '41', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('64', '42', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('65', '43', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('66', '44', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('67', '45', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('68', '46', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('69', '47', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('70', '48', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('71', '49', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('72', '50', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('73', '51', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('74', '52', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('75', '53', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('76', '54', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('77', '55', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('78', '56', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('79', '57', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('80', '58', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('81', '89', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('82', '90', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('83', '91', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('84', '92', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('85', '93', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('86', '94', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('87', '107', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('88', '108', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('89', '109', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('90', '68', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('91', '69', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('92', '70', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('93', '71', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('94', '64', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('95', '65', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('96', '66', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('97', '67', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('98', '59', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('99', '95', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('100', '96', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('101', '97', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('102', '98', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('103', '99', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('104', '100', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('105', '101', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('106', '102', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('107', '103', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('108', '104', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('109', '1', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('110', '2', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('111', '3', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('112', '4', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('113', '27', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('114', '28', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('115', '29', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('116', '30', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('117', '22', '2', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('118', '23', '2', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('119', '24', '2', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('120', '25', '2', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('121', '26', '2', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('122', '105', '2', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('123', '106', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('124', '31', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('125', '32', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('126', '33', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('127', '34', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('128', '35', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('129', '36', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('130', '77', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('131', '80', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('132', '60', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('133', '61', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('134', '62', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('135', '63', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('136', '81', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('137', '82', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('138', '83', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('139', '84', '2', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('140', '85', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('141', '5', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('142', '6', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('143', '7', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('144', '8', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('145', '9', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('146', '10', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('147', '11', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('148', '12', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('149', '13', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('150', '14', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('151', '15', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('152', '16', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('153', '17', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('154', '18', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('155', '19', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('156', '20', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('157', '21', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('158', '110', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('159', '86', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('160', '87', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('161', '88', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('162', '72', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('163', '73', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('164', '74', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('165', '75', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('166', '76', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('167', '37', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('168', '38', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('169', '39', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('170', '40', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('171', '41', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('172', '42', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('173', '43', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('174', '44', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('175', '45', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('176', '46', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('177', '47', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('178', '48', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('179', '49', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('180', '50', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('181', '51', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('182', '52', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('183', '53', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('184', '54', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('185', '55', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('186', '56', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('187', '57', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('188', '58', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('189', '89', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('190', '90', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('191', '91', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('192', '92', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('193', '93', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('194', '94', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('195', '107', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('196', '108', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('197', '109', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('198', '68', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('199', '69', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('200', '70', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('201', '71', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('202', '64', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('203', '65', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('204', '66', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('205', '67', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('206', '59', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('207', '95', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('208', '96', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('209', '97', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('210', '98', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('211', '99', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('212', '100', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('213', '101', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('214', '102', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('215', '103', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('216', '104', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('217', '1', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('218', '2', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('219', '3', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('220', '4', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('221', '27', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('222', '28', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('223', '29', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('224', '30', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('225', '22', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('226', '23', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('227', '24', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('228', '25', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('229', '26', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('230', '105', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('231', '106', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('232', '31', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('233', '32', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('234', '33', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('235', '34', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('236', '35', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('237', '36', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('238', '77', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('239', '80', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('240', '60', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('241', '61', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('242', '62', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('243', '63', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('244', '81', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('245', '82', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('246', '83', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('247', '84', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('248', '85', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('249', '5', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('250', '6', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('251', '7', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('252', '8', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('253', '9', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('254', '10', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('255', '11', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('256', '12', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('257', '13', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('258', '14', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('259', '15', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('260', '16', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('261', '17', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('262', '18', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('263', '19', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('264', '20', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('265', '21', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('266', '110', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('267', '86', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('268', '87', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('269', '88', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('270', '72', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('271', '73', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('272', '74', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('273', '75', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('274', '76', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('275', '37', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('276', '38', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('277', '39', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('278', '40', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('279', '41', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('280', '42', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('281', '43', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('282', '44', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('283', '45', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('284', '46', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('285', '47', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('286', '48', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('287', '49', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('288', '50', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('289', '51', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('290', '52', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('291', '53', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('292', '54', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('293', '55', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('294', '56', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('295', '57', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('296', '58', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('297', '89', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('298', '90', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('299', '91', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('300', '92', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('301', '93', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('302', '94', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('303', '107', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('304', '108', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('305', '109', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('306', '68', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('307', '69', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('308', '70', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('309', '71', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('310', '64', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('311', '65', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('312', '66', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('313', '67', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('314', '59', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('315', '95', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('316', '96', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('317', '97', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('318', '98', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('319', '99', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('320', '100', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('321', '101', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('322', '102', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('323', '103', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('324', '104', '3', '0', '0', '0', '0');


#
# TABLE STRUCTURE FOR: salary_sheet_generate
#

DROP TABLE IF EXISTS `salary_sheet_generate`;

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: salary_type
#

DROP TABLE IF EXISTS `salary_type`;

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`salary_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sec_role
#

DROP TABLE IF EXISTS `sec_role`;

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `sec_role` (`id`, `type`) VALUES ('1', 'sales');
INSERT INTO `sec_role` (`id`, `type`) VALUES ('2', 'sale manager');
INSERT INTO `sec_role` (`id`, `type`) VALUES ('3', 'General manager');


#
# TABLE STRUCTURE FOR: sec_userrole
#

DROP TABLE IF EXISTS `sec_userrole`;

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime DEFAULT NULL,
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('1', '3', '1', '1', '2025-08-19 10:51:18');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('2', '5', '2', '1', '2025-08-25 06:00:46');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('3', '4', '3', '1', '2025-08-25 06:00:52');


#
# TABLE STRUCTURE FOR: service_invoice
#

DROP TABLE IF EXISTS `service_invoice`;

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_discount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `due_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT '0.00',
  `previous` decimal(10,2) NOT NULL DEFAULT '0.00',
  `details` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: service_invoice_details
#

DROP TABLE IF EXISTS `service_invoice_details`;

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT '0.00',
  `charge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sms_settings
#

DROP TABLE IF EXISTS `sms_settings`;

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `sender_id` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT '0',
  `ispurchase` int(11) NOT NULL DEFAULT '0',
  `isservice` int(11) NOT NULL DEFAULT '0',
  `ispayment` int(11) NOT NULL DEFAULT '0',
  `isreceive` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `sms_settings` (`id`, `url`, `sender_id`, `api_key`, `isinvoice`, `ispurchase`, `isservice`, `ispayment`, `isreceive`) VALUES ('1', 'http://sms.demo.com/smsapi', '88018471369884', 'C20029865c42c504afc7113.77492546', '0', '0', '0', '0', '0');


#
# TABLE STRUCTURE FOR: stock_fixed_asset
#

DROP TABLE IF EXISTS `stock_fixed_asset`;

CREATE TABLE `stock_fixed_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sub_module
#

DROP TABLE IF EXISTS `sub_module`;

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `directory` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('1', '1', 'New Invoice', '', '', 'new_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('2', '1', 'Manage Invoice', '', '', 'manage_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('3', '1', 'POS INVOICE', '', '', 'pos_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('4', '1', 'GUI POS', '', '', 'gui_pos', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('5', '9', 'Chart Of Account', '', '', 'show_tree', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('6', '9', 'Manufacturer Payment', '', '', 'manufacturer_payment', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('7', '9', 'Supplier Payment', '', '', 'supplier_payment', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('8', '9', 'Customer Receive', '', '', 'customer_receive', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('9', '9', 'Debit Voucher', '', '', 'debit_voucher', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('10', '9', 'Credit Voucher', '', '', 'credit_voucher', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('11', '9', 'Contra Voucher', '', '', 'contra_voucher', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('12', '9', 'Journal Voucher', '', '', 'journal_voucher', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('13', '9', 'Voucher Approval', '', '', 'aprove_v', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('14', '9', 'Report', '', '', 'ac_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('15', '9', 'Cash Book', '', '', 'cash_book', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('16', '9', 'Bank Book', '', '', 'bank_book', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('17', '9', 'General Ledger', '', '', 'general_ledger', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('18', '9', 'Inventory Ledger', '', '', 'Inventory_ledger', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('19', '9', 'Cash Flow', '', '', 'cash_flow_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('20', '9', 'Profit Loss Statement', '', '', 'profit_loss_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('21', '9', 'Trial Balance', '', '', 'trial_balance', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('22', '3', 'Category', '', '', 'add_category', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('23', '3', 'Medicine Type', '', '', 'medicine_type', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('24', '3', 'Add Medicine', '', '', 'add_medicine', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('25', '3', 'Import Medicine(CSV)', '', '', 'import_medicine_csv', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('26', '3', 'Manage Medicine', '', '', 'manage_medicine', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('27', '2', 'Add Customer', '', '', 'add_customer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('28', '2', 'Manage Customer', '', '', 'manage_customer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('29', '2', 'Credit Customer', '', '', 'credit_customer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('30', '2', 'Paid Customer', '', '', 'paid_customer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('31', '4', 'Add Manufacturer', '', '', 'add_manufacturer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('32', '4', 'Manage Manufacturer', '', '', 'manage_manufacturer', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('33', '4', 'Manufacturer Ledger', '', '', 'manufacturer_ledger', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('34', '4', 'Manufacturer Sales Details', '', '', 'manufacturer_sales_details', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('35', '5', 'Add Purchase', '', '', 'add_purchase', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('36', '5', 'Manage Purchase', '', '', 'manage_purchase', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('37', '12', 'Add Designation', '', '', 'add_designation', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('38', '12', 'Manage Designation', '', '', 'manage_designation', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('39', '12', 'Add Employee', '', '', 'add_employee', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('40', '12', 'Manage Employee', '', '', 'manage_employee', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('41', '12', 'Add Attendance', '', '', 'add_attendance', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('42', '12', 'Manage Attendance', '', '', 'manage_attendance', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('43', '12', 'Attendance Report', '', '', 'attendance_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('44', '12', 'Add Benefits', '', '', 'add_benefits', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('45', '12', 'Manage Benefits', '', '', 'manage_benefits', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('46', '12', 'Add Salary Setup', '', '', 'add_salary_setup', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('47', '12', 'Manage Salary Setup', '', '', 'manage_salary_setup', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('48', '12', 'Salary Generate', '', '', 'salary_generate', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('49', '12', 'Manage Salary Generate', '', '', 'manage_salary_generate', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('50', '12', 'Salary Payment', '', '', 'salary_payment', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('51', '12', 'Add Expense Item', '', '', 'add_expense_item', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('52', '12', 'Manage Expense Item', '', '', 'manage_expense_item', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('53', '12', 'Add Expense', '', '', 'add_expense', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('54', '12', 'Manage Expense', '', '', 'manage_expense', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('55', '12', 'Add Fixed Assets', '', '', 'add_fixed_assets', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('56', '12', 'Fixed Asset List', '', '', 'fixed_assets_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('57', '12', 'Purchase Fixed Assets', '', '', 'fixed_assets_purchase', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('58', '12', 'Fixed Asset Purchase List', '', '', 'fixed_assets_purchase_manage', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('59', '16', 'Manage Company', '', '', 'manage_company', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('60', '7', 'Return', '', '', 'return', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('61', '7', 'Stock Return List', '', '', 'stock_return_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('62', '7', 'Manufacturer Return List', '', '', 'manufacturer_return_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('63', '7', 'Wastage Return List', '', '', 'wastage_return_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('64', '15', 'Medicine', '', '', 'medicine_search', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('65', '15', 'Customer', '', '', 'customer_search', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('66', '15', 'Invoice', '', '', 'invoice_search', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('67', '15', 'Purchase', '', '', 'purcahse_search', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('68', '14', 'Add Service', '', '', 'create_service', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('69', '14', 'Manage Service', '', '', 'manage_service', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('70', '14', 'Service Invoice', '', '', 'service_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('71', '14', 'Manage Service Invoice', '', '', 'manage_service_invoice', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('72', '11', 'Tax Settings', '', '', 'tax_settings', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('73', '11', 'Add Income Tax', '', '', 'add_incometax', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('74', '11', 'Manage Income Tax', '', '', 'manage_income_tax', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('75', '11', 'Tax Report', '', '', 'tax_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('76', '11', 'Invoice Wise Tax Report', '', '', 'invoice_wise_tax_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('77', '6', 'Stock Report', '', '', 'stock_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('80', '6', 'Stock Report(Batch Wise)', '', '', 'stock_report_batch_wise', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('81', '8', 'Today\'s Report', '', '', 'todays_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('82', '8', 'Sales Report', '', '', 'sales_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('83', '8', 'Purchase Report', '', '', 'purchase_report', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('84', '8', 'Sales Report(Medicine Wise)', '', '', 'sales_report_medicine_wise', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('85', '8', 'Profit/Loss', '', '', 'profit_loss', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('86', '10', 'Add New Bank', '', '', 'add_new_bank', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('87', '10', 'Bank Transaction', '', '', 'bank_transaction', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('88', '10', 'Manage Bank', '', '', 'manage_bank', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('89', '12', 'Add Person(Personal Loan)', '', '', 'office_add_person', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('90', '12', 'Manage Person(Personal Loan)', '', '', 'office_manage_loan', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('91', '12', 'Add Person(Office Loan)', '', '', 'personal_add_person', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('92', '12', 'Add Loan(Office Loan)', '', '', 'personal_add_loan', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('93', '12', 'Add Payment(Office Loan)', '', '', 'personal_add_payment', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('94', '12', 'Manage Loan(Office Loan)', '', '', 'personal_manage_loan', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('95', '16', 'Add User', '', '', 'add_user', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('96', '16', 'Manage Users', '', '', 'manage_users', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('97', '16', 'Lanaguage', '', '', 'language', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('98', '16', 'Currency', '', '', 'currency', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('99', '16', 'Web Setting', '', '', 'soft_setting', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('100', '16', 'Add Role', '', '', 'add_role', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('101', '16', 'Role List', '', '', 'role_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('102', '16', 'Assign User Role', '', '', 'user_assign_role', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('103', '16', 'Permission', '', '', 'permission', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('104', '16', 'SMS', '', '', 'configure_sms', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('105', '3', 'Add Unit', '', '', 'add_unit', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('106', '3', 'Unit List', '', '', 'unit_list', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('107', '13', 'Add Supplier', '', '', 'add_supplier', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('108', '13', 'Manage Supplier', '', '', 'manage_supplier', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('109', '13', 'Supplier Ledger', '', '', 'supplier_ledger', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('110', '9', 'COA Print', '', '', 'coa_print', '1');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('111', '17', 'expense_report', '', '', '', '0');
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES ('112', '18', 'grand/paid profit', '', '', 'grand_paid_profit', '0');


#
# TABLE STRUCTURE FOR: supplier_information
#

DROP TABLE IF EXISTS `supplier_information`;

CREATE TABLE `supplier_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` varchar(100) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `supplier_information` (`id`, `supplier_id`, `supplier_name`, `address`, `mobile`, `details`, `status`) VALUES ('1', 'S6MTVXPX6N5846XBLOGS', 'ADISS SUPLL', '', '', '', '1');


#
# TABLE STRUCTURE FOR: supplier_ledger
#

DROP TABLE IF EXISTS `supplier_ledger`;

CREATE TABLE `supplier_ledger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `d_c` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: synchronizer_setting
#

DROP TABLE IF EXISTS `synchronizer_setting`;

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tax_collection
#

DROP TABLE IF EXISTS `tax_collection`;

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL,
  `tax0` text,
  `tax1` text,
  `tax2` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('1', '2025-07-16', '1', '5247351359', NULL, NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('2', '2025-07-16', '1', '1935352534', NULL, NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('3', '2025-07-31', '2', '7784677163', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('4', '2025-07-31', '1', '7741148249', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('5', '2025-07-31', '1', '8234742463', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('8', '2025-07-31', '1', '3952363222', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('10', '2025-07-31', '1', '5635685645', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('11', '2025-07-31', '1', '6173575641', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('12', '2025-07-31', '1', '2399641192', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('13', '2025-07-31', '1', '9194955997', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('14', '2025-07-31', '1', '1292749434', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('15', '2025-07-31', '1', '8144493413', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('16', '2025-07-31', '1', '6162327188', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('17', '2025-07-31', '1', '3272568797', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('18', '2025-07-31', '1', '8633983145', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('19', '2025-07-31', '1', '7958836427', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('20', '2025-08-01', '1', '3437553829', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('21', '2025-08-01', '1', '3416358999', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('22', '2025-08-01', '1', '1828712927', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('23', '2025-08-01', '1', '4618887976', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('24', '2025-08-01', '1', '8998772616', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('25', '2025-08-01', '1', '9119287572', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('26', '2025-08-01', '1', '1472235217', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('27', '2025-08-01', '1', '6197149656', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('28', '2025-08-01', '1', '5875959626', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('29', '2025-08-01', '1', '5794198627', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('30', '2025-08-01', '1', '2456426478', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('31', '2025-08-01', '1', '4976868621', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('32', '2025-08-01', '1', '9616745934', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('33', '2025-08-01', '1', '8873354913', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('34', '2025-08-01', '1', '5435719828', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('35', '2025-08-01', '1', '8121868252', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('36', '2025-08-01', '1', '5673634891', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('37', '2025-08-01', '1', '4494661686', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('38', '2025-08-01', '1', '3487246323', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('39', '2025-08-01', '1', '9773552183', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('40', '2025-08-02', '3', '9531863124', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('41', '2025-08-02', '3', '2999272936', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('42', '2025-08-19', '1', '9219197765', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('43', '2025-08-19', '3', '1519539456', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('44', '2025-08-19', '3', '5539129265', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('45', '2025-08-19', '3', '5544422543', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('46', '2025-09-09', '5', '7431945468', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('47', '2025-09-13', '6', '7337376655', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('48', '2025-09-13', '7', '7358559413', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('49', '2025-09-13', '8', '6971575623', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('50', '2025-09-16', '9', '9536329322', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('51', '2025-09-16', '10', '3612578812', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('52', '2025-09-16', '11', '3164929197', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('53', '2025-09-19', '13', '6369481177', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('54', '2025-09-19', '14', '6542877568', '0.00', NULL, NULL);
INSERT INTO `tax_collection` (`id`, `date`, `customer_id`, `relation_id`, `tax0`, `tax1`, `tax2`) VALUES ('55', '2025-09-19', '15', '4546727184', '0.00', NULL, NULL);


#
# TABLE STRUCTURE FOR: tax_information
#

DROP TABLE IF EXISTS `tax_information`;

CREATE TABLE `tax_information` (
  `tax_id` varchar(15) NOT NULL,
  `tax` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tax_settings
#

DROP TABLE IF EXISTS `tax_settings`;

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `tax_settings` (`id`, `default_value`, `tax_name`, `nt`, `reg_no`, `is_show`) VALUES ('1', '0', 'vat', '1', '1', '1');


#
# TABLE STRUCTURE FOR: unit
#

DROP TABLE IF EXISTS `unit`;

CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('1', 'PCS', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('2', 'xx', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('3', 'Box', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('4', 'Pack', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('5', 'Pcs', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('6', 'Vial ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('7', 'Ampule ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('8', 'Bag', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('9', 'Bottle ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('10', 'Dozen ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('11', 'Cartoon  ', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('12', 'Jar', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('13', 'Roll', '1');
INSERT INTO `unit` (`id`, `unit_name`, `status`) VALUES ('14', 'lyse', '1');


#
# TABLE STRUCTURE FOR: user_login
#

DROP TABLE IF EXISTS `user_login`;

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('1', 'branatech@gmail.com', 'a34f755cb63521554298debfab64af93', '1', NULL, '1');
INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('5', 'care@gmail.com', '408e753e1ea5a39e5d221400a26754ca', NULL, NULL, '1');
INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('3', 'haftomk2004@gmail.com', 'a34f755cb63521554298debfab64af93', NULL, NULL, '1');
INSERT INTO `user_login` (`user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES ('4', 'tesfahunkalayou12@gmail.com', 'd6e5c4c1fb3525dcf02415b9c03183ee', NULL, NULL, '1');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('1', 'Stock', 'T -', NULL, NULL, 'http://localhost/pms/assets/dist/img/profile_picture/e0c472e6ebd278079c970e2546a5420b.PNG', '1');
INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('5', 'wholesale', 'Care', NULL, NULL, NULL, '1');
INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('3', 'kiros', 'haftom', NULL, NULL, NULL, '1');
INSERT INTO `users` (`user_id`, `last_name`, `first_name`, `gender`, `date_of_birth`, `logo`, `status`) VALUES ('4', 'Kalayou', 'Tesfahun', NULL, NULL, NULL, '1');


#
# TABLE STRUCTURE FOR: web_setting
#

DROP TABLE IF EXISTS `web_setting`;

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(200) DEFAULT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT '1' COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT '1',
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES ('1', 'http://localhost/pms/./my-assets/image/logo/981ec4e5d09a65da3358cbc16555e97c.PNG', 'http://softest8.bdtask.com/pharmacysasmodel/my-assets/image/logo/ef9ff92adbea3b2d1afe4cfa8b02c04c.png', 'http://softest8.bdtask.com/pharmacysasmodel/my-assets/image/logo/ba8f3211bb73f7bcc05f7a3b5b91aef6.png', 'birr', 'Asia/Dhaka', '0', 'CopyrightÂ© 2019 tesfu. All rights reserved.', 'english', '0', '1', '', '', '1');


