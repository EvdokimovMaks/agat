//******************************************************************************
//                                                      (c) ��௮��� �����⨪�
// �����⨪� 9.1
// ���㫠 - ����⠭��
//
//******************************************************************************

const
  ctResultsFolder = 'resultsfolder';
  ctSubFolder     = 'subfolder';
  ctSaveImages    = 'saveimages';

  // enum eVisualFieldType{
  ft_Document_Class_Code = 0;
  ft_Issuing_State_Code = 1;
  ft_Document_Number = 2;
  ft_Date_of_Expiry = 3;
  ft_Date_of_Issue = 4;
  ft_Date_of_Birth = 5;
  ft_Place_of_Birth = 6;
  ft_Personal_Number = 7;
  ft_Surname = 8;
  ft_Given_Names = 9;
  ft_Mothers_Name = 10;
  ft_Nationality = 11;
  ft_Sex = 12;
  ft_Height = 13;
  ft_Weight = 14;
  ft_Eyes_Color = 15;
  ft_Hair_Color = 16;
  ft_Address = 17;
  ft_Donor = 18;
  ft_Social_Security_Number = 19;
  ft_DL_Class = 20;
  ft_DL_Endorsed = 21;
  ft_DL_Restriction_Code = 22;
  ft_DL_Under_21_Date = 23;
  ft_Authority = 24;
  ft_Surname_And_Given_Names = 25;
  ft_Nationality_Code = 26;

  // --- VISA Field Types (added 01.05.2005) ----------
  ft_Passport_Number = 27;
  ft_Invitation_Number = 28;
  ft_Visa_ID = 29;
  ft_Visa_Class = 30;
  ft_Visa_SubClass = 31;

  ft_MRZ_String1 = 32;
  ft_MRZ_String2 = 33;
  ft_MRZ_String3 = 34;
  ft_MRZ_Type = 35;
  ft_Optional_Data = 36;
  ft_Document_Class_Name = 37;
  ft_Issuing_State_Name = 38;
  ft_Place_of_Issue = 39;

  ft_Document_Number_Checksum = 40;
  ft_Date_of_Birth_Checksum = 41;
  ft_Date_of_Expiry_Checksum = 42;
  ft_Personal_Number_Checksum = 43;
  ft_FinalChecksum = 44;

  // --- VISA Field Types (added 01.05.2005) ----------
  ft_Passport_Number_Checksum = 45;
  ft_Invitation_Number_Checksum = 46;
  ft_Visa_ID_Checksum = 47;
  ft_Surname_And_Given_Names_Checksum = 48;
  ft_Visa_Valid_Until_Checksum = 49;

  ft_Other = 50;

  ft_MRZ_Strings = 51;

  // ------- Add 27.02.2006 for BARCODES ------------
  ft_Name_Suffix = 52;
  ft_Name_Prefix = 53;

  ft_Date_of_Issue_Checksum = 54;
  ft_Date_of_Issue_CheckDigit = 55;

  // ------- Add 05.03.2007  ------------------------
  ft_Document_Series = 56;

  ft_RegCert_RegNumber = 57;
  ft_RegCert_CarModel = 58;
  ft_RegCert_CarColor = 59;
  ft_RegCert_BodyNumber = 60;
  ft_RegCert_CarType = 61;
  ft_RegCert_MaxWeight = 62;
  ft_RegCert_Weight = 63;

  ft_Address_Area = 64;
  ft_Address_State = 65;
  ft_Address_Building = 66;
  ft_Address_House = 67;
  ft_Address_Flat = 68;

  ft_Place_of_Registration = 69;
  ft_Date_of_Registration = 70;
  ft_Resident_From = 71;
  ft_Resident_Until = 72;
  ft_Authority_Code = 73;
  ft_Place_of_Birth_Area = 74;
  ft_Place_of_Birth_StateCode = 75;

  ft_Address_Street = 76; // Street portion of the cardholder address.
  ft_Address_City = 77; // City portion of the cardholder address.
  ft_Address_Jurisdiction_Code = 78; // Jurisdiction Code - State portion of the cardholder address.
  ft_Address_Postal_Code = 79; // Postal code portion of the cardholder address in the U.S. and Canada.

  // MRZ recognized checkdigits
  ft_Document_Number_CheckDigit = 80;
  ft_Date_of_Birth_CheckDigit = 81;
  ft_Date_of_Expiry_CheckDigit = 82;
  ft_Personal_Number_CheckDigit = 83;
  ft_FinalCheckDigit = 84;
  ft_Passport_Number_CheckDigit = 85;
  ft_Invitation_Number_CheckDigit = 86;
  ft_Visa_ID_CheckDigit = 87;
  ft_Surname_And_Given_Names_CheckDigit = 88;
  ft_Visa_Valid_Until_CheckDigit = 89;

  ft_Permit_DL_Class = 90;
  ft_Permit_Date_of_Expiry = 91;
  ft_Permit_Identifier = 92;
  ft_Permit_Date_of_Issue = 93;
  ft_Permit_Restriction_Code = 94;
  ft_Permit_Endorsed = 95;

  ft_Issue_Timestamp = 96; // A string used by some jurisdictions to validate the document against their database.
  ft_Number_of_Duplicates = 97;
  ft_Medical_Indicator_Codes = 98;
  ft_Non_Resident_Indicator = 99; // Used by some jurisdictions

  // ------- Added 04.05.2005 for VISA ------------
  ft_Visa_Type = 100;
  ft_Visa_Valid_From = 101;
  ft_Visa_Valid_Until = 102;
  ft_Duration_of_Stay = 103;
  ft_Number_of_Entries = 104;

  // ------- Add 07.06.2005 for SUBFIELDS ------------
  ft_Day = 105;
  ft_Month = 106;
  ft_Year = 107;

  // to indicate holder of the
  // document is a non-resident.
  ft_Unique_Customer_Identifier = 108;
  // A number or alphanumeric string used by some jurisdictions to identify a "customer" across multiple data bases.
  ft_Commercial_Vehicle_Codes = 109; // Federal Commercial Vehicle Codes
  // Federally established codes for vehicle
  // categories, endorsements, and restrictions that
  // are generally applicable to commercial motor
  // vehicles. If the vehicle is not a commercial
  // vehicle, "NONE" is to be entered.
  // AKA (also known as)
  ft_AKA_Date_of_Birth = 110;
  ft_AKA_Social_Security_Number = 111;
  ft_AKA_Surname = 112;
  ft_AKA_Given_Names = 113;
  ft_AKA_Name_Suffix = 114;
  ft_AKA_Name_Prefix = 115;

  ft_Mailing_Address_Street = 116; // (Mailing Street Address)
  ft_Mailing_Address_City = 117; // (Mailing City Address)
  ft_Mailing_Address_Jurisdiction_Code = 118; // (Mailing Jurisdiction Code - State portion of the cardholder address)
  ft_Mailing_Address_Postal_Code = 119; // (Mailing Postal code portion of the cardholder address)
  ft_Audit_Information = 120; // (Audit information)
  ft_Inventory_Number = 121; // (Inventory control number)
  ft_Race_Ethnicity = 122; // (Race/ethnicity)
  ft_Jurisdiction_Vehicle_Class = 123; // (Jurisdiction Vehicle Class)
  ft_Jurisdiction_Endorsement_Code = 124; // (Jurisdiction Endorsement Code)
  ft_Jurisdiction_Restriction_Code = 125; // (Jurisdiction Restriction Code)

  ft_Family_Name = 126; // 䠬���� �������� ���㬥�� (���᪠� �࠭�ਯ��)
  ft_Given_Names_RUS = 127; // ��� �������� ���㬥�� (���᪠� �࠭�ਯ��)
  ft_Visa_ID_RUS = 128; // �����䨪�樮��� ����� ���� (���᪠� �࠭�ਯ�� �� ���. ����)
  ft_Fathers_Name = 129; // ����⢮ �������� ���㬥��
  ft_Fathers_Name_RUS = 130; // ����⢮ �������� ���㬥�� (���᪠� �࠭�ਯ��)
  ft_Surname_And_Given_Names_RUS = 131; // ��� (������� �⤥���� �� ����� �஡����)
  ft_Place_Of_Birth_RUS = 132;
  ft_Authority_RUS = 133;
  ft_Issuing_State_Code_Numeric = 134;
  // ��� ���㤠��⢠ �뤠� ���㬥�� (three-digit country code defined in ISO 3166-1)
  ft_Nationality_Code_Numeric = 135; // ��� ��樮���쭮��

  ft_Engine_Power = 136;
  ft_Engine_Volume = 137;
  ft_Chassis_Number = 138;
  ft_Engine_Number = 139;
  ft_Engine_Model = 140;
  ft_Vehicle_Category = 141;

  ft_Identity_Card_Number = 142;
  ft_Control_No = 143;

  ft_Parrent_s_Given_Names = 144; // ����� ����⥫�� �������� ���㬥��
  ft_Second_Surname = 145; // ���� 䠬���� ��
  ft_Middle_Name = 146;

  // add 25/08/2010 for Poland Registration Certificate (Vehicle)
  ft_RegCert_VIN = 147; // Vehicle Identification Number
  ft_RegCert_VIN_CheckDigit = 148; // VIN Check Digit
  ft_RegCert_VIN_Checksum = 149; // VIN CheckSum Check Result
  ft_Line1_CheckDigit = 150; // Line 1 Check Digit
  ft_Line2_CheckDigit = 151; // Line 2 Check Digit
  ft_Line3_CheckDigit = 152; // Line 3 Check Digit
  ft_Line1_Checksum = 153; // Line 1 CheckSum Check Result
  ft_Line2_Checksum = 154; // Line 2 CheckSum Check Result
  ft_Line3_Checksum = 155; // Line 3 CheckSum Check Result
  ft_RegCert_RegNumber_CheckDigit = 156; // Registration number (License plates) Check Digit
  ft_RegCert_RegNumber_Checksum = 157; // Registration number (License plates) CheckSum Check Result
  ft_RegCert_Vehicle_ITS_Code = 158; // Vehicle ITS code (from the catalog of the Motor Transport Institute).

  ft_Card_Access_Number = 159; // Card Access Number.
  ft_Marital_Status = 160;
  ft_Company_Name = 161;

  ft_Special_Notes = 162;
  ft_Surname_of_Spose = 163;
  ft_Tracking_Number = 164;
  ft_Booklet_Number = 165;
  ft_Children = 166;
  ft_Copy = 167;
  ft_Serial_Number = 168;
  ft_Dossier_Number = 169;
  ft_AKA_Surname_And_Given_Names = 170;
  ft_Territorial_Validity = 171;

  ft_MRZ_Strings_With_Correct_CheckSums = 172;

  ft_DL_CDL_Restriction_Code = 173;
  ft_DL_Under_18_Date = 174;
  ft_DL_Record_Created = 175;
  ft_DL_Duplicate_Date = 176;
  ft_DL_Iss_Type = 177;

  ft_Military_Book_Number = 178;
  ft_Destination = 179;
  ft_Blood_Group = 180;
  ft_Sequence_Number = 181;
  ft_RegCert_BodyType = 182;
  ft_RegCert_CarMark = 183;
  ft_Transaction_Number = 184;
  ft_Age = 185;
  ft_Folio_Number = 186;
  ft_Voter_Key = 187;
  ft_Address_Municipality = 188;
  ft_Address_Location = 189;
  ft_Section = 190;
  ft_OCR_Number = 191;
  ft_Federal_Elections = 192;
  ft_Reference_Number = 193;
  ft_Optional_Data_Checksum = 194; // for Russian National Passport
  ft_Optional_Data_CheckDigit = 195; // for Russian National Passport
  ft_Visa_Number = 196; // for Visas
  ft_Visa_Number_Checksum = 197; // for Visas
  ft_Visa_Number_CheckDigit = 198; // for Visas
  ft_Voter = 199;
  ft_Previous_Type = 200;

  ft_FieldFromMRZ = 220; // ��१�ࢨ஢��� ��� ����७���� �ᯮ�짮�����
  ft_CurrentDate = 221;

  ft_Status_Date_of_Expiry = 251;
  ft_Banknote_Number = 252;
  ft_CSC_Code = 253;
  ft_Artistic_Name = 254;
  ft_Academic_Title = 255;
  ft_Adress_Country = 256;
  ft_Adress_Zipcode = 257;
  ft_eID_Residence_Permit1 = 258;
  ft_eID_Residence_Permit2 = 259;
  ft_eID_PlaceOfBirth_Street = 260;
  ft_eID_PlaceOfBirth_City = 261;
  ft_eID_PlaceOfBirth_State = 262;
  ft_eID_PlaceOfBirth_Country = 263;
  ft_eID_PlaceOfBirth_Zipcode = 264;
  ft_CDL_Class = 265;
  ft_DL_Under_19_Date = 266;
  ft_Weight_pounds = 267;
  ft_Limited_Duration_Document_Indicator = 268;
  ft_Endorsement_Expiration_Date = 269;
  ft_Revision_Date = 270;
  ft_Compliance_Type = 271;
  ft_Family_name_truncation = 272;
  ft_First_name_truncation = 273;
  ft_Middle_name_truncation = 274;
  ft_Exam_Date = 275;
  ft_Organization = 276;
  ft_Department = 277;
  ft_Pay_Grade = 278;
  ft_Rank = 279;
  ft_Benefits_Number = 280;
  ft_Sponsor_Service = 281;
  ft_Sponsor_Status = 282;
  ft_Sponsor = 283;
  ft_Relationship = 284;
  ft_USCIS = 285;
  ft_Category = 286;
  ft_Conditions = 287;
  ft_Identifier = 288;
  ft_Configuration = 289;
  ft_Discretionary_data = 290;
  ft_Line1_Optional_Data = 291;
  ft_Line2_Optional_Data = 292;
  ft_Line3_Optional_Data = 293;
  ft_EQV_Code = 294;
  ft_ALT_Code = 295;
  ft_Binary_Code = 296;
  ft_Pseudo_Code = 297;
  ft_Fee = 298;
  ft_Stamp_Number = 299;
  ft_GNIB_Number = 340;
  ft_Dept_Number = 341;
  ft_Telex_Code = 342;
  ft_Allergies = 343;
  ft_Sp_Code = 344;
  ft_Court_Code = 345;
  ft_Cty = 346;
  ft_Sponsor_SSN = 347;
  ft_DoD_Number = 348;
  ft_MC_Novice_Date = 349;
  ft_DUF_Number = 350;
  ft_AGY = 351;
  ft_PNR_Code = 352;
  ft_From_Airport_Code = 353;
  ft_To_Airport_Code = 354;
  ft_Flight_Number = 355;
  ft_Date_of_Flight = 356;
  ft_Seat_Number = 357;
  ft_Date_of_Issue_Boarding_Pass = 358;
  ft_CCW_Until = 359;
  ft_Reference_Number_Checksum = 360;
  ft_Reference_Number_CheckDigit = 361;
  ft_Room_Number = 362;
  ft_Religion = 363;
  ft_RemainderTerm = 364;
  ft_Electronic_Ticket_Indicator = 365;
  ft_Compartment_Code = 366;
  ft_CheckIn_Sequence_Number = 367;
  ft_Airline_Designator_of_boarding_pass_issuer = 368;
  ft_Airline_Numeric_Code = 369;
  ft_Ticket_Number = 370;
  ft_Frequent_Flyer_Airline_Designator = 371;
  ft_Frequent_Flyer_Number = 372;
  ft_Free_Baggage_Allowance = 373;
  ft_PDF417Codec = 374;
  ft_Identity_Card_Number_Checksum = 375; // for Spain Residence permit (1997-2010) Side B
  ft_Identity_Card_Number_CheckDigit = 376; // for Spain Residence permit (1997-2010) Side B
  ft_Veteran = 377; // Veteran indicator - for USA DL
  ft_DLClassCode_A1_From = 378;
  ft_DLClassCode_A1_To = 379;
  ft_DLClassCode_A1_Notes = 380;
  ft_DLClassCode_A_From = 381;
  ft_DLClassCode_A_To = 382;
  ft_DLClassCode_A_Notes = 383;
  ft_DLClassCode_B_From = 384;
  ft_DLClassCode_B_To = 385;
  ft_DLClassCode_B_Notes = 386;
  ft_DLClassCode_C1_From = 387;
  ft_DLClassCode_C1_To = 388;
  ft_DLClassCode_C1_Notes = 389;
  ft_DLClassCode_C_From = 390;
  ft_DLClassCode_C_To = 391;
  ft_DLClassCode_C_Notes = 392;
  ft_DLClassCode_D1_From = 393;
  ft_DLClassCode_D1_To = 394;
  ft_DLClassCode_D1_Notes = 395;
  ft_DLClassCode_D_From = 396;
  ft_DLClassCode_D_To = 397;
  ft_DLClassCode_D_Notes = 398;
  ft_DLClassCode_BE_From = 399;
  ft_DLClassCode_BE_To = 400;
  ft_DLClassCode_BE_Notes = 401;
  ft_DLClassCode_C1E_From = 402;
  ft_DLClassCode_C1E_To = 403;
  ft_DLClassCode_C1E_Notes = 404;
  ft_DLClassCode_CE_From = 405;
  ft_DLClassCode_CE_To = 406;
  ft_DLClassCode_CE_Notes = 407;
  ft_DLClassCode_D1E_From = 408;
  ft_DLClassCode_D1E_To = 409;
  ft_DLClassCode_D1E_Notes = 410;
  ft_DLClassCode_DE_From = 411;
  ft_DLClassCode_DE_To = 412;
  ft_DLClassCode_DE_Notes = 413;
  ft_DLClassCode_M_From = 414;
  ft_DLClassCode_M_To = 415;
  ft_DLClassCode_M_Notes = 416;
  ft_DLClassCode_L_From = 417;
  ft_DLClassCode_L_To = 418;
  ft_DLClassCode_L_Notes = 419;
  ft_DLClassCode_T_From = 420;
  ft_DLClassCode_T_To = 421;
  ft_DLClassCode_T_Notes = 422;
  ft_DLClassCode_AM_From = 423;
  ft_DLClassCode_AM_To = 424;
  ft_DLClassCode_AM_Notes = 425;
  ft_DLClassCode_A2_From = 426;
  ft_DLClassCode_A2_To = 427;
  ft_DLClassCode_A2_Notes = 428;
  ft_DLClassCode_B1_From = 429;
  ft_DLClassCode_B1_To = 430;
  ft_DLClassCode_B1_Notes = 431;
  ft_Surname_at_Birth = 432;
  ft_Civil_Status = 433;
  ft_Number_of_Seats = 434;
  ft_Number_of_Standing_Places = 435;
  ft_Max_Speed = 436;
  ft_Fuel_Type = 437;
  ft_EC_Environmental_Type = 438;
  ft_Power_Weight_Ratio = 439;
  ft_Max_Mass_of_Trailer_Braked = 440;
  ft_Max_Mass_of_Trailer_Unbraked = 441;
  ft_Transmission_Type = 442;
  ft_Trailer_Hitch = 443;
  ft_Accompanied_by = 444;
  ft_Police_District = 445;
  ft_First_Issue_Date = 446;
  ft_Payload_Capacity = 447;
  ft_Number_of_Axels = 448;
  ft_Permissible_Axle_Load = 449;
  ft_Precinct = 450;
  ft_Invited_by = 451;
  ft_Purpose_of_Entry = 452;
  ft_Skin_Color = 453;
  ft_Complexion = 454;
  ft_Airport_From = 455;
  ft_Airport_To = 456;
  ft_Airline_Name = 457;
  ft_Airline_Name_Frequent_Flyer = 458;
  ft_License_Number = 459;
  ft_In_Tanks = 460;
  ft_Exept_In_Tanks = 461;
  ft_Fast_Track = 462;
  ft_Owner = 463;
  ft_MRZ_Strings_ICAO_RFID = 464;
  ft_Number_of_Card_Issuance = 465;
  // the number of times a card with this number has been issued
  ft_Number_of_Card_Issuance_Checksum = 466;
  ft_Number_of_Card_Issuance_CheckDigit = 467;
  ft_Century_Date_of_Birth = 468;
  ft_DLClassCode_A3_From = 469;
  ft_DLClassCode_A3_To = 470;
  ft_DLClassCode_A3_Notes = 471;
  ft_DLClassCode_C2_From = 472;
  ft_DLClassCode_C2_To = 473;
  ft_DLClassCode_C2_Notes = 474;
  ft_DLClassCode_B2_From = 475;
  ft_DLClassCode_B2_To = 476;
  ft_DLClassCode_B2_Notes = 477;
  ft_DLClassCode_D2_From = 478;
  ft_DLClassCode_D2_To = 479;
  ft_DLClassCode_D2_Notes = 480;
  ft_DLClassCode_B2E_From = 481;
  ft_DLClassCode_B2E_To = 482;
  ft_DLClassCode_B2E_Notes = 483;
  ft_DLClassCode_G_From = 484;
  ft_DLClassCode_G_To = 485;
  ft_DLClassCode_G_Notes = 486;
  ft_DLClassCode_J_From = 487;
  ft_DLClassCode_J_To = 488;
  ft_DLClassCode_J_Notes = 489;
  ft_DLClassCode_LC_From = 490;
  ft_DLClassCode_LC_To = 491;
  ft_DLClassCode_LC_Notes = 492;
end;
