object DM: TDM
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object BAZA: TFDConnection
    Params.Strings = (
      'Server=DESKTOP-570BPIO'
      'Database=MAGAZIN'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object Q_AUTENTIFICARE: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      
        'SELECT F.NUME AS FIRMA,FO.TIP_ACCES AS ACCES,O.NUME + '#39' '#39'+O.PREN' +
        'UME AS NPP,*'
      
        'FROM FIRMA F INNER JOIN FIRMA_OPERATOR FO ON F.FIRMA_ID = FO.FIR' +
        'MA_ID'
      #9#9#9' INNER JOIN OPERATOR O ON O.OPERATOR_ID = FO.OPERATOR_ID'
      #9#9#9' WHERE F.NUME = :NUME AND USERNAME=:USERNAME AND PASS=:PASS')
    Left = 56
    Top = 136
    ParamData = <
      item
        Name = 'NUME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USERNAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object QLIBER: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      
        'SELECT F.NUME AS FIRMA,FO.TIP_ACCES AS ACCES,O.NUME + '#39' '#39'+O.PREN' +
        'UME AS NPP,*'
      
        'FROM FIRMA F INNER JOIN FIRMA_OPERATOR FO ON F.FIRMA_ID = FO.FIR' +
        'MA_ID'
      #9#9#9' INNER JOIN OPERATOR O ON O.OPERATOR_ID = FO.OPERATOR_ID'
      #9#9#9' WHERE F.NUME = :NUME AND USERNAME=:USERNAME AND PASS=:PASS')
    Left = 56
    Top = 248
    ParamData = <
      item
        Name = 'NUME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'USERNAME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PASS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object QUM: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      'SELECT * FROM UNIT_MASURA')
    Left = 232
    Top = 48
    object QUMUNIT_MASURA_ID: TFDAutoIncField
      FieldName = 'UNIT_MASURA_ID'
      Origin = 'UNIT_MASURA_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QUMABREVIERE: TStringField
      FieldName = 'ABREVIERE'
      Origin = 'ABREVIERE'
      Size = 5
    end
    object QUMNUME: TStringField
      FieldName = 'NUME'
      Origin = 'NUME'
      Size = 10
    end
  end
  object DSQUM: TDataSource
    DataSet = QUM
    Left = 328
    Top = 48
  end
  object DSQPRODUS: TDataSource
    DataSet = QPRODUS
    Left = 328
    Top = 144
  end
  object QPRODUS: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      'SELECT * FROM PRODUSE')
    Left = 232
    Top = 144
    object QPRODUSPRODUSE_ID: TFDAutoIncField
      FieldName = 'PRODUSE_ID'
      Origin = 'PRODUSE_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QPRODUSDENUMIRE: TStringField
      FieldName = 'DENUMIRE'
      Origin = 'DENUMIRE'
      Size = 30
    end
    object QPRODUSCOD_PRODUS: TStringField
      FieldName = 'COD_PRODUS'
      Origin = 'COD_PRODUS'
    end
  end
  object DSQFACTUA: TDataSource
    DataSet = QFACTURA
    Left = 328
    Top = 256
  end
  object QFACTURA: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      'SELECT* FROM '
      
        'RECEPTIE R INNER JOIN FACTURA_REC F ON R.FACTURA_REC_ID = F.FACT' +
        'URA_REC_ID'
      '           INNER JOIN PRODUSE P ON P.PRODUSE_ID = R.PRODUSE_ID'
      
        '           INNER JOIN UNIT_MASURA UM ON UM.UNIT_MASURA_ID = R.UN' +
        'IT_MASURA_ID'
      '           INNER JOIN EMITENT E ON E.EMITENT_ID = F.EMITENT_ID'
      
        '           WHERE F.FACTURA_REC_ID = :FACTURA_REC_ID AND R.ACTIV ' +
        '= 1'
      '           ORDER BY DATA_FACTURA DESC'
      '           ')
    Left = 232
    Top = 256
    ParamData = <
      item
        Name = 'FACTURA_REC_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QFACTURARECEPTIE_ID: TFDAutoIncField
      FieldName = 'RECEPTIE_ID'
      Origin = 'RECEPTIE_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QFACTURAPRODUSE_ID: TIntegerField
      FieldName = 'PRODUSE_ID'
      Origin = 'PRODUSE_ID'
    end
    object QFACTURAUNIT_MASURA_ID: TIntegerField
      FieldName = 'UNIT_MASURA_ID'
      Origin = 'UNIT_MASURA_ID'
    end
    object QFACTURAFACTURA_REC_ID: TIntegerField
      FieldName = 'FACTURA_REC_ID'
      Origin = 'FACTURA_REC_ID'
    end
    object QFACTURAFIRMA_OPERATOR_ID: TIntegerField
      FieldName = 'FIRMA_OPERATOR_ID'
      Origin = 'FIRMA_OPERATOR_ID'
    end
    object QFACTURASTOCK1: TIntegerField
      FieldName = 'STOCK1'
      Origin = 'STOCK1'
    end
    object QFACTURASTOCK2: TIntegerField
      FieldName = 'STOCK2'
      Origin = 'STOCK2'
    end
    object QFACTURAPRET_INTRARE: TBCDField
      FieldName = 'PRET_INTRARE'
      Origin = 'PRET_INTRARE'
      Precision = 7
      Size = 2
    end
    object QFACTURAPRET_VANZ: TBCDField
      FieldName = 'PRET_VANZ'
      Origin = 'PRET_VANZ'
      Precision = 7
      Size = 2
    end
    object QFACTURATVA: TIntegerField
      FieldName = 'TVA'
      Origin = 'TVA'
    end
    object QFACTURAFACTURA_REC_ID_1: TFDAutoIncField
      FieldName = 'FACTURA_REC_ID_1'
      Origin = 'FACTURA_REC_ID'
      ReadOnly = True
    end
    object QFACTURANR_FACTURA: TStringField
      FieldName = 'NR_FACTURA'
      Origin = 'NR_FACTURA'
    end
    object QFACTURADATA_FACTURA: TDateField
      FieldName = 'DATA_FACTURA'
      Origin = 'DATA_FACTURA'
    end
    object QFACTURAEMITENT_ID: TIntegerField
      FieldName = 'EMITENT_ID'
      Origin = 'EMITENT_ID'
    end
    object QFACTURAPRODUSE_ID_1: TFDAutoIncField
      FieldName = 'PRODUSE_ID_1'
      Origin = 'PRODUSE_ID'
      ReadOnly = True
    end
    object QFACTURADENUMIRE: TStringField
      FieldName = 'DENUMIRE'
      Origin = 'DENUMIRE'
      Size = 30
    end
    object QFACTURACOD_PRODUS: TStringField
      FieldName = 'COD_PRODUS'
      Origin = 'COD_PRODUS'
    end
    object QFACTURAUNIT_MASURA_ID_1: TFDAutoIncField
      FieldName = 'UNIT_MASURA_ID_1'
      Origin = 'UNIT_MASURA_ID'
      ReadOnly = True
    end
    object QFACTURAABREVIERE: TStringField
      FieldName = 'ABREVIERE'
      Origin = 'ABREVIERE'
      Size = 5
    end
    object QFACTURANUME: TStringField
      FieldName = 'NUME'
      Origin = 'NUME'
      Size = 10
    end
    object QFACTURAEMITENT_ID_1: TFDAutoIncField
      FieldName = 'EMITENT_ID_1'
      Origin = 'EMITENT_ID'
      ReadOnly = True
    end
    object QFACTURADENUMIRE_1: TStringField
      FieldName = 'DENUMIRE_1'
      Origin = 'DENUMIRE'
      Size = 50
    end
    object QFACTURAIDNO: TStringField
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object QFACTURAADRESA: TStringField
      FieldName = 'ADRESA'
      Origin = 'ADRESA'
      Size = 50
    end
  end
  object QEMITENT: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      'SELECT * FROM EMITENT')
    Left = 232
    Top = 360
    object QEMITENTEMITENT_ID: TFDAutoIncField
      FieldName = 'EMITENT_ID'
      Origin = 'EMITENT_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QEMITENTDENUMIRE: TStringField
      FieldName = 'DENUMIRE'
      Origin = 'DENUMIRE'
      Size = 50
    end
    object QEMITENTIDNO: TStringField
      FieldName = 'IDNO'
      Origin = 'IDNO'
      Size = 15
    end
    object QEMITENTADRESA: TStringField
      FieldName = 'ADRESA'
      Origin = 'ADRESA'
      Size = 50
    end
  end
  object DSQEMITENT: TDataSource
    DataSet = QEMITENT
    Left = 328
    Top = 360
  end
  object PINSFACTURA: TFDStoredProc
    Connection = BAZA
    StoredProcName = 'MAGAZIN.dbo.FACTURA'
    Left = 56
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@D'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@N'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 4
        Name = '@E'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QDATEFACTURA: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      
        'SELECT E.EMITENT_ID,F.FACTURA_REC_ID,F.DATA_FACTURA,F.NR_FACTURA' +
        ',E.DENUMIRE AS FIRMA,'
      
        '      COUNT (*) AS NR_POZ,SUM(R.PRET_INTRARE) AS PRET_INTRARE,SU' +
        'M(R.PRET_VANZ) AS PRET_VANZARE'
      '     '
      'FROM '
      
        'RECEPTIE R INNER JOIN FACTURA_REC F ON R.FACTURA_REC_ID = F.FACT' +
        'URA_REC_ID'
      '           INNER JOIN PRODUSE P ON P.PRODUSE_ID = R.PRODUSE_ID'
      
        '           INNER JOIN UNIT_MASURA UM ON UM.UNIT_MASURA_ID = R.UN' +
        'IT_MASURA_ID'
      '           INNER JOIN EMITENT E ON E.EMITENT_ID = F.EMITENT_ID'
      '           WHERE R.ACTIV = 1'
      
        '           GROUP BY  E.EMITENT_ID,F.DATA_FACTURA,F.NR_FACTURA,E.' +
        'DENUMIRE,F.FACTURA_REC_ID'
      '           ORDER BY DATA_FACTURA DESC'
      '           ')
    Left = 224
    Top = 464
    object QDATEFACTURAEMITENT_ID: TFDAutoIncField
      FieldName = 'EMITENT_ID'
      Origin = 'EMITENT_ID'
      ReadOnly = True
    end
    object QDATEFACTURAFACTURA_REC_ID: TFDAutoIncField
      FieldName = 'FACTURA_REC_ID'
      Origin = 'FACTURA_REC_ID'
      ReadOnly = True
    end
    object QDATEFACTURADATA_FACTURA: TDateField
      FieldName = 'DATA_FACTURA'
      Origin = 'DATA_FACTURA'
    end
    object QDATEFACTURANR_FACTURA: TStringField
      FieldName = 'NR_FACTURA'
      Origin = 'NR_FACTURA'
    end
    object QDATEFACTURAFIRMA: TStringField
      FieldName = 'FIRMA'
      Origin = 'FIRMA'
      Size = 50
    end
    object QDATEFACTURANR_POZ: TIntegerField
      FieldName = 'NR_POZ'
      Origin = 'NR_POZ'
      ReadOnly = True
    end
    object QDATEFACTURAPRET_INTRARE: TFMTBCDField
      FieldName = 'PRET_INTRARE'
      Origin = 'PRET_INTRARE'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object QDATEFACTURAPRET_VANZARE: TFMTBCDField
      FieldName = 'PRET_VANZARE'
      Origin = 'PRET_VANZARE'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object DSDATEFACTURA: TDataSource
    DataSet = QDATEFACTURA
    Left = 352
    Top = 464
  end
  object PCEC: TFDStoredProc
    Connection = BAZA
    StoredProcName = 'MAGAZIN.dbo.cek'
    Left = 56
    Top = 480
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@OPER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CLIENT'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = '@DATA_CEC'
        DataType = ftDate
      end>
  end
  object QVANZARE: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      'SELECT D.VALOAREA AS PROCENT, PRET_INTRARE*STOCK1 AS SUMMA'
      
        ',CL.NUME+'#39' '#39'+CL.PRENUME AS CLIENT, O.NUME+'#39' '#39'+O.PRENUME AS OPERA' +
        'TOR,*'
      'FROM RECEPTIE R '
      '             INNER JOIN PRODUSE P ON P.PRODUSE_ID=R.PRODUSE_ID'
      
        '             INNER JOIN UNIT_MASURA UM ON UM.UNIT_MASURA_ID=R.UN' +
        'IT_MASURA_ID'
      
        '             INNER JOIN FACTURA_REC FK ON FK.FACTURA_REC_ID=R.FA' +
        'CTURA_REC_ID'
      '             INNER JOIN EMITENT E ON E.EMITENT_ID=FK.EMITENT_ID'
      '             INNER JOIN VANZARE V ON V.RECEPTIE_ID=R.RECEPTIE_ID'
      '             INNER JOIN CEC  ON CEC.CEC_ID=V.CEC_ID'
      '             INNER JOIN CLIENT CL ON CL.CLIENT_ID=CEC.CLIENT_ID'
      
        '             INNER JOIN DISCOUNT D ON D.DISCOUNT_ID=CL.DISCOUNT_' +
        'ID'
      
        '             INNER JOIN FIRMA_OPERATOR F ON CEC.FIRMA_OPERATOR_I' +
        'D=F.FIRMA_OPERATOR_ID'
      
        '             INNER JOIN OPERATOR O ON O.OPERATOR_ID=F.OPERATOR_I' +
        'D'
      'WHERE CEC.CEC_ID=:CEC_ID')
    Left = 216
    Top = 560
    ParamData = <
      item
        Name = 'CEC_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSVANZARE: TDataSource
    DataSet = QVANZARE
    Left = 352
    Top = 560
  end
  object QLISTACEC: TFDQuery
    Connection = BAZA
    SQL.Strings = (
      'SELECT O.NUME+'#39' '#39'+O.PRENUME AS OPERATOR,'
      
        'CEC.SUMA_CEC AS SUMA_ACHITATA, CEC.NR_POZ AS NR_POZ,CEC.CEC_ID A' +
        'S CEC_ID,'
      'CEC.NR_CEC AS NR_CEC, CEC.DATA_CEC AS DATA_CEC,'
      'CAST(D.VALOAREA AS varchar(30)) + '#39'%'#39'  AS DISCOUNT, '
      'SUM(V.SUMA) AS SUMA_INITIALA, '
      'SUM(V.SUMA)-CEC.SUMA_CEC AS SUMA_DISCOUN'
      'FROM FIRMA_OPERATOR FO'
      'INNER JOIN OPERATOR O ON O.OPERATOR_ID=FO.OPERATOR_ID'
      
        'INNER JOIN CEC CEC ON CEC.FIRMA_OPERATOR_ID=FO.FIRMA_OPERATOR_ID' +
        ' '
      'INNER JOIN VANZARE V ON V.CEC_ID = CEC.CEC_ID '
      'INNER JOIN CLIENT CL ON CL.CLIENT_ID=CEC.CLIENT_ID'
      'INNER JOIN DISCOUNT D ON D.DISCOUNT_ID = CL.DISCOUNT_ID'
      'WHERE DATA_CEC BETWEEN :D1 AND :D2'
      
        'GROUP BY CEC.CEC_ID,O.NUME+'#39' '#39'+O.PRENUME,CEC.SUMA_CEC,D.VALOAREA' +
        ',CEC.NR_POZ,CEC.NR_CEC,CEC.DATA_CEC'
      ''
      '')
    Left = 216
    Top = 656
    ParamData = <
      item
        Name = 'D1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'D2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSLISTACEC: TDataSource
    DataSet = QLISTACEC
    Left = 360
    Top = 656
  end
end
