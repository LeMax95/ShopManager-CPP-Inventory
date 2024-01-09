//---------------------------------------------------------------------------

#ifndef ULISTACECcppH
#define ULISTACECcppH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TFDATECEC : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TPanel *Panel2;
	TLabel *Label1;
	TDateTimePicker *DateTimePicker1;
	TDateTimePicker *DateTimePicker2;
	TBitBtn *BitBtn1;
	TBitBtn *BitBtn2;
	TPageControl *PageControl1;
	TTabSheet *TabSheet1;
	TTabSheet *TabSheet2;
	TDBGrid *DBGrid1;
	TDBGrid *DBGrid2;
private:	// User declarations
public:		// User declarations
	__fastcall TFDATECEC(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFDATECEC *FDATECEC;
//---------------------------------------------------------------------------
#endif
