/*/
лSource Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title     : CRS724.PRW
@Owner     : CRS
@CopyRight : CRS
@Author    : Cristian Silva
@Version   : P12 - Protheus 12
@Date      : 05/03/2020
@Engine    : AdvPl
@Module    : PMS
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Calculo de datas e horas do projeto 'Project(HYD707)'.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Table
Table@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллSource Detailл
/*/       
#include "rwmake.ch"
#include "protheus.ch"
#include "tbiconn.ch"
#include "apwebsrv.ch"

#Define _cEnter chr(13)+chr(10) 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS724.PRW
@Type    : USR - User Function 
@Name    : CRS724A
@Author  : Cristian Silva
@Date    : 05/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
User function principal para chamada da classe 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   

User Function CRS724A() 
	Local _oTela
	_oTela:=CRS724_MAIN():New() 
	_oTela:Executar()	
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS724.PRW
@Type    : CLS - Classe
@Name    : CRS724_MAIN
@Author  : Cristian Silva
@Date    : 05/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Criaллo da classe
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   

Class CRS724_MAIN FROM longClassName 
	Method New() Constructor
	Method Menos1()
	Method SecDay()
	Method Calcula()       
	Method RetFinish()
	Data oEdt
	Data cUser 
	Data cDpto 
	Data oProjeto    
	Data cProjeto
	Data cRevisao
	Data oFinish
	Data dDataInicial
EndClass

WSStruct CRS724_RET
	WSData dDataFim	 As Date
	WSData cHoraFim  As String
	WSData dDataIni  As Date 
	WSData cHoraIni  As String
EndWSStruct	  

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS724.PRW
@Type    : MTH - Methodo
@Name    : New
@Author  : Marcos Santana Pereira
@Date    : 31/12/2018
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Definiллo de variaveis padrлes.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   

Method New(_oProjeto) Class CRS724_MAIN
	::oProjeto := _oProjeto
	::oEdt     := WSClassNew("CRS724_RET")
	::oFinish  := WSClassNew("CRS724_RET")
	::cUser    := ''
	::cDpto    := ''
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS724.PRW
@Type    : MTH - Method
@Name    : Calcula
@Author  : Cristian Silva
@Date    : 05/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Calcula datas e horas das EDT's e das TASK's.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Calcula() Class CRS724_MAIN
	Local _cQuery 	   := ''
	Local _nRecno
	Local _cAlias 	   := GetNextAlias()
	Local _dDateBegin  := iif(::oProjeto:cTela = 'Geracao',::oProjeto:dPrjDti,::oProjeto:dRevDti)
	Local _cHourBegin  := '' 
	_cQuery := _cEnter+" SELECT ZG3_CODIGO AS CODIGO, ZG3_REF AS REFERENCIA, ZG3_QUANTI AS QUANTIDADE, ZG3_DIAS AS TIPODIAS,ZG3_USER AS USUARIO,ZG3_DPTO AS DEPARTAMENTO, ZG3.R_E_C_N_O_ AS ZG3REC " 
	_cQuery += _cEnter+" FROM "+RetSqlName('ZG3')+" ZG3 " 
	_cQuery += _cEnter+" WHERE ZG3.ZG3_FILIAL = '"+xFilial('ZG3')+"' AND "
	_cQuery += _cEnter+" ZG3_PROJET = '"+::cProjeto+"' AND "
	_cQuery += _cEnter+" ZG3_REVISA = '"+::cRevisao+"' AND "
	_cQuery += _cEnter+" ZG3_TPEST  = '2' AND " 
	_cQuery += _cEnter+" D_E_L_E_T_ <> '*' "  
	_cQuery += _cEnter+" ORDER BY CODIGO " 
	dbUseArea(.T.,"TOPCONN",TCGENQRY(,,_cQuery),_cAlias,.F.,.T.)
    _cHourBegin := ::oProjeto:Hora(::oProjeto:dPrjDti,'HORAINI',(_cAlias)->USUARIO,(_cAlias)->DEPARTAMENTO)
	Do While !(_cAlias)->(eof()) 
		_nRecno := (_cAlias)->ZG3REC 		
		::RetFinish(_dDateBegin,_cHourBegin,(_cAlias)->REFERENCIA,(_cAlias)->TIPODIAS,(_cAlias)->QUANTIDADE,(_cAlias)->USUARIO,(_cAlias)->DEPARTAMENTO)  
		ZG3->(dbGoTo(_nRecno))
		ZG3->(RecLock('ZG3',.F.))
	    ZG3->ZG3_START  := _dDateBegin						
		ZG3->ZG3_HORAI  := _cHourBegin
		ZG3->ZG3_FINISH := ::oFinish:dDataFim
		ZG3->ZG3_HORAF  := ::oFinish:cHoraFim
		ZG3->(MsUnLock())
		Do While !::oProjeto:DiaUtil(::oFinish:dDataIni)
   			::oFinish:dDataIni++
       		::oFinish:cHoraIni := ::oProjeto:Hora(::oFinish:dDataIni,'HORAINI',(_cAlias)->USUARIO,(_cAlias)->DEPARTAMENTO)
       		loop	
		End Do 	 
		_dDateBegin := ::oFinish:dDataIni 
		_cHourBegin := ::oFinish:cHoraIni 
		(_cAlias)->(dbskip()) 
	End Do
	If ::oProjeto:cTela = 'Geracao' 
		::oProjeto:dPrjDtf := ZG3->ZG3_FINISH
	Else  
		::oProjeto:dRevDtf := ZG3->ZG3_FINISH
	End If
	::oProjeto:GravaEdt()
	(_cAlias)->(dbCloseArea())
	DbSelectArea('SX2')
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS724.PRW
@Type    : MTH - Method
@Name    : RetFinish
@Author  : Cristian Silva
@Date    : 05/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Calcula datas e horas das EDT's e das TASK's.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method RetFinish(_dDateBegin,_cHourBegin,_cReferencia,_cTipoDia,_nQuantidade,_cUser,_cDpto)  Class CRS724_MAIN
	Local _nEstoque    := 0
    Local _nHourBegin  := 0
    Local _nMinBegin   := 0 
    Local _nSecBegin   := 0
    Local _nHourQuant  := 0
    Local _nMinQuant   := 0
    Local _nSecQuant   := 0
    Local _nRemainder  := 0
    Local _nSecDay     := 0    
	local _nStartDay   := 7*60*60 
	Local _lCorrido    := .F.    
	Local _nSecWorkDay := 0 
	::oFinish:dDataIni := _dDateBegin
	::oFinish:cHoraIni := _cHourBegin 
	::dDataInicial     := _dDateBegin
	::cUser            := _cUser
	::cDpto            := _cDpto
