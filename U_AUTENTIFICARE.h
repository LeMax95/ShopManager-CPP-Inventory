//---------------------------------------------------------------------------

#ifndef U_AUTENTIFICAREH
#define U_AUTENTIFICAREH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Imaging.pngimage.hpp>
//---------------------------------------------------------------------------
class TF_AUTENTIFICARE : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TImage *Image1;
	TComboBox *FILIALA;
	TEdit *UTILIZATOR;
	TEdit *PAROLA;
	TSpeedButton *AUTENTIFICA_B;
	TSpeedButton *ANULEAZA_B;
	void __fastcall ANULEAZA_BClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall AUTENTIFICA_BClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TF_AUTENTIFICARE(TComponent* Owner);
    int UTILIZATOR_ID;
};
//---------------------------------------------------------------------------
extern PACKAGE TF_AUTENTIFICARE *F_AUTENTIFICARE;
//---------------------------------------------------------------------------
#endif
