/*/
€Source Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title     : CRS702.PRW
@Owner     : CRS
@CopyRight : CRS
@Author    : Cristian e Fernando 
@Version   : P12 - Protheus 12
@Date      : 26/09/2019
@Engine    : AdvPl
@Module    : PMS
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
Tela Projeto Bolo
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Table
Table@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Source Detail€
/*/ 

#include "rwmake.ch"
#include "protheus.ch"

/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : USR - User Function 
@Name    : CRS702
@Author  : Cristian e Fernando
@Date    : 26/09/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
Monta tela para projeto do bolo.
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/

User Function CRS702A()
	Local _oObjeto := CRS702_MAIN():New()
	_oObjeto:Executar()	
Return

/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : CLS - Classe 
@Name    : CRS702_MAIN 
@Author  : Cristian e Fernando
@Date    : 26/09/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
Classe principal da rotina
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/

Class CRS702_MAIN
	Method New() Constructor
	Method Espaco()
	Method Botoes()
	Method Posicao()
	Method MakeAF8()
	Method MakeAFC()
	Method MakeAF9()
	Method MakeAFX()
	Method MakeAFE()     
	Method MakePrj() 
	Method MakeDlg()
	Method CriaBox()
	Method Executar()
	Method EstiloBtn()
	Data oDlg
	Data nLin
	Data nCol
	Data oDesc
	Data cTela 
	Data cTitulo
	Data cPrjSts
	Data cPrjTip
	Data cPrjDes
	Data dPrjDti
	Data dPrjDtf
	Data cPrjDst
	Data cPrjRev
	Data oBtnNew
	Data nAltura 
	Data cRevMot
	Data cOldRev
	Data nLargura
	Data cProjeto
EndClass

/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : MTH - Method
@Name    : New 
@Author  : Cristian e Fernando
@Date    : 26/09/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
Metodo de declaraÁ„o de vari·veis da classe
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/

Method New(_cTela) Class CRS702_MAIN 
	::cTela := _cTela
Return


/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : MTH - Executar
@Name    : Executar 
@Author  : Cristian e Fernando
@Date    : 26/09/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
Executa a chamada da rotina de criaÁ„o de projeto.
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/    
Method Executar() Class CRS702_MAIN 
	Begin Transaction 			
		::MakeAF8()             
		::MakeAFC() 			// EDT
	    ::MakeAF9() 			// TAREFAS
	    ::MakeAFX()             // LIBERA«√O DE USU¡RIO
	    If ::cTela = 'Revisao'
	    	::MakeAFE()
	    End If
	End Transaction  				
Return  

/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : MTH - MakeAF8
@Name    : MakeAF8 
@Author  : Cristian e Fernando
@Date    : 26/09/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
CriaÁ„o da tabela AF8.
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/  
	
Method MakeAF8() class CRS702_MAIN
	Local _lInclui := .T.
	confirmsx8()                        
	
	If ::cTela = 'Revisao'
		AF8->(DbSetOrder(8))
		If AF8->(Dbseek(xFilial('AF8')+::cProjeto+::cOldRev))	
			_lInclui := .F.
		End If
	End If
		
	AF8->(RecLock('AF8',_lInclui))
	AF8->AF8_FILIAL 	 	:= xFilial('AF8')
	AF8->AF8_PROJET 	 	:= ::cProjeto
	AF8->AF8_DATA    	 	:= date()   				  
	AF8->AF8_DESCRI 	 	:= ::cPrjDes
	AF8->AF8_REVISA 	 	:= ::cPrjRev  	    
	AF8->AF8_TPPRJ  	 	:= '0002'
	AF8->AF8_STATUS 	 	:= '1'
	AF8->AF8_START  	 	:= ::dPrjDti		
	AF8->AF8_FINISH 	 	:= ::dPrjDtf		
	AF8->AF8_CALEND 	 	:= '001'        
	AF8->AF8_FASE   	 	:= '01'        
	AF8->AF8_PRJREV 	 	:= '1'
	AF8->AF8_CTRUSR 	 	:= '01'
	AF8->AF8_TPCUS  	 	:= '1'
	AF8->AF8_MASCAR		 	:= '2222222222'
	AF8->AF8_NMAX   	 	:= 0 			
	AF8->AF8_NMAXF3 	 	:= 0 			
	AF8->AF8_TRUNCA 	 	:= '1'
	AF8->AF8_BDI    	 	:= 0 			
	AF8->AF8_VALBDI 	 	:= 0 			
	AF8->AF8_BDIPAD 	 	:= 0 			
	AF8->AF8_AUTCUS 	 	:= '1'
	AF8->AF8_ENCPRJ 	 	:= '2'
	AF8->AF8_PRIREA 	 	:= '1'
	AF8->AF8_CUSOP  	 	:= '1'
	AF8->AF8_CUSOPE 	    := '1'
	AF8->AF8_REAFIX 	 	:= '1'
	AF8->AF8_USAAJT 	    := '2'
	AF8->AF8_AJCUST 	    := '0'
	AF8->AF8_PAR002 	    := '3'
	AF8->AF8_PAR003 	    := '2'
	AF8->AF8_PAR004 	    := '2'
	AF8->AF8_PAR005 	    := '1'
	AF8->AF8_PAR006 	    := '2'
	AF8->(MsUnLock())