//  _nSecWorkDay :=::SecDay(_dDateBegin) - U_PhxHrsSec(::oProjeto:Hora(_dDateBegin,'HORAINI',_cUser,_cDpto)) // 35160 = HOURS IN SECONDS IN A WORK DAY FROM 07:00 TO 16:46/15:46		

	Do While !::oProjeto:DiaUtil(::oFinish:dDataIni)
       	::oFinish:dDataIni++
       	_nSecDay := ::SecDay(::oFinish:dDataIni)
        loop	
	End Do
	If _cReferencia = 'D' 
		If _cTipoDia = '2' // dias corridos                 
			_lCorrido := .T.
			::oFinish:dDataIni += _nQuantidade
		ElseIf _cTipoDia = '1' // dia util
			_nEstoque := _nQuantidade // recebo a quantidade // 3
			Do While _nEstoque > 0   // 13/02  
				::oFinish:dDataIni++ //SOMO UM DIA NA DATAS				
				_nSecDay := ::SecDay(::oFinish:dDataIni)
				If !::oProjeto:DiaUtil(::oFinish:dDataIni)
					Loop
				End If  
				_nEstoque-- // subtraindo dia
			End Do
			::oFinish:cHoraIni := _cHourBegin 
		End If		
	ElseIf _cReferencia = 'H'
	    _nSecWorkDay :=::SecDay(_dDateBegin) - U_PhxHrsSec(::oProjeto:Hora(_dDateBegin,'HORAINI',_cUser,_cDpto)) // 35160 = HOURS IN SECONDS IN A WORK DAY FROM 07:00 TO 16:46/15:46		
		_nHourBegin  := Val(LEFT  (_cHourBegin,AT(":",_cHourBegin)-1))   // LAST TASK TIME' HOURS 
		_nMinBegin   := Val(SUBSTR(_cHourBegin,AT(':',_cHourBegin)+1,2)) // LAST TASK TIME' MIN
		_nSecBegin   := ((_nHourBegin*60)*60) + (_nMinBegin*60)          // LAST TASK TIME IN SECONDS		
		_nHourQuant  := Int(_nQuantidade)                                // QUANTITY'S HOURS
		_nMinQuant   := _nQuantidade -_nHourQuant                        // QUANTITY'S MIN
		_nSecQuant   := ((_nHourQuant*60)*60)+((_nMinQuant*60)*60)       // QUANTITY IN SECONDS 			
		_nSecDay     := ::SecDay(::oFinish:dDataIni)                     // 16:46 = 58600 + 46 MINUTOS = 60.360s // 15:47 = 56.820s		 	     
        If _nSecBegin < _nSecDay                                         // CHECKING WHAT IS THE LAST HOUR
        	_nRemainder := _nSecDay - _nSecBegin                         // HOW LONG IT IS MISSING FOR A WORK DAY 
        	If _nSecQuant > _nRemainder
        		_nSecQuant  := _nSecQuant - _nRemainder                  // SUBTRACTING FROM QUANTITY AMOUNT
        		::oFinish:dDataIni++                                     // INCRISING DAY
				::oFinish:dDataIni := ::oProjeto:WorkDay(::oFinish:dDataIni)     // TAKE NEXT WORK DAY
				_nSecWorkDay := ::SecDay(::oFinish:dDataIni) - U_PhxHrsSec(::oProjeto:Hora(::oFinish:dDataIni,'HORAINI',_cUser,_cDpto)) // THE AMOUNT OF SECONDS IN A DAY	
        	Else 
        		::oFinish:dDataIni   := _dDateBegin                     // PERMANECE NO MESMO DIA
        	End If		 
        End If 
        _nEstoque := _nSecQuant //3630
        Do While _nEstoque > _nSecWorkDay     							// 16:46 - 07:00 = 35.160s / 15:46 - 07:00 = 53.220s 
        	::oFinish:dDataIni++                       
			_nSecWorkDay := ::SecDay(::oFinish:dDataIni) - U_PhxHrsSec(::oProjeto:Hora(::oFinish:dDataIni,'HORAINI',_cUser,_cDpto))// THE AMOUNT OF SECONDS IN A DAY       	
       		If !::oProjeto:DiaUtil(::oFinish:dDataIni)
				Loop
			End If  
        	_nEstoque := _nEstoque - _nSecWorkDay 					    // SUBTRACTING A WORK DAY = 28.8000 
        End Do 
        If ::oFinish:dDataIni <> _dDateBegin 							// SE FOR DATAS DIFERENTES SOMA VALOR REMANESCENTE COM INICIO DE DIA = 07:00
        	_nEstoque := _nEstoque + _nStartDay                 		// SOMA SEGUNDOS REFERENTES A 7:00H, PARA ACRESCENTAR NA HORA FINAL
        ElseIf ::oFinish:dDataIni = _dDateBegin                         // SE FOR MESMA DATA, SOMA VALOR REMANESCENTE E SOMA COM HORA INICIAL
        	_nEstoque := _nEstoque + _nSecBegin
        End If
    	::oFinish:cHoraIni := U_SecsToTime(_nEstoque)
	End If	     
	::Menos1(_lCorrido)		
