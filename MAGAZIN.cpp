//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("U_AUTENTIFICARE.cpp", F_AUTENTIFICARE);
USEFORM("U_DM.cpp", DM); /* TDataModule: File Type */
USEFORM("U_RECEPTIE.cpp", FRECEPTIE);
USEFORM("..\..\..\..\Downloads\MAGAZIN LPD\MAGAZIN LPD\UMAIN.cpp", FMAIN);
USEFORM("ULISTACECcpp.cpp", FDATECEC);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TFMAIN), &FMAIN);
		Application->CreateForm(__classid(TF_AUTENTIFICARE), &F_AUTENTIFICARE);
		Application->CreateForm(__classid(TFRECEPTIE), &FRECEPTIE);
		Application->CreateForm(__classid(TDM), &DM);
		Application->CreateForm(__classid(TFDATECEC), &FDATECEC);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