Return         

/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : MTH - MakeAFC
@Name    : MakeAFC 
@Author  : Cristian e Fernando
@Date    : 27/09/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
CriaÁ„o da tabela AFC.
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/ 

Method MakeAFC() class CRS702_MAIN
   
	Local _cQuery   := ''
	Local _cEnter   := chr(13)+chr(10)

	AFC->(RecLock('AFC',.T.))
	AFC->AFC_FILIAL := xFilial('AFC')
	AFC->AFC_PROJET := ::cProjeto 
	AFC->AFC_REVISA := ::cPrjRev
	AFC->AFC_EDT    := ::cProjeto 
	AFC->AFC_NIVEL  := '001'
	AFC->AFC_DESCRI := ::cPrjDst 
	AFC->AFC_UM     := 'UN'
	AFC->AFC_QUANT  := 1
	AFC->AFC_HDURAC := 1
	AFC->AFC_CALEND := '001'
	AFC->AFC_START  := ::dPrjDti
	AFC->AFC_FINISH := ::dPrjDtf
	AFC->AFC_HORAI  := ''
	AFC->AFC_HORAF  := ''
	AFC->AFC_HUTEIS := 1
	AFC->AFC_CUSTO  := 0
	AFC->AFC_CUSTO2 := 0
	AFC->AFC_CUSTO3 := 0
	AFC->AFC_CUSTO4 := 0
	AFC->AFC_CUSTO5 := 0
	AFC->AFC_VALBDI := 0
	AFC->AFC_TOTAL  := 0
	AFC->AFC_BDITAR := 0
	AFC->AFC_HESF   := 0
	AFC->AFC_TOTIMP := 0
	AFC->(MsUnLock())                                               
	
	_cQuery := _cEnter+" SELECT * FROM "+RetSqlName('ZG3')+ " ZG3 " 
	_cQuery += _cEnter+" WHERE ZG3.ZG3_FILIAL = '"+xFilial('ZG3')+"' AND "
	_cQuery += _cEnter+" ZG3_PROJET = '"+::cProjeto+"' AND "
	_cQuery += _cEnter+" ZG3_REVISA = '"+::cPrjRev+"' AND "
	_cQuery += _cEnter+" ZG3_TPEST = '1' AND "
	_cQuery += _cEnter+" D_E_L_E_T_ <> '*' "

	dbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),'ZG3TMP',.F.,.T.)
	Do While !ZG3TMP->(eof())                                 	                    
		AFC->(RecLock('AFC',.T.))
		AFC->AFC_FILIAL := xFilial('AFC')
		AFC->AFC_PROJET := ::cProjeto 
		AFC->AFC_REVISA := ZG3TMP->ZG3_REVISA
		AFC->AFC_EDT    := ZG3TMP->ZG3_CODIGO 
		AFC->AFC_NIVEL  := ZG3TMP->ZG3_NIVEL
		AFC->AFC_DESCRI := ZG3TMP->ZG3_DESCRI  
		AFC->AFC_UM     := ''
		AFC->AFC_QUANT  := 1
		AFC->AFC_HDURAC := 1
		AFC->AFC_CALEND := '001'
		AFC->AFC_START  := STOD(ZG3TMP->ZG3_START)
		AFC->AFC_FINISH := STOD(ZG3TMP->ZG3_FINISH)
		AFC->AFC_HORAI  := ZG3TMP->ZG3_HORAI
		AFC->AFC_HORAF  := ZG3TMP->ZG3_HORAF
		AFC->AFC_HUTEIS := 1
		AFC->AFC_DTATUI := STOD(ZG3TMP->ZG3_DTATUI)
		AFC->AFC_DTATUF := STOD(ZG3TMP->ZG3_DTATUF)
		AFC->AFC_EDTPAI := iif(ZG3TMP->ZG3_NIVEL = '002',::cProjeto,ZG3TMP->ZG3_SUPER) 
		AFC->AFC_CUSTO  := 0
		AFC->AFC_CUSTO2 := 0
		AFC->AFC_CUSTO3 := 0
		AFC->AFC_CUSTO4 := 0
		AFC->AFC_CUSTO5 := 0
		AFC->AFC_VALBDI := 0
		AFC->AFC_TOTAL  := 0
		AFC->AFC_HRATUI := ZG3TMP->ZG3_HRATUI
		AFC->AFC_HRATUF := ZG3TMP->ZG3_HRATUF
		AFC->AFC_BDITAR := 0
		AFC->AFC_HESF   := 0
		AFC->AFC_TOTIMP := 0
		AFC->(MsUnLock())   
		ZG3TMP->(dbSkip())
	End Do                
	ZG3TMP->(dbCloseArea())
	dbSelectArea('SX2')