Return          

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS724.PRW
@Type    : MTH - Method
@Name    : SecDay
@Author  : Cristian Silva
@Date    : 05/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Tranforma a data passada para segundos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method SecDay(_dData) Class CRS724_MAIN
Return U_PhxHrsSec(::oProjeto:Hora(_dData,'HORAFIM',::cUser,::cDpto))  // 16:46 = 58600 + 46 MINUTOS = 60.360s // 15:47 = 56.820s 				

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS724.PRW
@Type    : MTH - Method
@Name    : Menos1
@Author  : Cristian Silva
@Date    : 05/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Subtrai um segundo da data final.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Menos1(_lCorrido) Class CRS724_MAIN 
	Local _dData
	Local _nSecDay  := U_PhxHrsSec(::oProjeto:Hora(::oFinish:dDataIni,'HORAINI',::cUser,::cDpto))
	Local _nSeconds := U_PhxHrsSec(::oFinish:cHoraIni)-1 // 39600
	If _nSeconds < _nSecDay 
		_dData := ::oFinish:dDataIni-1
		If !_lCorrido
			Do While !::oProjeto:DiaUtil(_dData)
				_dData --
			End Do
		End If 
		::oFinish:dDataFim := _dData
		::oFinish:cHoraFim := ::oProjeto:Hora(_dData,'HORAFIM',::cUser,::cDpto)
	Else                            
		::oFinish:dDataFim := ::oFinish:dDataIni
		::oFinish:cHoraFim := U_SecsToTime(_nSeconds)
	End If 
Return
//ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл	      
