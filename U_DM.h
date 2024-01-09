//---------------------------------------------------------------------------

#ifndef U_DMH
#define U_DMH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Phys.MSSQL.hpp>
#include <FireDAC.Phys.MSSQLDef.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
//---------------------------------------------------------------------------
class TDM : public TDataModule
{
__published:	// IDE-managed Components
	TFDConnection *BAZA;
	TFDQuery *Q_AUTENTIFICARE;
	TFDQuery *QLIBER;
	TFDQuery *QUM;
	TDataSource *DSQUM;
	TDataSource *DSQPRODUS;
	TFDQuery *QPRODUS;
	TDataSource *DSQFACTUA;
	TFDQuery *QFACTURA;
	TFDQuery *QEMITENT;
	TDataSource *DSQEMITENT;
	TFDAutoIncField *QEMITENTEMITENT_ID;
	TStringField *QEMITENTDENUMIRE;
	TStringField *QEMITENTIDNO;
	TStringField *QEMITENTADRESA;
	TFDAutoIncField *QPRODUSPRODUSE_ID;
	TStringField *QPRODUSDENUMIRE;
	TStringField *QPRODUSCOD_PRODUS;
	TFDAutoIncField *QUMUNIT_MASURA_ID;
	TStringField *QUMABREVIERE;
	TStringField *QUMNUME;
	TFDStoredProc *PINSFACTURA;
	TFDAutoIncField *QFACTURARECEPTIE_ID;
	TIntegerField *QFACTURAPRODUSE_ID;
	TIntegerField *QFACTURAUNIT_MASURA_ID;
	TIntegerField *QFACTURAFACTURA_REC_ID;
	TIntegerField *QFACTURAFIRMA_OPERATOR_ID;
	TIntegerField *QFACTURASTOCK1;
	TIntegerField *QFACTURASTOCK2;
	TBCDField *QFACTURAPRET_INTRARE;
	TBCDField *QFACTURAPRET_VANZ;
	TIntegerField *QFACTURATVA;
	TFDAutoIncField *QFACTURAFACTURA_REC_ID_1;
	TStringField *QFACTURANR_FACTURA;
	TDateField *QFACTURADATA_FACTURA;
	TIntegerField *QFACTURAEMITENT_ID;
	TFDAutoIncField *QFACTURAPRODUSE_ID_1;
	TStringField *QFACTURADENUMIRE;
	TStringField *QFACTURACOD_PRODUS;
	TFDAutoIncField *QFACTURAUNIT_MASURA_ID_1;
	TStringField *QFACTURAABREVIERE;
	TStringField *QFACTURANUME;
	TFDAutoIncField *QFACTURAEMITENT_ID_1;
	TStringField *QFACTURADENUMIRE_1;
	TStringField *QFACTURAIDNO;
	TStringField *QFACTURAADRESA;
	TFDQuery *QDATEFACTURA;
	TDataSource *DSDATEFACTURA;
	TFDAutoIncField *QDATEFACTURAEMITENT_ID;
	TFDAutoIncField *QDATEFACTURAFACTURA_REC_ID;
	TDateField *QDATEFACTURADATA_FACTURA;
	TStringField *QDATEFACTURANR_FACTURA;
	TStringField *QDATEFACTURAFIRMA;
	TIntegerField *QDATEFACTURANR_POZ;
	TFMTBCDField *QDATEFACTURAPRET_INTRARE;
	TFMTBCDField *QDATEFACTURAPRET_VANZARE;
	TFDStoredProc *PCEC;
	TFDQuery *QVANZARE;
	TDataSource *DSVANZARE;
	TFDQuery *QLISTACEC;
	TDataSource *DSLISTACEC;
private:	// User declarations
public:		// User declarations
	__fastcall TDM(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDM *DM;
//---------------------------------------------------------------------------
#endif