Return 

/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : MTH - MakeAF9
@Name    : MakeAF9 
@Author  : Cristian e Fernando
@Date    : 27/09/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
CriaÁ„o da tabela AF9.
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/ 

Method MakeAF9() class CRS702_MAIN
	Local _cQuery   := ''
	Local _cEnter   := chr(13)+chr(10)
	_cQuery := _cEnter+" SELECT * FROM "+RetSqlName('ZG3')+ " ZG3 " 
	_cQuery += _cEnter+" WHERE ZG3.ZG3_FILIAL = '"+xFilial('ZG3')+"' AND "
	_cQuery += _cEnter+" ZG3_PROJET = '"+::cProjeto+"' AND "
	_cQuery += _cEnter+" ZG3_REVISA = '"+::cPrjRev+"' AND "
	_cQuery += _cEnter+" ZG3_TPEST = '2' AND "
	_cQuery += _cEnter+" D_E_L_E_T_ <> '*' "

	dbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),'ZG3TMP',.F.,.T.)
	Do While !ZG3TMP->(eof())                                 	                    
		AF9->(RecLock('AF9',.T.))
		AF9->AF9_FILIAL		:= xFilial('AF9')
		AF9->AF9_PROJET 	:= ::cProjeto 
		AF9->AF9_REVISA     := ZG3TMP->ZG3_REVISA
		AF9->AF9_TAREFA     := ZG3TMP->ZG3_CODIGO 
		AF9->AF9_NIVEL      := ZG3TMP->ZG3_NIVEL
		AF9->AF9_DESCRI     := ZG3TMP->ZG3_DESCRI       
		AF9->AF9_QUANT		:= 1
		AF9->AF9_HDURAC		:= 1
		AF9->AF9_CALEND		:= '001'
		AF9->AF9_START		:= STOD(ZG3TMP->ZG3_START)  
		AF9->AF9_FINISH		:= STOD(ZG3TMP->ZG3_FINISH) 
		AF9->AF9_HORAI		:= ZG3TMP->ZG3_HORAI
		AF9->AF9_HORAF		:= ZG3TMP->ZG3_HORAF
		AF9->AF9_HUTEIS		:= 0
		AF9->AF9_DTATUI		:= STOD(ZG3TMP->ZG3_DTATUI)
		AF9->AF9_DTATUF     := STOD(ZG3TMP->ZG3_DTATUF)
		AF9->AF9_HRATUI     := ZG3TMP->ZG3_HRATUI
		AF9->AF9_HRATUF     := ZG3TMP->ZG3_HRATUF
		AF9->AF9_VATU1		:= 0
		AF9->AF9_VATU2      := 0
		AF9->AF9_VATU3      := 0
		AF9->AF9_VATU4      := 0
		AF9->AF9_VATU5      := 0
		AF9->AF9_VFIM1		:= 0
		AF9->AF9_VFIM2		:= 0
		AF9->AF9_VFIM3		:= 0
		AF9->AF9_VFIM4		:= 0
		AF9->AF9_VFIM5		:= 0
		AF9->AF9_VINI1		:= 0
		AF9->AF9_VINI2		:= 0
		AF9->AF9_VINI3		:= 0
		AF9->AF9_VINI4		:= 0
		AF9->AF9_VINI5		:= 0
		AF9->AF9_EDTPAI		:= ZG3TMP->ZG3_SUPER
		AF9->AF9_VDSP1		:= 0
		AF9->AF9_VDSP2		:= 0
		AF9->AF9_VDSP3		:= 0
		AF9->AF9_VDSP4		:= 0
		AF9->AF9_VDSP5		:= 0
		AF9->AF9_EMAIL		:= '2'
		AF9->AF9_PRIORI		:= 500
		AF9->AF9_CUSTO		:= 0
		AF9->AF9_CUSTO2		:= 0
		AF9->AF9_CUSTO3		:= 0
		AF9->AF9_CUSTO4		:= 0
		AF9->AF9_CUSTO5		:= 0
		AF9->AF9_RESTRI		:= '7'
		AF9->AF9_TXMO2		:= 0
		AF9->AF9_TXMO3		:= 0
		AF9->AF9_TXMO4		:= 0
		AF9->AF9_TXMO5		:= 0 
		AF9->AF9_BDI		:= 0
		AF9->AF9_VALBDI		:= 0
		AF9->AF9_TOTAL		:= 0
		AF9->AF9_TPMEDI		:= '4'		
		AF9->AF9_HESF		:= 0
		AF9->AF9_TPTRF		:= '1'
		AF9->AF9_AGCRTL		:= '2'
		AF9->AF9_TPHORA		:= '3'
		AF9->AF9_RASTRO		:= 1
		AF9->AF9_TOTIMP		:= 0
		AF9->AF9_XREF		:= ZG3TMP->ZG3_REF
		AF9->AF9_XQUANTI    := ZG3TMP->ZG3_QUANTI
		AF9->AF9_XDIAS      := ZG3TMP->ZG3_DIAS
		AF9->(MsUnLock())   
		ZG3TMP->(dbSkip())
	End Do                
	ZG3TMP->(dbCloseArea())
	dbSelectArea('SX2')
