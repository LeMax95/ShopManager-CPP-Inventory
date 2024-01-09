//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ULISTACECcpp.h"
#include "U_AUTENTIFICARE.h"
#include "U_DM.h"
#include "U_RECEPTIE.h"
#include "UMAIN.h"
#include "MAGAZINPCH2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFDATECEC *FDATECEC;
INT CEC_ID;
//---------------------------------------------------------------------------
__fastcall TFDATECEC::TFDATECEC(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFDATECEC::BitBtn1Click(TObject *Sender)
{

AnsiString s;
double s_cec,s_discount,s_achitat;

s= " SELECT O.NUME+' '+O.PRENUME AS OPERATOR, ";
s+=" CEC.SUMA_CEC AS SUMA_ACHITATA, CEC.NR_POZ AS NR_POZ, ";
s+=" CEC.NR_CEC AS NR_CEC, CEC.DATA_CEC AS DATA_CEC,CEC.CEC_ID AS CEC_ID, ";
s+=" CAST(D.VALOAREA AS varchar(30)) + '%'  AS DISCOUNT, ";
s+=" SUM(V.SUMA) AS SUMA_INITIALA, ";
s+=" SUM(V.SUMA)-CEC.SUMA_CEC AS SUMA_DISCOUN, ";
s+= "(select SUM(V.SUMA) FROM VANZARE V) AS TOTAL_SUMA_INITIALA, ";
s+= "(select SUM(V.SUMA) FROM VANZARE V)-(SELECT SUM(SUMA_CEC) FROM CEC) AS TOTAL_SUMA_DISCOUNT, ";
s+= "(SELECT SUM(SUMA_CEC) FROM CEC) AS TOTAL_SUMA_ACHITATA ";
s+=" FROM FIRMA_OPERATOR FO ";
s+=" INNER JOIN OPERATOR O ON O.OPERATOR_ID=FO.OPERATOR_ID " ;
s+=" INNER JOIN CEC CEC ON CEC.FIRMA_OPERATOR_ID=FO.FIRMA_OPERATOR_ID " ;
s+=" INNER JOIN VANZARE V ON V.CEC_ID = CEC.CEC_ID " ;
s+=" INNER JOIN CLIENT CL ON CL.CLIENT_ID=CEC.CLIENT_ID " ;
s+=" INNER JOIN DISCOUNT D ON D.DISCOUNT_ID = CL.DISCOUNT_ID ";

s+=" WHERE DATA_CEC BETWEEN :D1 AND :D2  ";

	if(DM->Q_AUTENTIFICARE->FieldByName("TIP_ACCES")->AsInteger!=1)
	s+=" AND CEC.FIRMA_OPERATOR_ID=:FIRMA_OPERATOR_ID ";

s+=" GROUP BY CEC.CEC_ID,O.NUME+' '+O.PRENUME,CEC.SUMA_CEC,D.VALOAREA,CEC.NR_POZ,CEC.NR_CEC,CEC.DATA_CEC ";
s+=" order by data_cec " ;




DM->QLISTACEC->Close();
DM->QLISTACEC->SQL->Clear();
DM->QLISTACEC->SQL->Add(s);

DM->QLISTACEC->ParamByName("D1")->AsDate=DateTimePicker1->Date;
DM->QLISTACEC->ParamByName("D2")->AsDate=DateTimePicker2->Date;

if(DM->Q_AUTENTIFICARE->FieldByName("TIP_ACCES")->AsInteger!=1)
DM->QLISTACEC->ParamByName("FIRMA_OPERATOR_ID")->AsInteger=F_AUTENTIFICARE->UTILIZATOR_ID;

DM->QLISTACEC->Open();

 s_cec = DM->QLISTACEC->FieldByName("TOTAL_SUMA_INITIALA")->AsFloat;
 s_discount = DM->QLISTACEC->FieldByName("TOTAL_SUMA_DISCOUNT")->AsFloat;
 s_achitat = DM->QLISTACEC->FieldByName("TOTAL_SUMA_ACHITATA")->AsFloat;

 TOTAL_SUMA_INITIALA->Text = s_cec;
 TOTAL_SUMA_DISCOUNT->Text = s_discount;
 TOTAL_SUMA_ACHITATA->Text = s_achitat;
}
//---------------------------------------------------------------------------
void __fastcall TFDATECEC::DBGrid2DblClick(TObject *Sender)
{
DM->QVANZARE->Close();
DM->QVANZARE->ParamByName("CEC_ID")->AsInteger = DM->QLISTACEC->FieldByName("CEC_ID")->AsInteger;
DM->QVANZARE->Open();
PageControl1->ActivePageIndex = 1;
}
//---------------------------------------------------------------------------