Return

/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : MTH - MakeAFX
@Name    : MakeAFX 
@Author  : Cristian e Fernando
@Date    : 10/10/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
CriaÁ„o da tabela AFX.
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/  
	
Method MakeAFX() Class CRS702_MAIN				
	AFX->(DbSetOrder(1))
	If !AFX->(DbSeek(xFilial('AFX')+::cProjeto))	
		AFX->(RecLock('AFX',.T.))
		AFX->AFX_FILIAL := xFilial('AFX')
		AFX->AFX_PROJET := ::cProjeto
		AFX->AFX_REVISA := ''
		AFX->AFX_EDT	:= ::cProjeto     			  
		AFX->AFX_USER	:= __cUserId
		AFX->AFX_ESTRUT	:= '3'  	    
		AFX->AFX_DOCUME	:= '3'  	    
		AFX->AFX_GERSC	:= '4'  	    
		AFX->AFX_GERSA	:= '4'
		AFX->AFX_GEROP	:= '4'
		AFX->AFX_GERCP	:= '4'
		AFX->AFX_GEREMP	:= '4'
		AFX->AFX_CONFIR	:= '4'
		AFX->AFX_NFE	:= '4'
		AFX->AFX_REQUIS	:= '4'
		AFX->AFX_DESP	:= '4'
		AFX->AFX_RECEI	:= '4'
		AFX->AFX_RECURS	:= '4'
		AFX->AFX_NFS	:= '4'
		AFX->AFX_MOVBAN	:= '4'
		AFX->AFX_PREREC	:= '4'
		AFX->AFX_APRPRE	:= '2'
		AFX->(MsUnLock())
	End If
Return          


/*/
€Object Detail€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
@Title   : CRS702.PRW
@Type    : MTH - MakeAFE
@Name    : MakeAF9 
@Author  : Cristian
@Date    : 27/09/2019
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Descriptions
CriaÁ„o da tabela AFE.
Descriptions@
ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
@Return
Return@
€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Object Detail€
/*/ 

Method MakeAFE() class CRS702_MAIN   
	AFE->(RecLock('AFE',.T.))
	AFE->AFE_FILIAL := xFilial('AFX')
	AFE->AFE_PROJET := ::cProjeto
	AFE->AFE_REVISA := ::cPrjRev
	AFE->AFE_DATAI  := DATE()
	AFE->AFE_HORAI  := TIME()
	AFE->AFE_USERI  := __cUserId
	AFE->AFE_MEMO   := ::cRevMot
	AFE->AFE_DATAF  := DATE()
	AFE->AFE_HORAF  := TIME()
	AFE->AFE_USERF  := __cUserId
	AFE->AFE_TIPO   := '1'
	AFE->AFE_FASE   := '01'
	AFE->AFE_FASEOR := '01'
	AFE->AFE_CODMEM	:= ''
	AFE->(MsUnlock())
Return
//ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ	
