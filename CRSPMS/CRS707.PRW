/*/
лSource Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title     : CRS707.PRW
@Owner     : CRS
@CopyRight : CRS
@Author    : Cristian Silva
@Version   : P12 - Protheus 12
@Date      : 11/10/2019
@Engine    : AdvPl
@Module    : PMS
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Tela amigavel para exibir e alterar estrutura.
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
#define VISUALIZACAO 2
#define INCLUSAO     3
#define ALTERACAO    4
#define EXCLUSAO     5


/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : USR - User Function 
@Name    : CRS707A
@Author  : Cristian Silva
@Date    : 18/02/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
user function principal para chamada da classe 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                  
User Function CRS707A() 
	Local _oTela
	_oTela:= CRS707_MAIN():New() 
	_oTela:Executar()	
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : CLS - Classe
@Name    : CRS707_MAIN
@Author  : Cristian Silva
@Date    : 18/02/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Criaca da classe
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                
Class CRS707_MAIN FROM LongClassName	
	Method New() Constructor 
	Method Ramo()
	Method Hora() 
	Method Grava()
	Method Gerar()
	Method Reset()
	Method Mais1()
	Method UpdZG3()
	Method VldQtd()
	Method Review()
	Method MataRev()
	Method DefSize()
	Method WorkDay()
	Method DiaUtil() 	
	Method PegaPai()
	Method VldDate()         
	Method Posicao()
	Method MakeZG1()
	Method MataZG3()
	Method CopyZG2()
	Method VldTipo()
	Method PegaEdt()
	Method GeraRev()
	Method CheckEdt()
	method DblClick()
	Method GravaEdt()
	Method GetNivel()
	Method RunQuery() 
	Method MudaMenu()       
	Method Executar()
	Method MakeCode()
	Method ExcFilho()
	Method BuscaDpt()
	Method ResetInc()
	Method VldGerar()
	Method VldGrava()
	Method PegaData()
	Method CriaMenu() 
	Method DefCodRev()
	Method UpdStsAf8()            
	Method UploadPrj()
	Method RTimeCalc()
	Method Visualiza()
	Method BuscaNome()
	Method TemFilhos()
	Method ExcEDTTSK()
	Method TrocaTipo()
	Method DefTitle2()
	Method ComoboxPos() 
	Method RodaArvore()
	Method VldGeraRev()
	Method CheckStatus()
	Method MontaArvore()
	Method PuxaValores()
	Method TakeCalendar()
	Method TakeUsrDptTp()
	Method DefStatusTsk()
	Data oEdt
	Data nLin
	Data nCol
	Data cCod 
	Data cRev 
	Data cTela
	Data oTree
	Data oMenu
	Data nDays
	Data dDate
	Data cHora 
	Data oGerar
	Data cSheet
	Data aPosObj	
	Data oFonte1
	Data oFonte2		      
	Data oPainel
	Data oPrjTip
	Data oPrjDst
	Data cPrjTip
	Data cPrjDst
	Data oIncCod
	Data cIncCod
	Data oIncNiv
	Data cIncNiv
	Data oIncDes
	Data cIncDes
	Data oIncUsu
	Data cIncUsu
	Data cIncNom
	Data oIncNom
	Data cPrjCod
	Data oPrjCod
	Data cPrjDes
	Data oPrjDes
	Data oPrjDti
	Data dPrjDti
	Data oPrjDtf
	Data dPrjDtf
	Data oIncRef
	Data cIncRef
	Data cPicQtd
	Data oIncQtd
	Data nIncQtd
	Data oIncDia
	Data cIncDia
	Data oIncDpt
	Data cIncDpt
	Data oIncNdp
	Data cIncNdp
	Data aIncRef
	Data aIncDia
	Data oIncDip
    Data dIncDip
    Data oIncHip
    Data cIncHip
    Data oIncDfp
    Data dIncDfp
    Data oIncHfp
    Data cIncHfp
	Data cPrjRev
	Data cOldCod 
	Data cOldDes
	Data cOldRev
	Data dOldDti
	Data dOldDtf 
	Data cRevCod
	Data oRevCod
	Data cRevNew
	Data oRevRev
	Data cRevDes
	Data oRevDes  
	Data dRevDti
	Data oRevDti 
	Data dRevDtf
	Data oRevDtf
	Data cRevMot
	Data oRevMot
	Data oCalculo
	Data oPainel2
	Data oPainel3
	Data oPainel4
	Data oPainel5
	Data cUserZG3 
	Data cDptoZG3 
	Data cTipoZG3 
	Data cClFolder
	Data cOpFolder
	Data oFinaliza
	Data lInclusao 
EndClass              

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : New
@Author  : Cristian Silva
@Date    : 31/12/2018
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Definicao de variaveis padroes.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   
             
Method New(_cTela) CLASS CRS707_MAIN                   
	::cTela      := _cTela
	::oFonte1    := TFont():New('Arial',,17,.T.,.F.)
	::oFonte2    := TFont():New('Arial',,18,.T.,.T.)
	::cPrjTip    := space(TamSx3('ZG2_TIPO'  )[1]) // DEFINES THE LENGTH ACCORDING THE FIELD
	::cPrjDst    := space(TamSx3('ZG2_DESCRI')[1]) // DEFINES THE LENGTH ACCORDING THE FIELD
	::cPicQtd 	 := "9999"
	::cPrjRev    := '0001'
	::cIncNom    := ''
	::oGerar     := CRS702_MAIN():New(_cTela)  					  
	::oCalculo   := CRS724_MAIN():New(self)
	::oFinaliza  := CRS708_MAIN():New()
	::aIncRef    := {'D. Dias','H. Horas'} // OBJECT ARRAY WHICH DEFINES THE REFERECE TYPE'S OPTIONS 
	::aIncDia    := {'1. Dias uteis','2. Dias Corridos','3. Horas'} // OBJECT ARRAY WHICH DEFINES THE DAYS TYPE'S OPTIONS
	::lInclusao  := .F.
	::cOldCod 	 := ''
	::cOldDes    := ''
	::cOldRev  	 := ''
	::dOldDti  	 := CTOD('')
	::dOldDtf    := CTOD('')
	::cRevCod    := ''
	::cRevNew    := ''
	::cRevDes    := ''
	::dRevDti    := date()+1
 	::dRevDtf    := date()+1
 	::cRevMot    := space(150)
 	::cCod       := ''
	::cRev       := ''
	::cUserZG3   := ''
	::cDptoZG3   := ''
	::cTipoZG3   := ''
	::dDate      := Date()
	::cHora      := SubStr(Time(),1,5)
	::Reset() // RESET VARIABLE'S CONTENT TO BRING UP THE FIELDS EMPTY  
Return          

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : CriaMenu
@Author  : Cristian Silva
@Date    : 11/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Cria Menu
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/            

Method CriaMenu() Class CRS707_MAIN
	::oMenu      := TMenu():New(0,0,0,0,.T.)
	::oMenu:Add(TMenuItem():New(::oPainel,Padr("Incluir EDT ",40   ),,,,{|| ::Ramo('1',3)},,'bmpincluir' ,,,,,,,.T.))
	::oMenu:Add(TMenuItem():New(::oPainel,Padr("Incluir Tarefa",40 ),,,,{|| ::Ramo('2',3)},,'bmpincluir' ,,,,,,,.T.))
   	::oMenu:Add(TMenuItem():New(::oPainel,Padr("Visualizar",40     ),,,,{|| ::Ramo('' ,2)},,'bmpvisual'  ,,,,,,,.T.))
	::oMenu:Add(TMenuItem():New(::oPainel,Padr("Alterar",40        ),,,,{|| ::Ramo('' ,4)},,'altera'     ,,,,,,,.T.))		
	::oMenu:Add(TMenuItem():New(::oPainel,Padr("Excluir",40        ),,,,{|| ::Ramo('' ,5)},,'excluir'    ,,,,,,,.T.))
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Method
@Name    : Posicao
@Author  : Cristian Silva
@Date    : 11/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Retorna posicoes.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Posicao(_nLin,_nCol,_lResLin,_lResCol) CLASS CRS707_MAIN                                             
	Default _lResLin := .F.
	Default _lResCol := .F.
	If _lResLin
		::nLin := 0 
	End If
	If _lResCol
		::nCol := 0 
	End If 
	::nLin += _nLin
	::nCol += _nCol
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Executar
@Author  : Cristian Silva
@Date    : 31/12/2018
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Exibe tela para mostrar anexos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/            
Method Executar() CLASS CRS707_MAIN	
	Local _nTamDes1  
	Local _nTamDes2
	Local _nFimCol
	Local _nFimLin
	Local _nSomaPos
	Local _lRet := .F.
	::Reset()                          
	::cPrjTip := space(TamSx3('ZG2_TIPO'  )[1])			  // DEFINES THE LENGTH ACCORDING THE FIELD
	::cPrjDst := space(TamSx3('ZG2_DESCRI')[1])			  // DEFINES THE LENGTH ACCORDING THE FIELD 					
    cCadastro := iif(::cTela = 'Geracao',"Geracao de Novo Projeto","Definicao de Estrutura Padrao")
	DEFINE MSDIALOG ::oPainel TITLE cCadastro  From 0,0 To 500,600  Pixel 	
		_nFimLin := (::oPainel:nClientHeight / 2) 		  // Define Height maximum based on the Client's screen
		_nFimCol := (::oPainel:nClientWidth  / 2) 		  // Define Width maximum based on the Client's screen
		_nTamDes1 := _nFimCol - (45+53+53+14)     		  
	    _nTamDes2 := _nFimCol - (5+5+5+40+5)     																     
		_nSomaPos := iif(::cTela = 'Geracao',26,0)		  // CHECKS WHETHER SCREEN IS 1='GERA PROJETO' 2='GERA ESTRUTURA'
		::oPainel:bInit := EnchoiceBar(::oPainel,{|| FWMsgRun(, {|_oSay| _lRet:=::Gerar()},,'Aguarde...Gerando projeto')},{|| ::oPainel:End() },.f.,,,,.F.,.F.,.F.,.T.,.F.)	// Defines the mais painel and Superior Header			
	 	@ 058+_nSomaPos,008	Say "Estrutura"  		Of ::oPainel Pixel FONT ::oFonte2
 		::oPainel2 := TPanel():New(068+_nSomaPos,008,"",::oPainel ,,,,,,_nFimCol-16,_nFimLin-(45+43+_nSomaPos)) 		// Defines sub-panel 
 		::oTree    := DbTree():New(000,000,(::oPainel2:nClientHeight/2),(::oPainel2:nClientWidth/2),::oPainel2,,,.T.)	// Initializes the tree structure
 		::oTree:Disable()
	    If ::cTela = 'Geracao' 	    	
	       	::cPrjCod := GetSxeNum('AF8','AF8_PROJET')  
	       	AF8->(dbSetOrder(1))         
	       	_cBusca := xFilial('AF8')+::cPrjCod
	    	Do While AF8->(dbSeek(_cBusca))
				ConfirmSX8()		                       
				::cPrjCod := GetSxeNum('AF8','AF8_PROJET')   
				_cBusca:=xFilial('AF8')+::cPrjCod       
			End Do       	       	
	       	ConfirmSX8()   	
	       	
			::Posicao(32,8,.T.,.T.) 																		
		   	@ ::nLin+0,::nCol Say "Projeto"			   		 Of  ::oPainel Pixel			
			@ ::nLin+8,::nCol MsGet ::oPrjCod				 Var ::cPrjCod Picture "@!" WHEN .F.	Size 040,009  	  Of ::oPainel Pixel HASBUTTON 
			::Posicao(000,045)	
			@ ::nLin+0,::nCol Say "Descricao do Projeto"	 Of  ::oPainel Pixel			
			@ ::nLin+8,::nCol MsGet ::oPrjDes				 Var ::cPrjDes Picture "@!"		   		Size _nTamDes1,009 Of ::oPainel Pixel HASBUTTON
			::Posicao(000,_nTamDes1+5)
			@ ::nLin+0,::nCol Say "Data Inicio"    			 Of  ::oPainel Pixel			
   			@ ::nLin+8,::nCol MsGet ::oPrjDti      	     	 Var ::dPrjDti Valid ::VldDate()		Size 048,009 	  Of ::oPainel Pixel HASBUTTON	
   			::Posicao(000,053)
			@ ::nLin+0,::nCol Say "Data Fim"       			 Of  ::oPainel Pixel 			
   			@ ::nLin+8,::nCol MsGet ::oPrjDtf      	    	 Var ::dPrjDtf WHEN .F.		 			Size 048,009 	  Of ::oPainel Pixel HASBUTTON	
			::oPrjDes:SetFocus()
	 	End If
		::Posicao(30,8,.T.,.T.)
   		@ ::nLin+0+_nSomaPos,::nCol Say "Tipo"			     Of  ::oPainel Pixel			
		@ ::nLin+8+_nSomaPos,::nCol MsGet ::oPrjTip			 Var ::cPrjTip Picture "@!" F3 "ZG1" Valid ::VldTipo() Size 040,0009   Of ::oPainel Pixel HASBUTTON 
		::Posicao(000,045)	
		@ ::nLin+0+_nSomaPos,::nCol Say "Descricao do Tipo"	 Of  ::oPainel Pixel			
		@ ::nLin+8+_nSomaPos,::nCol MsGet ::oPrjDst			 Var ::cPrjDst Picture "@!"		  		Size _nTamDes2,009 	  Of ::oPainel Pixel HASBUTTON
		::oPrjDst:Disable()                     
		::CriaMenu()
		::oTree:bChange    := {|| ::MudaMenu()                  }		                                                       
		::oTree:bRClicked  := {|_o,_a,_b|::oMenu:Activate(_a,_b)}
		::oTree:bLDblClick := {|| ::DblClick()       			} 
 		If ::cTela = 'Estrutura'
			::oPrjTip:SetFocus()
		End If                        				
 	ACTIVATE MSDIALOG ::oPainel CENTERED	
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : DblClick
@Author  : Cristian Silva
@Date    : 12/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Define acao do Double Click.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method DblClick() Class CRS707_MAIN 
	Local _cCargo := ::oTree:GetCargo()
	Local _cTipo  := Left(_cCargo,3)
	If _cTipo = 'EST' .or. _cTipo = 'EDT'
		Return .F.
	Else 
		::Ramo('',2) 
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : VldDate
@Author  : Cristian Silva
@Date    : 07/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Valida a data para cлlculo de data final.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method VldDate() Class CRS707_MAIN
	If Empty(::dPrjDti)
    	Return .T.
	End If
	If !::DiaUtil(::dPrjDti)
		MsgStop('Data nao УЉ dia УКtil, altere!','Atencao')
		::oPrjDti:SetFocus()
		Return .F.
	ElseIf Empty(::cPrjTip)
		::oPrjTip:SetFocus()
	Else          
		::oCalculo:cProjeto := ::cPrjCod
		::oCalculo:cRevisao := ::cPrjRev
		::oCalculo:Calcula() 
	End If		 
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : VldTipo
@Author  : Cristian Silva
@Date    : 16/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Valida o tipo de projeto digitado.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method VldTipo() Class CRS707_MAIN
	If Empty(::cPrjTip)
    	Return .T.
	End If
	ZG1->(DbSetOrder(1))          
	If !ZG1->(DbSeek(xFilial('ZG1')+::cPrjTip))
		If ::cTela = 'Geracao' 
			MsgStop('Tipo de projeto inexistente','Atencao')
		    Return .F.
		End If
		If ::cTela = 'Estrutura' 
		 	If MsgYesNo('Novo tipo de estrutura!<br>Deseja incluir uma nova estrutura?','Atencao')
				ZG3->(DbSetOrder(2))
				If ZG3->(DbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev))
					::MataZG3(&cPrjRev)
				End If
				::MakeZG1()
				::oPrjDst:Enable()
				::cPrjDst := space(TamSx3('ZG2_DESCRI')[1])
				::oPrjDst:SetFocus()                                  
			Else
				::oPrjTip:SetFocus()
			End If
		End If		
	Else
		ZG3->(DbSetOrder(2))
		If ZG3->(DbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev))
			::MataZG3(::cPrjRev)
		End If
		If ::cTela = 'Geracao' 
	   		::CopyZG2() 
	   		::oCalculo:cProjeto := ::cPrjCod
			::oCalculo:cRevisao := ::cPrjRev
			::oCalculo:Calcula()
		End If
		::cPrjDst := ZG1->ZG1_DESCRI
		If Empty(::cPrjDst)
			::oPrjDst:Enable()
			::cPrjDst := space(TamSx3('ZG2_DESCRI')[1])
			::oPrjDst:SetFocus()
		Else
			::oPrjDst:Disable()
		End If
		::oPrjDst:Refresh()
		::oPrjTip:Disable()	// DISABLES THE FIELD
		::MontaArvore()
	End If
Return .T.

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : MataZG3
@Author  : Cristian Silva
@Date    : 30/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Mata cлpia da tabela ZG2 caso jл exista projeto com mesmo cлdigo.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method MataZG3(_cRev) Class CRS707_MAIN 
	Local _lRet   := .F. 
	Local _cAlias := GetNextAlias()
	Local _nRecno := 0
	Default _cRev := '' 

	BeginSql Alias _cAlias
		SELECT ZG3.R_E_C_N_O_ AS REGISTRO 
		FROM %Table:ZG3% ZG3 
		WHERE 
		ZG3.ZG3_FILIAL  = %xFilial:ZG3% AND		
		ZG3.ZG3_PROJET  = %exp:self:cPrjCod% AND 
		ZG3.ZG3_REVISA  = %exp:_cRev% AND 				
		ZG3.%notdel% 
	EndSql            
	Begin Transaction 
		Do While !(_cAlias)->(eof())
			_nRecno := (_cAlias)-> REGISTRO
			ZG3->(dbGoTo(_nRecno))
			ZG3->(RecLock('ZG3',.F.))
			ZG3->(dbDelete())
			ZG3->(MsUnlock())
			(_cAlias)->(dbSkip())
		End Do
	End Transaction
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2') 
	_lRet := .T.
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : CopyZG2
@Author  : Cristian Silva
@Date    : 29/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Cria cлpia da tabela ZG2 para servir de projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method CopyZG2() Class CRS707_MAIN 
	Local _cAlias    := GetNextAlias()
    Local _x
    Local _cCampo    := ''
    Local _nPosCpo   := 0
    Local _xConteudo
	BeginSql Alias _cAlias
		SELECT *  
		FROM %Table:ZG2% ZG2 
		WHERE 
		ZG2.ZG2_FILIAL  = %xFilial:ZG2% AND		
		ZG2.ZG2_TIPO    = %exp:self:cPrjTip% AND  
		ZG2.%notdel% 
	EndSql           
	Begin Transaction 
		Do While !(_cAlias)->(eof())		
			ZG3->(RecLock('ZG3',.T.))
			ZG3->ZG3_PROJET := ::cPrjCod              
			ZG3->ZG3_REVISA := ::cPrjRev
			For _x := 1 to (_cAlias)->(fCount())         			
				_cCampo    := 'ZG3_'+alltrim(substr((_cAlias)->(FieldName(_x)),5))                          
				_nPosCpo   := ZG3->(FieldPos(_cCampo))                      
				_xConteudo := (_cAlias)->(FieldGet(_x))
				If _nPosCPO > 0 
					ZG3->(FieldPut(_nPosCPO,_xConteudo))
				End If
			Next _x
			ZG3->(MsUnlock())
			(_cAlias)->(dbskip())
		End Do  
	End Transaction
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2')			
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : DiaUtil
@Author  : Marcos Santana
@Date    : 07/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Verifica se л dia лtil.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method DiaUtil(_dData) Class CRS707_MAIN
	If 	DOW(_dData) = 7 .or. DOW(_dData) = 1 
		Return .f.
	End If
Return .T.	

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Gerar
@Author  : Cristian Silva
@Date    : 24/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Gera as tabelas dos projetos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Gerar() Class CRS707_MAIN // IT IS CALLED WHEN A USER CLICKS ON THE 'GERAR' BUTTON	                                        							 // STORES THE RETURN VALUE FROM MakeZG1(). WHETHER COMPLETE = .T.; !COMPLETE = .F. 
	Local _lRet := .F.	
    _lRet := ::VldGerar()
    If _lRet
    	If ::cTela = 'Geracao'
    		::MontaArvore()                          
	    	::oGerar:cPrjTip  := ::cPrjTip	// CONVEYING THE VALUE INTO TABLES AT HYD702 (AF8,AFC,AF9,AFX)
    		::oGerar:cProjeto := ::cPrjCod  
	    	::oGerar:cPrjRev  := ::cPrjRev
	    	::oGerar:dPrjDti  := ::dPrjDti                                 
	    	::oGerar:dPrjDtf  := ::dPrjDtf                                
	      	::oGerar:cPrjDes  := ::cPrjDes                               
	      	::oGerar:cPrjDst  := ::cPrjDst                                
	      	::oGerar:Executar()
	      	::oPainel:End()	
    	ElseIf ::cTela = 'Estrutura' 		
 			::MakeZG1()
 			::oPainel:End()                
    	End If 
    End If
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : VldGerar
@Author  : Cristian Silva (feat Marcos)
@Date    : 16/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava ou cria registro na ZG1 e monta лrvore.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method VldGerar() CLASS CRS707_MAIN
	If ::cTela = 'Geracao'
		If Empty(::cPrjTip)                                 	
			MsgStop("Informe o Tipo de Projeto","Atencao!")
			::oPrjTip:SetFocus() 								
			Return .F.
		ElseIf Empty(::cPrjDes)                                 
			MsgStop("Informe a Descricao do Projeto","Atencao!")
			::oPrjDes:SetFocus()
			Return .F.
		ElseIf Empty(::dPrjDti)
			MsgStop("Informe a Data de Inicio do Projeto","Atencao!")
			::oPrjDti:SetFocus()
			Return .F.
		End If
	ElseIf ::cTela = 'Estrutura' 
		If Empty(::cPrjDst) 
			MsgStop("Informe a Descricao da Nova Estrurura","Atencao!")
		    ::oPrjDst:SetFocus()
		    Return .F.
		End If
	End If                	
Return .T. 	

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : MakeZG1
@Author  : Cristian Silva
@Date    : 16/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava ou cria registro na ZG1 e monta лrvore.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method MakeZG1() Class CRS707_MAIN
	Local _lExiste 
	ZG1->(DbSetOrder(1)) 								
	_lExiste := ZG1->(DbSeek(xFilial('ZG1')+::cPrjTip))	
	Begin Transaction 
		ZG1->(RecLock('ZG1',!_lExiste))
		ZG1->ZG1_FILIAL	:= 	xFilial('ZG1')
		ZG1->ZG1_CODIGO	:= ::cPrjTip
		ZG1->ZG1_DESCRI	:= ::cPrjDst
		ZG1->(MsUnLock())
	End Transaction                                 
	::MontaArvore()
Return .T.   

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : MontaArvore
@Author  : Cristian Silva
@Date    : 16/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Monta a estrutura da лrvore.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method MontaArvore() Class CRS707_MAIN
	Local _cCargo  := 'EST'+space(TamSx3('ZG2_CODIGO')[1])+'001'							// SETS THE TREE'S FIRST LEVEL 
	::oTree:Enable()																		// ENABLE TREE
	::oTree:lVisible:=.F. 																	// DISABLES THE VISUALIZATIION FOR UPDATING
	::oTree:BeginUpdate()																	// STARTS A TREE UPDATE 
	::oTree:Reset()    																		// CLEAR THE PREVIOUS TREE STRUCTURE
	::oTree:AddTree(PADR('Estrutura',400),.T.     ,'ng_ico_doc2','ng_ico_doc1',,,_cCargo)   // MAKES FIRST LEVEL
	::RodaArvore(_cCargo,'') 																// CALLS THE TREE STRUCTURE WITH EMPTY LEVEL.	
	::oTree:EndTree()																		// CLOSES THE TREE 
	::oTree:EndUpdate()																		// FINISHES THE TREE UPDATE
	::oTree:lVisible:=.T.                                                                   // ENABLES THE TREE VISUALIZATION AFTER UPDATE
	::oTree:Refresh()																		// REFRESH THE TREE.
	::oTree:TreeSeek(_cCargo)   															// SELECT THE FIRST ITEM.
	If ::cTela = 'Estrutura'
		::MudaMenu()                                                                       
    End If 
    If ::cTela = 'Revisao'
    	::cPrjRev := ::cRevNew
    End If
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : RodaArvore
@Author  : Cristian Silva
@Date    : 16/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Busca nлvel dos itens na estrutura da лrvore.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method RodaArvore(_cCargo,_cSuperior) CLASS CRS707_MAIN
	Local _cPrompt
	Local _cNewCargo
 	Local _cAlias := GetNextAlias() 							   	 
	::RunQuery(_cSuperior,_cAlias)                     
	Do While !(_cAlias)->(eof())		
		::oTree:TreeSeek(_cCargo) 															                              
		_cPrompt    := PADR(ALLTRIM((_cAlias)->CODIGO) +' - '+ (_cAlias)->DESCRICAO,400)	
		IF (_cAlias)->TIPOEST = '2' 				   										                          
			_cNewCargo  := 'TSK'+(_cAlias)->(CODIGO+NIVEL)
			::CheckStatus((_cAlias)->CODIGO,'TSK')
			::oTree:AddItem(_cPrompt, _cNewCargo,::cSheet,,,, 2)	 					    // ADD A LEAF				
		Else   																				// EDT = BRANCH 
			_cNewCargo  := 'EDT'+(_cAlias)->(CODIGO+NIVEL)
		    ::CheckStatus((_cAlias)->CODIGO,'EDT')
		    If ::TemFilhos(_cNewCargo)
				::oTree:AddTree(_cPrompt,.T.,::cClFolder,::cOpFolder ,,,_cNewCargo)     	// ADD A BRANCH
				::RodaArvore(_cNewCargo,(_cAlias)->CODIGO) 									// CALLS SUB LEVEL 
				::oTree:EndTree()															// COMPLETED BRANCH.
			Else
				::oTree:AddItem(_cPrompt, _cNewCargo,::cClFolder,,,, 2)	 					// ADD A LEAF 
		    End If
		End If 
		(_cAlias)->(dbskip())
	End Do  
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2')	
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : RunQuery
@Author  : Cristian Silva
@Date    : 30/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Query que define os dados usados para a criacao de лrvore. Se cTela = 'Geracao', cria 
лrvore baseada na ZG3, se cTela = 'Estrutura' cria лrvore baseada na ZG2.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method RunQuery(_cSuperior,_cAlias) CLASS CRS707_MAIN   
	If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'
		BeginSql Alias _cAlias
			SELECT ZG3_CODIGO AS CODIGO,ZG3_REVISA AS REVISAO,ZG3_DESCRI AS DESCRICAO,ZG3_TPEST AS TIPOEST,ZG3_NIVEL AS NIVEL,ZG3_TIPO AS TIPO 
			FROM %Table:ZG3% ZG3 
			WHERE 
			ZG3.ZG3_FILIAL  = %xFilial:ZG3% AND		
			ZG3.ZG3_SUPER   = %exp:_cSuperior% AND 
			ZG3.ZG3_PROJET  = %exp:Self:cPrjCod% AND 
			ZG3.ZG3_REVISA  = %exp:Self:cPrjRev% AND 
			ZG3.%notdel% 
		EndSql
	End If
	If ::cTela = 'Estrutura'  
		BeginSql Alias _cAlias
			SELECT ZG2_CODIGO AS CODIGO,ZG2_DESCRI AS DESCRICAO,ZG2_TPEST AS TIPOEST,ZG2_NIVEL AS NIVEL  
			FROM %Table:ZG2% ZG2 
			WHERE 
			ZG2.ZG2_FILIAL  = %xFilial:ZG2% AND		
			ZG2.ZG2_TIPO    = %exp:self:cPrjTip% AND  
			ZG2.ZG2_SUPER   = %exp:_cSuperior% AND 
			ZG2.%notdel% 
		EndSql 
	End If     
Return _cAlias

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : TemFilhos
@Author  : Cristian Silva
@Date    : 16/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Confere se EDT selecionada tem tarefas (filhos).
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   

Method TemFilhos(_cNewCargo) CLASS CRS707_MAIN
	Local _cQuery := ''
	Local _cEnter := chr(13)+chr(10)
	Local _lRet	  := .F.
    Local _cSuper := SubStr(_cNewCargo,4,20)    
    If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'
		_cQuery	:=_cEnter+" SELECT COUNT(*) AS TOTAL "
		_cQuery	+=_cEnter+" FROM "+RetSqlName('ZG3')+" ZG3 " 
		_cQuery +=_cEnter+" WHERE "
		_cQuery +=_cEnter+" ZG3.ZG3_FILIAL = '"+xFilial('ZG3')+"' AND "
		_cQuery +=_cEnter+" ZG3.ZG3_PROJET = '"+::cPrjCod+"' AND "
		_cQuery +=_cEnter+" ZG3.ZG3_REVISA = '"+::cPrjRev+"' AND "		
		_cQuery +=_cEnter+" ZG3.ZG3_SUPER = '"+_cSuper+"' AND "
		_cQuery +=_cEnter+" D_E_L_E_T_<>'*'"   
	End If    
    If ::cTela = 'Estrutura'
		_cQuery	:=_cEnter+" SELECT COUNT(*) AS TOTAL "
		_cQuery	+=_cEnter+" FROM "+RetSqlName('ZG2')+" ZG2 " 
		_cQuery +=_cEnter+" WHERE "
		_cQuery +=_cEnter+" ZG2.ZG2_FILIAL = '"+xFilial('ZG2')+"' AND "
		_cQuery +=_cEnter+" ZG2.ZG2_TIPO = '"+::cPrjTip+"' AND "
		_cQuery +=_cEnter+" ZG2.ZG2_SUPER = '"+_cSuper+"' AND "
		_cQuery +=_cEnter+" D_E_L_E_T_<>'*'"   
	End If	
	DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),'TEM',.F.,.T.)
	_lRet := TEM->TOTAL > 0
	TEM->(dbCloseArea())
	DbSelectArea('SX2') 
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : MudaMenu
@Author  : Cristian Silva
@Date    : 16/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Muda opУЇoes do menu conforme posicionamento na arvore de anexos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/               

Method MudaMenu() CLASS CRS707_MAIN
	Local _cCargo := ::oTree:GetCargo()
	If Left(_cCargo,3) $ 'EST' 
		::oMenu:aItems[1]:Enable()       // ENABLES BUTTON 'INCLUIR EDT'
		::oMenu:aItems[2]:Disable()      // DISABLES BUTTON 'INCLUIR TAREFA'
		::oMenu:aItems[3]:Disable()   	 // DISABLES BUTTON 'ALTERAR'
		::oMenu:aItems[4]:Disable()		 // DISABLES BUTTON 'EXCLUIR'			
		::oMenu:aItems[5]:Disable()		 // DISABLES BUTTON 'VISUALIZAR'
	ElseIf Left(_cCargo,3) $ 'EDT'                         
		::oMenu:aItems[1]:Enable()	     // ENABLES BUTTON 'INCLUIR EDT'
		::oMenu:aItems[2]:Enable()       // ENABLES BUTTON 'INCLUIR TAREFA'
		::oMenu:aItems[3]:Enable()       // ENABLES BUTTON 'VISUALIZAR'
		::oMenu:aItems[4]:Enable()       // ENABLES BUTTON 'ALTERAR'
		::oMenu:aItems[5]:Enable()       // ENABLES BUTTON 'EXCLUIR'
	Else
		::oMenu:aItems[1]:Disable()	     // DISABLES BUTTON 'INCLUIR EDT' 
		::oMenu:aItems[2]:Disable()		 // DISABLES BUTTON 'INCLUIR TAREFA'
		::oMenu:aItems[3]:Enable()       // ENABLES BUTTON 'VISUALIZAR'		
		::oMenu:aItems[4]:Enable()		 // ENABLES BUTTON 'ALTERAR'
		::oMenu:aItems[5]:Enable() 		 // ENABLES BUTTON 'EXCLUIR'
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Ramo
@Author  : Cristian Silva
@Date    : 16/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Exibe tela para inclusлo de EDT e Tarefa.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   

Method Ramo(_cTipo,_nOpc) Class CRS707_MAIN	          
	Local _nFimCol   := 0
	Local _nFimLin   := 0
	Local _cSuperior := SubStr(::oTree:GetCargo(),4,20)
	Local _nSize   	 := 0
	Local _nTamDes   := 0
	Local _nTamNom   := 0 
	Default _cTipo   := ''
	::lInclusao      := (_nOpc = 3 )
	
	If _nOpc <> INCLUSAO 
		_cTipo:= Iif(SubStr(::oTree:GetCargo(),1,3)='EDT','1','2')    
	End If
	
	If _nOpc = EXCLUSAO 
		::ExcEDTTSK()	
		Return 
	End If
	
	::DefTitle2(_cTipo,_nOpc)// DEFINES DIALOG'S TITLE ACCORDING TO SCRREN'S TYPE					
    _nSize := ::DefSize(_cTipo)	

	DEFINE MSDIALOG ::oPainel3 TITLE cCadastro  From 0,0 To _nSize,568  Pixel 	
		_nFimLin := (::oPainel3:nClientHeight / 2) // DEFINES HEIGHT MAXIMUM BASED ON THE CLIENT'S SCREEN
		_nFimCol := (::oPainel3:nClientWidth  / 2) // DEFINES WIDTH MAXIMUM BASED ON THE CLIENT'S SCREEN
	    
	    If _nOpc = VISUALIZACAO
	   		::oPainel3:bInit := EnchoiceBar(::oPainel3,{|| ::oPainel3:End()},{|| ::oPainel3:End() },.F.,,,,.F.,.F.,.F.,.F.,.F.) // DEFINES SUPERIOR HEADER 	
		Else
			::oPainel3:bInit := EnchoiceBar(::oPainel3,{|| ::Grava(_cTipo,(_nOpc = ALTERACAO),_cSuperior)},{|| ::oPainel3:End() },.F.,,,,.F.,.F.,.F.,.T.,.F.) // DEFINES SUPERIOR HEADER 			
		End If
		::ResetInc()	   
		If ::lInclusao
		    ::MakeCode(_cTipo,_cSuperior) // DEFINES THE CODE WHICH WILL BE SHOWN																			
		Else
			::PuxaValores(_cTipo,_cSuperior) 		    	      		    
		End If	     

		::Posicao(30,5,.T.,.T.) // RESETS THE LINE AND COLUMN'S VALUES	
		@ ::nLin+0,::nCol Say "Codigo"			    Of  ::oPainel3	Pixel			
		@ ::nLin+8,::nCol MsGet ::oIncCod			Var ::cIncCod	Picture "@!" WHEN .F. 		  				Size 060,009 Of ::oPainel3 Pixel HASBUTTON 
		::Posicao(000,065)
	    _nTamDes := _nFimCol - (::nCol+5)
		@ ::nLin+0,::nCol Say "Descricao"			Of  ::oPainel3	Pixel			
		@ ::nLin+8,::nCol MsGet ::oIncDes			Var ::cIncDes	Picture "@!"								Size _nTamDes,009 Of ::oPainel3 Pixel HASBUTTON
		::Posicao(024,005,,.T.)
		::oIncCod:SetFocus()
		@ ::nLin+0,::nCol Say "Departamento"		Of  ::oPainel3	Pixel			
		@ ::nLin+8,::nCol MsGet ::oIncDpt			Var ::cIncDpt	Picture "@!" F3 "ZA1" Valid ::BuscaDpt()	Size 60,009 Of ::oPainel3 Pixel HASBUTTON
		::Posicao(000,065)
		_nTamNom := (_nFimCol - (::nCol+5+45+5))/2
		@ ::nLin+0,::nCol Say "Nome Departamento"	Of  ::oPainel3	Pixel			
		@ ::nLin+8,::nCol MsGet ::oIncNdp			Var ::cIncNdp	Picture "@!" WHEN .F.						Size _nTamNom,009 Of ::oPainel3 Pixel HASBUTTON
		::Posicao(000,_nTamNom+5)
		@ ::nLin+0,::nCol Say "Usuario"				Of  ::oPainel3	Pixel 			
		@ ::nLin+8,::nCol MsGet ::oIncUsu			Var ::cIncUsu	Picture "@!" F3 "ZA2" Valid ::BuscaNome()	Size 40,009  Of ::oPainel3 Pixel HASBUTTON
		::Posicao(000,045)
		@ ::nLin+0,::nCol Say "Nome"				Of  ::oPainel3	Pixel 			
		@ ::nLin+8,::nCol MsGet ::oIncNom			Var ::cIncNom	Picture "@!" WHEN .F.						Size _nTamNom,009 Of ::oPainel3 Pixel HASBUTTON
		::oIncDes:SetFocus()
		::BuscaDpt()
		::BuscaNome()
		If _cTipo = '2' // TASK
	    	::Posicao(78,5,.T.,.T.)																			
			@ ::nLin+0,::nCol Say "Tipo de Ref"     Of  ::oPainel3 Pixel			
			@ ::nLin+8,::nCol ComboBox ::oIncRef	Var ::cIncRef  Items ::aIncRef	Size 045,0012 Of ::oPainel3 Pixel     
   			::oIncRef:bChange := {||::TrocaTipo()}
   			::Posicao(000,050)	    	 																			            
   			@ ::nLin+0,::nCol Say "Quantidade"		Of  ::oPainel3 Pixel			
			@ ::nLin+8,::nCol MsGet ::oIncQtd		Var ::nIncQtd  Picture '@E 9,999.99'  Valid ::VldQtd()      Size 040,009  Of ::oPainel3 Pixel HASBUTTON 
			::Posicao(000,45)	
			@ ::nLin+0,::nCol Say "Tipo de Dias"	Of  ::oPainel3 Pixel			
			@ ::nLin+8,::nCol ComboBox ::oIncDia	Var ::cIncDia  Items ::aIncDia	Size 055,0012 Of ::oPainel3 Pixel
			If ::lInclusao // WHEN ADDING TASK 
		    	::oIncRef:nAt := 1
		    	::oIncDia:nAt := 1
			End If
	    End If
		If ::cTela = 'Estrutura'
			If _cTipo = '2'     
				If _nOpc <> INCLUSAO 
					::ComoboxPos(_cSuperior)       
		   		End If
			End If  
		End If
	    If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'   // NEW PROJECT GENERATION SCREEN  			
	    	::Posicao(024,005,,.T.)
		    @ ::nLin+0,::nCol Say "Inicio Prev."		Of  ::oPainel3   	Pixel			
			@ ::nLin+8,::nCol MsGet ::oIncDip			Var ::dIncDip		Picture "@!"       WHEN .F.	Size 048,009 Of ::oPainel3 Pixel HASBUTTON
			::Posicao(000,053)
		 	@ ::nLin+0,::nCol Say "H/Inic.Prev."	    Of  ::oPainel3	    Pixel			
			@ ::nLin+8,::nCol MsGet ::oIncHip			Var ::cIncHip 		Picture "99:99:99" WHEN .F.	Size 045,009 Of ::oPainel3 Pixel HASBUTTON
			::Posicao(000,050)
			@ ::nLin+0,::nCol Say "Fim Prev."			Of  ::oPainel3		Pixel			
			@ ::nLin+8,::nCol MsGet ::oIncDfp			Var ::dIncDfp		Picture "@!"       WHEN .F.	Size 048,009 Of ::oPainel3 Pixel HASBUTTON
			::Posicao(000,053)
			@ ::nLin+0,::nCol Say "H/Fim.Prev."	    	Of  ::oPainel3		Pixel			
			@ ::nLin+8,::nCol MsGet ::oIncHfp			Var ::cIncHfp 		Picture "99:99:99" WHEN .F.	Size 045,009 Of ::oPainel3 Pixel HASBUTTON
			If _cTipo = '2' // TASK
	    		::oIncQtd:bChange := {||::RTimeCalc()}
	    		::oIncDia:bChange := {||::RTimeCalc()}    
	    		//1=pesquisa; 2=visualizar 3=incluir 4= alterar 5 exclusao
	    		If _nOpc <> INCLUSAO 
					::ComoboxPos(_cSuperior)       
		   		End If   	
	    	End If	
	    End If
	    If _nOpc = VISUALIZACAO
	    	::Visualiza(_cTipo)
	    End If 	    
	ACTIVATE MSDIALOG ::oPainel3 CENTERED 	 
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : DefTitle2
@Author  : Cristian Silva
@Date    : 30/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Define titulo da dialog.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method DefTitle2(_cTipo,_nOpc) Class CRS707_MAIN	  	
	Local _cOperacao := Iif(_nOpc=VISUALIZACAO,'Visualizacao',iif(_nOpc=3,'Incluscao','Alteracao'))
	cCadastro := _cOperacao + ' de '+iif(_cTipo='1','EDT','tarefa')
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : DefSize
@Author  : Cristian Silva
@Date    : 09/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Define tamanho da dialog.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method DefSize(_cTipo) Class CRS707_MAIN	  	
	Local _nSize := 0
	
	If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'   // NEW PROJECT GENERATION SCREEN 
		If _cTipo = '1'// EDT
			_nSize := 208
		Else
			_nSize := 256
		End If
	End If
	If ::cTela = 'Estrutura' 
		If _cTipo = '1' // EDT
			_nSize := 160
		Else
			_nSize := 208
		End If
	End If 
Return _nSize

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : MakeCode
@Author  : Cristian Silva
@Date    : 18/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Criacao de cлdigo automлtico para campo virtual.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method MakeCode(_cTipo,_cSuperior) Class CRS707_MAIN
	Local _cQuery   := ''
	Local _cEnter   := chr(13)+chr(10)
	Local _cCount	:= ''
	Local _cRet		:= ''
	Local _cCargo	:= ::oTree:GetCargo()                  
	Local _cNivel   := Substr(_cCargo,24,3) 
	If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'
		_cQuery	:= _cEnter + " SELECT TOP 1 ZG3_CODIGO,ZG3_FINISH,ZG3_HORAF,ZG3_USER,ZG3_DPTO "
		_cQuery	+= _cEnter + " FROM "+RetSqlName('ZG3')+" ZG3 " 
		_cQuery += _cEnter + " WHERE "
		_cQuery += _cEnter + " ZG3.ZG3_FILIAL = '"+xFilial('ZG3')+"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_PROJET = '"+::cPrjCod +"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_REVISA = '"+::cPrjRev +"' AND "				
		_cQuery += _cEnter + " ZG3.ZG3_SUPER  = '"+_cSuperior+"' AND " 
		_cQuery += _cEnter + " ZG3.D_E_L_E_T_<> '*' "		
		_cQuery += _cEnter + " ORDER BY ZG3_CODIGO DESC " 
		DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),'ZG3TMP',.F.,.T.)
		IF !ZG3TMP->(eof())
			_cCount := AllTrim(ZG3TMP->ZG3_CODIGO) // RETURN CODE  		
			::dIncDip := stod(ZG3TMP->ZG3_FINISH)
			::cIncHip := ZG3TMP->ZG3_HORAF 
			If ::cIncHip <> ::Hora(::dIncDip,'HORAINI',ZG3TMP->ZG3_USER,ZG3TMP->ZG3_DPTO)			
				::Mais1(ZG3TMP->ZG3_USER,ZG3TMP->ZG3_DPTO)
			End If
			::dIncDfp := ::dIncDip
			::cIncHfp := ::cIncHip     
		Else	 
			If !::PegaPai(_cSuperior)		
				::dIncDip := ::dPrjDti
				::cIncHip := ::Hora(::dPrjDti,'HORAINI',ZG3TMP->ZG3_USER,ZG3TMP->ZG3_DPTO)
			End If 
		End If 
		If _cCargo = 'EST' .and. Len(_cCount) = 0 // FIRST LEVEL AND FIRST 'BRANCH' OF THE TREE 
			_cRet  := AllTrim(_cSuperior) + '01'                   
			::cIncNiv := '002'
		ElseIf _cCargo != 'EST' .and. Len(_cCount) = 0 // SECOND LEVEL AND FIRST 'LEAF' OF THE TREE
			_cRet := AllTrim(_cSuperior) + '.01'
			::cIncNiv := Soma1(_cNivel)
		ElseIf Len(_cCount) > 2
			_cRet := SubStr(_cCount,1,Len(_cCount)-2) + Soma1(Right(_cCount,2)) 
			::cIncNiv := Soma1(_cNivel)
	 	Else
			_cRet := Soma1(_cCount)
			::cIncNiv := Soma1(_cNivel)		
		End If
		::cIncCod := _cRet			
		ZG3TMP->(dbCloseArea())
		DbSelectArea('SX2')
	End If
	
	If ::cTela = 'Estrutura'
		_cQuery	:= _cEnter + " SELECT MAX(ZG2_CODIGO) AS ZG2_CODIGO "
		_cQuery	+= _cEnter + " FROM "+RetSqlName('ZG2')+" ZG2 " 
		_cQuery += _cEnter + " WHERE "
		_cQuery += _cEnter + " ZG2.ZG2_FILIAL = '"+xFilial('ZG2')+"' AND "
		_cQuery += _cEnter + " ZG2.ZG2_TIPO = '"+::cPrjTip+"' AND "
		_cQuery += _cEnter + " ZG2.ZG2_SUPER = '"+_cSuperior+"' AND " 
		_cQuery += _cEnter + " ZG2.D_E_L_E_T_<> '*' "	
	
		DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),'ZG2TMP',.F.,.T.)
		_cCount := AllTrim(ZG2TMP->ZG2_CODIGO) // RETURN CODE  
		
		If _cCargo = 'EST' .and. Len(_cCount) = 0 // FIRST LEVEL AND FIRST 'BRANCH' OF THE TREE 
			_cRet  := AllTrim(_cSuperior) + '01'                    
			::cIncNiv := '002'
		ElseIf _cCargo != 'EST' .and. Len(_cCount) = 0 // SECOND LEVEL AND FIRST 'LEAF' OF THE TREE
			_cRet := AllTrim(_cSuperior) + '.01'
			::cIncNiv := Soma1(_cNivel)
		ElseIf Len(_cCount) > 2
			_cRet := SubStr(_cCount,1,Len(_cCount)-2) + Soma1(Right(_cCount,2))// TO CHECK IF SUBSTR IS NECESSERY !!!!
			::cIncNiv := Soma1(_cNivel)
	 	Else
			_cRet := Soma1(_cCount)
			::cIncNiv := Soma1(_cNivel)		
		End If
		::cIncCod := _cRet	
		ZG2TMP->(dbCloseArea())
		DbSelectArea('SX2')
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Mais1
@Author  : Cristian Silva
@Date    : 26/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Acrescenta 1s para e acrescenta um dia se necessлrio.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Mais1(_cUser,_cDpto) Class CRS707_MAIN 
	Local _nSecDay  := U_PhxHrsSec(::Hora(::dIncDip,'HORAFIM',_cUser,_cDpto))
	Local _nSeconds := U_PhxHrsSec(::cIncHip)+1 
	If _nSeconds > _nSecDay
		::dIncDip++ 
		::dIncDip := ::WorkDay(::dIncDip)
		::cIncHip := ::Hora(::dIncDip,'HORAINI',_cUser,_cDpto)
	Else
		::cIncHip := U_SecsToTime(_nSeconds)
	End If 
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : BuscaDpt
@Author  : Cristian Silva
@Date    : 25/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Carrega nome do departamento cadastrado dentro de campo virtual.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method BuscaDpt() Class CRS707_MAIN                                             
	If Empty(::cIncDpt)
		::cIncNdp := ''
		::oIncNdp:Refresh()
		Return .T.
	End If         
	ZA1->(DbSetOrder(1))//ZA1_FILIAL+ZA1_DEPTO                                                                                                                                            
	If !ZA1->(DbSeek(xFilial('ZA1')+::cIncDpt))
		MsgInfo('Departamento nao encontrado','Atencao')
		Return .F. 
	Else 
		::cIncNdp := ZA1->ZA1_DESCRI
		::oIncNdp:Refresh()
		Return .T.		
	End If 
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : BuscaNome
@Author  : Cristian Silva
@Date    : 17/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Carrega nome de usuлrio cadastrado dentro de campo virtual.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method BuscaNome() Class CRS707_MAIN
	If Empty(::cIncUsu)
		::cIncNom := ''
		::oIncNom:Refresh()
		Return .T.
	End If 
	ZA2->(DbSetOrder(1))//ZA2_FILIAL+ZA2_CODIGO
	If !ZA2->(DbSeek(xFilial('ZA2')+::cIncUsu))
		MsgInfo('UsuУЁrio nao encontrado','Atencao')
		Return .F.
	Else
		::cIncNom := ZA2->ZA2_NOME
		::oIncNom:Refresh()
		Return .T.
	End If		                                                                                                                                           
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : VldQtd
@Author  : Cristian Silva
@Date    : 26/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Valida campo da quantidade.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method VldQtd() Class CRS707_MAIN
	If ::oIncRef:nAt = 1  // IF THE VARIABLE IS EMPTY,IT REPORTS A MESSAGE AND INSERT THE CURSOR INTO THE FIELD.
		_nInt := int(::nIncQtd)
		_nMin := ::nIncQtd - _nInt
		If _nMin != 0   
			MsgStop("Valor de referencia em dias!<br>Somente permitido dias inteiros","Atencao!")
			::oIncQtd:SetFocus() //	INSERTS THE CURSOR INTO THE FIELD
			Return .F.
		End If
	End If	
Return .T.

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : ComoboxPos
@Author  : Cristian Silva
@Date    : 31/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method ComoboxPos(_cSuperior) Class CRS707_MAIN
	If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'
		ZG3->(dbSetOrder(1))
    	If ZG3->(dbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev+_cSuperior))	 			
			::oIncRef:nAt := ascan(::aIncRef,{ |_r| left(_r,1) = ZG3->ZG3_REF })    
    		::oIncDia:nAt := ascan(::aIncDia,{ |_r| left(_r,1) = ZG3->ZG3_DIAS})
    		::TrocaTipo()   
    	End If
    End If
	If ::cTela = 'Estrutura'
		ZG2->(dbSetOrder(1)) 
    	If ZG2->(dbSeek(xFilial('ZG2')+::cPrjTip+_cSuperior))			
			::oIncRef:nAt := ascan(::aIncRef,{ |_r| left(_r,1) = ZG2->ZG2_REF })   
    		::oIncDia:nAt := ascan(::aIncDia,{ |_r| left(_r,1) = ZG2->ZG2_DIAS})
    		::TrocaTipo()   
    	End If
    End If 
    ::oIncRef:Refresh()
    ::oIncDia:Refresh()
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Visualiza
@Author  : Cristian Silva
@Date    : 31/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Ao visualizar, bloqueia campos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Visualiza(_cTipo) Class CRS707_MAIN
	::oIncDes:Disable()
   	::oIncDpt:Disable()
   	::oIncNdp:Disable()
   	::oIncUsu:Disable()
   	If _cTipo = '2'
   		::oIncRef:Disable()
   		::oIncQtd:Disable()
   		::oIncDia:Disable()
    End If	
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Grava
@Author  : Cristian Silva
@Date    : 17/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava novo tipo de estrutura.
Descriptions@                                 
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Grava(_cTipo,_lAltera,_cSuperior) Class CRS707_MAIN
	Local _cCargo	:= ::oTree:GetCargo()
	Default _lAltera := .F.                      
    If ::VldGrava(_cTipo)
		If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'	  
			ZG3->(dbSetOrder(1))   
			_lExiste := ZG3->(dbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev+::cIncCod))	 
			Begin Transaction 			
				ZG3->(RecLock('ZG3',!_lExiste)) 
				ZG3->ZG3_FILIAL	:= 	xFilial('ZG3')
				ZG3->ZG3_PROJET :=  ::cPrjCod
				ZG3->ZG3_TIPO	:=	iif(::cTela = 'Geracao',::cPrjTip,::cTipoZG3)
				ZG3->ZG3_DESCRI	:=	::cIncDes
				ZG3->ZG3_REVISA	:=	iif(::cTela = 'Geracao',::cPrjRev,::cRevNew)  
				ZG3->ZG3_TPEST	:=	_cTipo
				ZG3->ZG3_CODIGO	:=	::cIncCod
				ZG3->ZG3_USER	:=	::cIncUsu
				ZG3->ZG3_DPTO	:=	::cIncDpt
		    	ZG3->ZG3_START  :=  ::dIncDip
				ZG3->ZG3_HORAI  :=  ::cIncHip
				ZG3->ZG3_FINISH :=  ::dIncDfp
				ZG3->ZG3_HORAF  :=  ::cIncHfp				
				If !_lAltera
					ZG3->ZG3_NIVEL  := ::cIncNiv  
					ZG3->ZG3_SUPER	:=	SubStr( _cCargo, 4, 15)
			    End If
			    If _cTipo = '2'
					ZG3->ZG3_QUANTI := ::nIncQtd
			    	If ::oIncRef:nAt > 0
			    		ZG3->ZG3_REF := left(::aIncRef[::oIncRef:nAt],1)   
					End If
					If ::oIncDia:nAt > 0	
						ZG3->ZG3_DIAS := left(::aIncDia[::oIncDia:nAt],1)
					End If
				End If
				ZG3->(MsUnLock())
			End Transaction
			::oCalculo:cProjeto := ::cPrjCod
			::oCalculo:cRevisao := ::cPrjRev 
			::oCalculo:Calcula()			
		End If
		If ::cTela = 'Estrutura' //GERACAO DE ESTRUTURA
			ZG2->(dbSetOrder(1))
			_lExiste := ZG2->(dbSeek(xFilial('ZG2')+::cPrjTip+::cIncCod))	 
			Begin Transaction 
				ZG2->(RecLock('ZG2',!_lExiste)) 
				ZG2->ZG2_FILIAL	:= 	xFilial('ZG2')
				ZG2->ZG2_TIPO	:=	::cPrjTip   
				ZG2->ZG2_TPEST	:=	_cTipo
				ZG2->ZG2_CODIGO	:=	::cIncCod
				ZG2->ZG2_DESCRI	:=	::cIncDes
				ZG2->ZG2_USER	:=	::cIncUsu
				ZG2->ZG2_DPTO	:=	::cIncDpt
				If !_lAltera
					ZG2->ZG2_NIVEL  := ::cIncNiv 
					ZG2->ZG2_SUPER	:=	SubStr( _cCargo, 4, 15)
			    End If
			    If _cTipo = '2'
					ZG2->ZG2_QUANTI := ::nIncQtd
			    	If ::oIncRef:nAt > 0
			    		ZG2->ZG2_REF := left(::aIncRef[::oIncRef:nAt],1) 
					End If
					If ::oIncDia:nAt > 0	
						ZG2->ZG2_DIAS := left(::aIncDia[::oIncDia:nAt],1)
					End If
				End If
				ZG2->(MsUnLock())
			End Transaction
		End If
		::MontaArvore()
		::oPainel3:End()
	End if
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : VldGrava
@Author  : Cristian Silva
@Date    : 31/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Valida gravacao.
Descriptions@                                 
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method VldGrava(_cTipo) Class CRS707_MAIN 
	Local _lRet := .T.
	If Empty(::cIncDes)
		MsgInfo('Informe a descricao','Atencao')
		_lRet := .F.
		::oIncDes:SetFocus()
	ElseIf Empty(::cIncDpt)
		MsgInfo('Informe o departamento','Atencao')
		_lRet := .F.
		::oIncDpt:SetFocus()	
	ElseIf ::nIncQtd = 0 .and. _cTipo = '2'  
		MsgInfo('Informe a quantidade','Atencao')
		_lRet := .F.
		::oIncQtd:SetFocus()
	End If 
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : TrocaTipo
@Author  : Cristian Silva
@Date    : 25/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Trava Opcao do ComboBox 'Tipo de Dias' em vлzio quando 'Tipo de Referencia' л
igual a horas.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method TrocaTipo() Class CRS707_MAIN
	If ::oIncRef:nAt = 2 // HOUR
		::oIncDia:nAt := 3
		::oIncDia:Disable()
	Else
		If ::oIncDia:nAt = 3
			::oIncDia:nAt := 1
		End If
		::oIncDia:Enable()
	End If 
	If (::cTela = 'Geracao' .or. ::cTela = 'Revisao') .and. ::lInclusao = .F. // GERACAO DE PROJETO
		::RTimeCalc()
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : RTimeCalc
@Author  : Cristian Silva
@Date    : 14/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Calcula data e hora da Task virtualmente sem gravacao.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   

Method RTimeCalc() Class CRS707_MAIN      
	::oCalculo:RetFinish(::dIncDip,::cIncHip,Left(::cIncRef,1),Str(::oIncDia:nat,1),::nIncQtd,::cIncUsu,::cIncDpt)
	::dIncDfp := ::oCalculo:oFinish:dDataFim
	::cIncHfp := ::oCalculo:oFinish:cHoraFim
	::oIncDfp:Refresh()     
	::oIncHfp:Refresh()
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : PuxaValores
@Author  : Cristian Silva
@Date    : 30/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Altera tipo de estrutura.
Descriptions@                                 
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method PuxaValores(_cTipo,_cSuperior) Class CRS707_MAIN
	If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'
		ZG3->(dbSetOrder(1))                                                                                                                     
		If ZG3->(dbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev+_cSuperior))
		    ::cIncRef := ZG3->ZG3_REF
		    ::nIncQtd := ZG3->ZG3_QUANTI
		    ::cIncDia := ZG3->ZG3_DIAS
			::cIncCod := ZG3->ZG3_CODIGO
			::cIncDes := ZG3->ZG3_DESCRI
		 	::cIncDpt := ZG3->ZG3_DPTO
		 	::cIncUsu := ZG3->ZG3_USER 
		 	::cIncNiv := ZG3->ZG3_NIVEL  
 			::dIncDip := ZG3->ZG3_START		 	
	 		::cIncHip := ZG3->ZG3_HORAI
			::dIncDfp := ZG3->ZG3_FINISH
		 	::cIncHfp := ZG3->ZG3_HORAF 
		End If 
	End If
	If ::cTela = 'Estrutura'
		ZG2->(dbSetOrder(1)) 
	    If ZG2->(dbSeek(xFilial('ZG2')+::cPrjTip+_cSuperior))	 
		    ::cIncRef := ZG2->ZG2_REF
		    ::nIncQtd := ZG2->ZG2_QUANTI
		    ::cIncDia := ZG2->ZG2_DIAS
			::cIncCod := ZG2->ZG2_CODIGO
			::cIncDes := ZG2->ZG2_DESCRI
		 	::cIncDpt := ZG2->ZG2_DPTO
		 	::cIncUsu := ZG2->ZG2_USER 
		 	::cIncNiv := ZG2->ZG2_NIVEL
		End If 
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : ExcEDTTSK
@Author  : Cristian Silva
@Date    : 23/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Exclusлo de itens .
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method ExcEDTTSK() Class CRS707_MAIN
	Local _cQuery := ''
	Local _cEnter := chr(13)+chr(10)
    Local _nRecno := 0
	Local _cCargo := ::oTree:GetCargo()
	Local _cTipo  := iif(Left(_cCargo,3) = 'EDT','EDT','Tarefa')
	Local _cTpest := iif(_cTipo = 'EDT','1','2') 
	Local _cCod	  := SubStr(_cCargo,4,20)
	Local _cTab   := ''
	Local _lExec  := .F.

	If ::cTela = 'Geracao' .or. ::cTela = 'Revisao' 
		_cTab 	:= 'ZG3' 
		_cQuery	:= _cEnter + " SELECT R_E_C_N_O_ AS TABRECNO, ZG3_DTATUI AS DATAINI, ZG3_DTATUF AS DATAFIM "
		_cQuery	+= _cEnter + " FROM "+RetSqlName('ZG3')+" ZG3 " 
		_cQuery += _cEnter + " WHERE "
		_cQuery += _cEnter + " ZG3.ZG3_FILIAL = '"+xFilial('ZG3')+"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_PROJET = '"+::cPrjCod+"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_REVISA = '"+::cPrjRev+"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_CODIGO = '"+_cCod+"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_TPEST = '"+_cTpest+"' AND " 
		_cQuery += _cEnter + " ZG3.D_E_L_E_T_<> '*' "	
	End If
	
	If ::cTela = 'Estrutura' 
		_cTab 	:= 'ZG2' 
		_cQuery	:= _cEnter + " SELECT R_E_C_N_O_ AS TABRECNO "
		_cQuery	+= _cEnter + " FROM "+RetSqlName('ZG2')+" ZG2 " 
		_cQuery += _cEnter + " WHERE "
		_cQuery += _cEnter + " ZG2.ZG2_FILIAL = '"+xFilial('ZG2')+"' AND "
		_cQuery += _cEnter + " ZG2.ZG2_TIPO = '"+::cPrjTip+"' AND "
		_cQuery += _cEnter + " ZG2.ZG2_CODIGO = '"+_cCod+"' AND "
		_cQuery += _cEnter + " ZG2.ZG2_TPEST = '"+_cTpest+"' AND " 
		_cQuery += _cEnter + " ZG2.D_E_L_E_T_<> '*' "	
	End If
	
	DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),'TMP',.F.,.T.)
	If !TMP->(eof())
		If ::cTela = 'Revisao' .and. _cTipo = 'Tarefa' .and. !Empty(TMP->DATAFIM)   
	   		MsgStop( _cTipo+' jaЁ finalizada, nao pode ser apagada.','Atencao')
	 	ElseIf ::cTela = 'Revisao' .and. _cTipo = 'EDT' .and. (!Empty(TMP->DATAINI) .or. !Empty(TMP->DATAFIM))   
	   		MsgStop( _cTipo+' jaЁ finalizada, nao pode ser apagada.','Atencao')
		Else
		 	If _cTipo = 'EDT' .and. MsgYesNo('Confirma executar exclusao da EDT e tarefas subsequentes?','Atencao')
		 		_lExec := .T.
		 	ElseIf _cTipo = 'Tarefa' .and. MsgYesNo('Confirma executar exclusao da Tarefa?','Atencao')
		 		_lExec := .T.
		 	End If
		 	If _lExec
				_nRecno := TMP->TABRECNO
				Begin Transaction
					::ExcFilho(_cCod)
					(_cTab)->(DbGoTo(_nRecno))
					(_cTab)->(RecLock(_cTab,.F.))
					(_cTab)->(DbDelete())
					(_cTab)->(MsUnlock())
				End Transaction
			End If
		End If
	EndIf
	TMP->(dbCloseArea())
	DbSelectArea('SX2')
	If _lExec
		::oCalculo:cProjeto := ::cPrjCod
		::oCalculo:cRevisao := ::cPrjRev
		::oCalculo:Calcula()
		::MontaArvore()
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : ExcFilho
@Author  : Cristian Silva
@Date    : 23/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Exclusлo de Filhos .
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method ExcFilho(_cCod) Class CRS707_MAIN
	Local _cQuery := ''
	Local _cEnter := chr(13)+chr(10)
    Local _nRecno := 0
    Local _cAlias := GetNextAlias()
    Local _cTab   := ''
	
	If ::cTela = 'Geracao' .or. ::cTela = 'Revisao'
		_cTab   := 'ZG3'		
		_cQuery	:= _cEnter + " SELECT R_E_C_N_O_ AS TABRECNO,ZG3_CODIGO AS CODIGO, ZG3_DTATUF AS DATAFIM "
		_cQuery	+= _cEnter + " FROM "+RetSqlName('ZG3')+" ZG3 " 
		_cQuery += _cEnter + " WHERE "
		_cQuery += _cEnter + " ZG3.ZG3_FILIAL = '"+xFilial('ZG3')+"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_PROJET = '"+::cPrjCod+"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_REVISA = '"+::cPrjRev+"' AND "
		_cQuery += _cEnter + " ZG3.ZG3_SUPER = '"+_cCod+"' AND "
		_cQuery += _cEnter + " ZG3.D_E_L_E_T_<> '*' "	
    End If	
	If ::cTela = 'Estrutura'
		_cTab   := 'ZG2'		
		_cQuery	:= _cEnter + " SELECT R_E_C_N_O_ AS TABRECNO,ZG2_CODIGO AS CODIGO "
		_cQuery	+= _cEnter + " FROM "+RetSqlName('ZG2')+" ZG2 " 
		_cQuery += _cEnter + " WHERE "
		_cQuery += _cEnter + " ZG2.ZG2_FILIAL = '"+xFilial('ZG2')+"' AND "
		_cQuery += _cEnter + " ZG2.ZG2_TIPO = '"+::cPrjTip+"' AND "
		_cQuery += _cEnter + " ZG2.ZG2_SUPER = '"+_cCod+"' AND "
		_cQuery += _cEnter + " ZG2.D_E_L_E_T_<> '*' "	
    End If	 
	DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),_cAlias,.F.,.T.)
	Begin Transaction 
	   	Do While !(_cAlias)->(eof())
	   		If ::cTela = 'Revisao' .and. !Empty((_cAlias)->DATAFIM)
	   			(_cAlias)->(DbSkip())		
	   		Else 
				_nRecno := (_cAlias)->TABRECNO
				::ExcFilho((_cAlias)->CODIGO)
				(_cTab)->(DbGoTo(_nRecno))
				(_cTab)->(RecLock(_cTab,.F.))
				(_cTab)->(DbDelete())
				(_cTab)->(MsUnlock())
				(_cAlias)->(DbSkip())
			End If
		End Do
	End Transaction
	(_cAlias)->(dbCloseArea())
	DbSelectArea('SX2')
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Reset
@Author  : Cristian Silva
@Date    : 23/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Reset de campos, para que iniciem vazios.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/  

Method Reset() Class CRS707_MAIN  
	::dPrjDti := ::WorkDay(Date()+1)
	::dPrjDtf := ::WorkDay(Date()+1)
	::cPrjCod := space(TamSx3('AF8_PROJET')[1])// Defines the length according to the field
	::cPrjCod := space(TamSx3('AF8_PROJET')[1])
	::cPrjDes := space(TamSx3('AF8_DESCRI')[1])
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : ResetInc
@Author  : Cristian Silva
@Date    : 30/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Reset de campos da inclusлo de EDT's e TSK's, para que iniciem vazios.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/  

Method ResetInc() Class CRS707_MAIN
	::nIncQtd := 0                              
	::cIncNiv := '001'
	::cIncNom := space(100)	                
   	::cIncCod := space(TamSx3('ZG2_CODIGO')[1])// Defines the length according to the field
	::cIncDes := space(TamSx3('ZG2_DESCRI')[1])
	::cIncUsu := space(TamSx3('ZG2_USER'  )[1])
	::cIncDia := space(TamSx3('ZG2_DIAS'  )[1])
	::cIncDpt := space(TamSx3('ZA1_DEPTO' )[1])
	::cIncNdp := space(TamSx3('ZA1_DESCRI')[1])
	::cIncHip := space(TamSx3('ZG3_HORAI' )[1])
	::cIncHfp := space(TamSx3('ZG3_HORAF' )[1])
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : WorkDay
@Author  : Cristian Silva
@Date    : 14/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Pega prлximo dia лtil.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/  

Method WorkDay(_dCurrentDay) Class CRS707_MAIN
	Do While !::DiaUtil(_dCurrentDay)
    	_dCurrentDay++
    	Loop
    End Do
Return _dCurrentDay

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Hora
@Author  : Cristian Silva
@Date    : 14/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Traz a hora final de acordo com o dia.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Hora(_dData,_cTipo,_cUser,_cDept) Class CRS707_MAIN
	Local _cRet        := '' 
	Local _aHourCalend := {}
	Local _cCalendar   := ''                                   
	Local _nDiaSemana  := DOW(_dData) // RETURNS THE DAY OF THE WEEK
	Default _cUser     := ''  
	Default _cDept     := ''
	
 	_cCalendar := ::TakeCalendar(_cUser,_cDept)
	
	If !Empty(_cCalendar)
		_aHourCalend := NGCALENDAH(_cCalendar)// RETURN THE WEEKLY WORKHOUR'S CALENDAR
	Else  
		MsgStop('Calendario base nao encontrado!','Atencao')
		Return 
	End If	
	 
	If _cTipo = 'HORAINI' 
		If _nDiaSemana = 7 .or. _nDiaSemana = 1
			_cRet := '07:00'
		Else
			_cRet := _aHourCalend[_nDiaSemana][2][1][1] //START TIME 
		End If		
	Else
		If _cTipo = 'HORAFIM'
			If _nDiaSemana = 7 .or. _nDiaSemana = 1
				_cRet := '16:46'
			Else	
				_cRet := _aHourCalend[_nDiaSemana][2][2][2]// FINISH TIME
			End If
		End If	 
	End If
	_cRet := _cRet+':00'	
Return _cRet	 	

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : TakeCalendar
@Author  : Cristian Silva
@Date    : 08/04/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava edt
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/	

Method TakeCalendar(_cUser,_cDept) Class CRS707_MAIN
    Local _cRet := ''
	If !Empty(_cUser)
		ZA2->(DbSetOrder(1))
		If ZA2->(DbSeek(xFilial('ZA2')+_cUser))
			_cRet := ZA2->ZA2_CALEND	
		End If
	Else
		If !Empty(_cDept)
			ZA1->(DbSetOrder(1))
			If ZA1->(DbSeek(xFilial('ZA1')+_cDept)) 
				_cRet := ZA1->ZA1_CALEND	
			End If
		End If 
	End If  
Return _cRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : GravaEdt
@Author  : Marcos Santana
@Date    : 21/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava edt
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/		

Method GravaEdt() Class CRS707_MAIN
	Local _x1,_x2     
	Local _cEdt 
	Local _cNivel
	Local _aEdt 
	Local _nMaximo := ::GetNivel()  //4
	ZG3->(dbSetOrder(1))
	For _x1 := _nMaximo to 1 STEP -1 
		_cNivel := strzero(_x1,3) 
		_aEdt := ::PegaEDT(_cNivel)			
		For _x2 := 1 to Len(_aEdt)   
			_cEdt   := _aEdt[_x2] //edt
			::PegaData(_cEdt,'INICIO')
			::PegaData(_cEdt,'FIM')	
	    	If ZG3->(dbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev+_cEdt))	 		
				ZG3->(RecLock('ZG3',.F.))
				ZG3->ZG3_START  := ::oCalculo:oEdt:dDataIni 
				ZG3->ZG3_HORAI  := ::oCalculo:oEdt:cHoraIni
				ZG3->ZG3_FINISH := ::oCalculo:oEdt:dDataFim
				ZG3->ZG3_HORAF  := ::oCalculo:oEdt:cHoraFim      
				ZG3->(MsUnLocK())
			End If
		Next _x2		
	Next _x1
Return     

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : PegaEdt
@Author  : Marcos Santana
@Date    : 21/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Pega Edt.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method PegaEdt(_cNivel) Class CRS707_MAIN
	Local _aRet := {}
	Local _cQuery                                      
	Local _cAlias := GetNextAlias()
	Local _cEnter := chr(13)+chr(10)
	_cQuery	:= _cEnter + " SELECT ZG3_SUPER "
	_cQuery	+= _cEnter + " FROM "+RetSqlName('ZG3')+" ZG3 " 
	_cQuery += _cEnter + " WHERE "
	_cQuery += _cEnter + " ZG3.ZG3_FILIAL  = '"+xFilial('ZG3')+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_PROJET  = '"+::cPrjCod+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_REVISA  = '"+::cPrjRev+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_NIVEL   = '"+_cNivel+"'   AND " 
	_cQuery += _cEnter + " ZG3.D_E_L_E_T_<> '*' "		
	_cQuery += _cEnter + " GROUP BY ZG3_SUPER "
	DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),_cAlias,.F.,.T.)	
	Do While !(_cAlias)->(eof())
		Aadd(_aRet,(_cAlias)->ZG3_SUPER)
		(_cAlias)->(dbSkip())
	End Do          
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2')
Return _aRet 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : PegaData
@Author  : Marcos Santana
@Date    : 21/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Pega data.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   

Method PegaData(_cEdt,_cTipo) Class CRS707_MAIN
	Local _cQuery  
	Local _cAlias := GetNextAlias()
	Local _cEnter := chr(13)+chr(10)
	If _cTipo = 'INICIO' 
		_cQuery := " SELECT TOP 1 ZG3_START QDATA ,ZG3_HORAI QHORA "
	Else
		_cQuery := " SELECT TOP 1 ZG3_FINISH QDATA,ZG3_HORAF QHORA "		
	End If 
	_cQuery += _cEnter + " FROM "+RetSqlName('ZG3')+" ZG3 "
	_cQuery += _cEnter + " WHERE "
	_cQuery += _cEnter + " ZG3.ZG3_FILIAL  = '"+xFilial('ZG3')+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_PROJET  = '"+::cPrjCod+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_REVISA  = '"+::cPrjRev+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_SUPER   = '"+_cEdt+"' AND "	
	if _cTipo = 'INICIO' 
		_cQuery += _cEnter + " ZG3.ZG3_START <> '' AND "
	Else
		_cQuery += _cEnter + " ZG3.ZG3_FINISH <> '' AND "
	End If 	
	_cQuery += _cEnter + " ZG3.D_E_L_E_T_ <> '*' "
	_cQuery += _cEnter + " ORDER BY ZG3_CODIGO "+Iif(_cTipo = 'FIM','DESC','')                        
	dbUseArea(.T.,"TOPCONN",TCGENQRY(,,_cQuery),_cAlias,.F.,.T.)	
	If !(_cAlias)->(eof())
		if _cTipo = 'INICIO' 
			::oCalculo:oEdt:dDataIni := stod((_cAlias)->QDATA)
			::oCalculo:oEdt:cHoraIni := (_cAlias)->QHORA
		Else
			::oCalculo:oEdt:dDataFim := stod((_cAlias)->QDATA)
			::oCalculo:oEdt:cHoraFim := (_cAlias)->QHORA
		End If 
	End If   
  	(_cAlias)->(dbCloseArea())
  	dbSelectArea('SX2')	
Return                     
                          
/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : GetNivel
@Author  : Marcos Santana
@Date    : 14/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Retorna o maior nivel
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/	
		
Method GetNivel() Class CRS707_MAIN
	Local _nRet      := 0
	Local _cAlias    := GetNextAlias()
	BeginSql Alias _cAlias
		SELECT MAX(ZG3.ZG3_NIVEL) AS NIVEL
		FROM %Table:ZG3% ZG3 
		WHERE 
		ZG3.ZG3_FILIAL = %xFilial:ZG3%  AND 
		ZG3.ZG3_PROJET = %Exp:Self:cPrjCod% AND 
		ZG3.ZG3_REVISA = %Exp:Self:cPrjRev% AND 		
		ZG3.%notdel%
  	EndSql           
  	If !(_cAlias)->(eof()) .and. !Empty((_cAlias)->NIVEL)
  		_nRet := val((_cAlias)->NIVEL)
  	End If
  	(_cAlias)->(dbCloseArea())
  	dbSelectArea('SX2')
Return _nRet   			                                                                    

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : PegaPai
@Author  : Marcos Santana
@Date    : 14/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Pega hora e data final do pai.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/	

Method PegaPai(_cCodigo) Class CRS707_MAIN
	Local _lRet := .F.
	Local _cQuery                                      
	Local _cAlias := GetNextAlias()
	Local _cEnter := chr(13)+chr(10)
	_cQuery	:= _cEnter + " SELECT ZG3_FINISH,ZG3_HORAF,ZG3_USER,ZG3_DPTO "
	_cQuery	+= _cEnter + " FROM "+RetSqlName('ZG3')+" ZG3 " 
	_cQuery += _cEnter + " WHERE "
	_cQuery += _cEnter + " ZG3.ZG3_FILIAL  = '"+xFilial('ZG3')+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_PROJET  = '"+::cPrjCod+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_REVISA  = '"+::cPrjRev+"' AND "
	_cQuery += _cEnter + " ZG3.ZG3_CODIGO  = '"+_cCodigo+"'  AND " 
	_cQuery += _cEnter + " ZG3.D_E_L_E_T_<> '*' "		
	_cQuery += _cEnter + " ORDER BY ZG3_CODIGO DESC " 
	DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),_cAlias,.F.,.T.)
	If !(_cAlias)->(eof())
		_lRet := .T.
		::dIncDip := stod((_cAlias)->ZG3_FINISH)
		::cIncHip := (_cAlias)->ZG3_HORAF
		If ::cIncHip <> ::Hora(::dIncDip,'HORAINI',(_cAlias)->ZG3_USER,(_cAlias)->ZG3_DPTO)  		
			::Mais1((_cAlias)->ZG3_USER,(_cAlias)->ZG3_DPTO)
		End IF
		::dIncDfp := ::dIncDip
		::cIncHfp := ::cIncHip
	End If             
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2')
Return _lRet 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : Review
@Author  : Cristian Silva
@Date    : 12/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Executa revisлo do projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method Review() Class CRS707_MAIN
	Local _nTamDes := 0  
	Local _nFimCol := 0
	Local _nFimLin := 0
	Local _lRet    := .F.                           
	  
    cCadastro := "Revisao de Projeto"    																			
	DEFINE MSDIALOG ::oPainel4 TITLE cCadastro  From 0,0 To 500,800  Pixel 	
		_nFimLin := (::oPainel4:nClientHeight / 2) 																	
		_nFimCol := (::oPainel4:nClientWidth  / 2) 																	
		_nTamDes := _nFimCol - (45+35+53+53+14)     																	
	    _nTamMot := _nFimCol - (16+104)
		::oPainel4:bInit := EnchoiceBar(::oPainel4,{|| _lRet:=::GeraRev()},{|| ::MataRev() },.f.,,,,.F.,.F.,.F.,.T.,.F.)		
	 	@ 078+0,008	Say "Estrutura"  		Of ::oPainel4 Pixel FONT ::oFonte2                                            
 		::oPainel5 := TPanel():New(088+0,008,"",::oPainel4 ,,,,,,_nFimCol-16,_nFimLin-(45+43+20)) 	                	
 		::oTree    := DbTree():New(000,000,(::oPainel5:nClientHeight/2),(::oPainel5:nClientWidth/2),::oPainel5,,,.T.)	
 		::oTree:Disable()  
 		::Posicao(30,8,.T.,.T.)
		@ ::nLin+0,::nCol Say "Projeto"			   				Of  ::oPainel4 Pixel			
		@ ::nLin+8,::nCol MsGet ::oRevCod 						Var ::cRevCod Picture "@!" WHEN .F.		Size 040,009  	  Of ::oPainel4 Pixel HASBUTTON 
		::Posicao(000,045)
		@ ::nLin+0,::nCol Say "Revisao"			   				Of  ::oPainel4 Pixel			
		@ ::nLin+8,::nCol MsGet ::oRevRev 						Var ::cRevNew Picture "@!" WHEN .F.		Size 030,009  	  Of ::oPainel4 Pixel HASBUTTON 
		::Posicao(000,035)	
		@ ::nLin+0,::nCol Say "Descricao do Projeto" 			Of  ::oPainel4 Pixel			
		@ ::nLin+8,::nCol MsGet ::oRevDes			   			Var ::cRevDes Picture "@!" WHEN .F.		Size _nTamDes,009 Of ::oPainel4 Pixel HASBUTTON
 		::Posicao(000,_nTamDes+5)
		@ ::nLin+0,::nCol Say "Data Inicio"    					Of  ::oPainel4 Pixel			
  		@ ::nLin+8,::nCol MsGet ::oRevDti      		   	     	Var ::dRevDti WHEN .F.		 			Size 048,009 	  Of ::oPainel4 Pixel HASBUTTON	
   		::Posicao(000,053)
		@ ::nLin+0,::nCol Say "Data Fim"       		   			Of  ::oPainel4 Pixel 			
   		@ ::nLin+8,::nCol MsGet ::oRevDtf      		   	     	Var ::dRevDtf WHEN .F.		 			Size 048,009 	  Of ::oPainel4 Pixel HASBUTTON	
		::Posicao(024,008,,.T.)
		@ ::nLin+0,::nCol Say "Motivo da Revisao" 	   			Of  ::oPainel4 Pixel 			
   		@ ::nLin+8,::nCol MsGet ::oRevMot      		   	     	Var ::cRevMot Picture "@!"		 		Size _nTamMot,009 Of ::oPainel4 Pixel HASBUTTON	
	   	::CriaMenu()
		::UploadPrj()
		::UpdStsAf8('2')
 	    ::oTree:bChange    := {|| ::MudaMenu()		        	 }
		::oTree:bRClicked  := {|_o,_a,_b| ::oMenu:Activate(_a,_b)}
		::oTree:bLDblClick := {|| ::DblClick()                   }				                         				
 	ACTIVATE MSDIALOG ::oPainel4 CENTERED	
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : UploadPrj
@Author  : Cristian Silva
@Date    : 13/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Carrega dados do projeto direto da AF8.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method UploadPrj() Class CRS707_MAIN
	::cOldCod := AF8->AF8_PROJET
	::cOldDes := AF8->AF8_DESCRI
	::cOldRev := AF8->AF8_REVISA
	::dOldDti := AF8->AF8_START
	::dOldDtf := AF8->AF8_FINISH
	::cRevCod := ::cOldCod
	::cRevDes := ::cOldDes
	::cRevNew := Soma1(::cOldRev)
	::dRevDti := ::dOldDti
	::dRevDtf := ::dOldDtf 
	::cRevMot := space(150)
	::cPrjCod := ::cRevCod
	::cPrjRev := ::cRevNew
	::oRevCod:Refresh()
	::oRevDes:Refresh()
	::oRevRev:Refresh()
	::oRevDti:Refresh()
	::oRevDtf:Refresh()
	::oRevMot:Refresh()
	::UpdZG3()
	::MontaArvore()
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : UpdStsAf8
@Author  : Cristian Silva
@Date    : 13/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Muda Status da AF8.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method UpdStsAf8(_cStatus) Class CRS707_MAIN
	AF8->(DbSetOrder(8))
	If AF8->(DbSeek(xFilial('AF8')+::cOldCod+::cOldRev))
		AF8->(RecLock('AF8',.F.))
		AF8->AF8_STATUS := _cStatus
		AF8->(MsUnLock())
	Else 
		Return .F.
	End If 	 
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : TakeUsrDptTp
@Author  : Cristian Silva
@Date    : 26/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method TakeUsrDptTp(_cSuper) Class CRS707_MAIN
	ZG3->(DbSetOrder(1))
	If ZG3->(DbSeek(xFilial('ZG3')+::cOldCod+::cOldRev+_cSuper))
		::cUserZG3 := ZG3->ZG3_USER
		::cDptoZG3 := ZG3->ZG3_DPTO
		::cTipoZG3 := ZG3->ZG3_TIPO
	End If
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : UpdZG3
@Author  : Cristian Silva
@Date    : 18/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava na ZG3 os dados trazidos do projeto correspondente.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method UpdZG3() CLASS CRS707_MAIN 
    Local _cQuery := ''
    Local _cEnter := chr(13)+chr(10)
    Local _cAlias := GetNextAlias()
    Local _cSuper := ''
    
    _cQuery	:= _cEnter + " SELECT * FROM ( " 
    _cQuery	+= _cEnter + " SELECT AFC_EDT AS CODIGO,AFC_DESCRI AS DESCRI,AFC_EDTPAI AS SUPER, AFC_NIVEL AS NIVEL, AFC_START AS DINICIO, AFC_HORAI AS HINICIO, AFC_FINISH AS DFIM, AFC_HORAF AS HFIM, AFC_DTATUI AS DATAINI, AFC_HRATUI AS HORAINI, AFC_DTATUF AS DATAFIM, AFC_HRATUF AS HORAFIM, '1' AS TPEST, '' AS REF, '' AS QUANT, '' AS DIAS, AFC.R_E_C_N_O_ AS REGISTRO "
    _cQuery	+= _cEnter + " FROM "+RetSqlName('AFC')+" AFC " 
    _cQuery	+= _cEnter + " WHERE "
    _cQuery	+= _cEnter + " AFC.AFC_FILIAL = '"+xFilial('AFC')+"' AND "
    _cQuery	+= _cEnter + " AFC.AFC_PROJET = '"+::cOldCod+"' AND "
    _cQuery	+= _cEnter + " AFC.AFC_REVISA = '"+::cOldRev+"' AND "
    _cQuery	+= _cEnter + " AFC.AFC_EDT   <> '"+::cOldCod+"' AND " 
    _cQuery	+= _cEnter + " AFC.D_E_L_E_T_<>'*' " 
    _cQuery	+= _cEnter + " UNION ALL "
    _cQuery	+= _cEnter + " SELECT AF9_TAREFA AS CODIGO,AF9_DESCRI AS DESCRI, AF9_EDTPAI AS SUPER, AF9_NIVEL AS NIVEL, AF9_START AS DINICIO, AF9_HORAI AS HINICIO, AF9_FINISH AS DFIM, AF9_HORAF AS HFIM, AF9_DTATUI AS DATAINI, AF9_HRATUI AS HORAINI, AF9_DTATUF AS DATAFIM, AF9_HRATUF AS HORAFIM, '2' AS TPEST, AF9_XREF AS REF, AF9_XQUANT AS QUANT, AF9_XDIAS AS DIAS, AF9.R_E_C_N_O_ AS REGISTRO "
    _cQuery	+= _cEnter + " FROM "+RetSqlName('AF9')+" AF9 " 
    _cQuery	+= _cEnter + " WHERE "
    _cQuery	+= _cEnter + " AF9.AF9_FILIAL = '"+xFilial('AF9')+"' AND "
    _cQuery	+= _cEnter + " AF9.AF9_PROJET = '"+::cOldCod+"' AND "        
    _cQuery	+= _cEnter + " AF9.AF9_REVISA = '"+::cOldRev+"' AND "
    _cQuery	+= _cEnter + " AF9.AF9_TAREFA <>'"+::cOldCod+"' AND " 
    _cQuery	+= _cEnter + " AF9.D_E_L_E_T_ <>'*' " 
    _cQuery	+= _cEnter + " ) AS TAB "
    _cQuery	+= _cEnter + " ORDER BY CODIGO, SUPER, NIVEL, TPEST " 
	DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),_cAlias,.F.,.T.) 
	Begin Transaction 
		Do while !(_cAlias)->(eof())
			If (_cAlias)->SUPER = ::cOldCod
		    	_cSuper := ''
		 	Else
		 		_cSuper := (_cAlias)->SUPER
			End If 
	    	::TakeUsrDptTp((_cAlias)->CODIGO) 
			ZG3->(DbSetOrder(2))
			ZG3->(RecLock('ZG3',.T.))
			ZG3->ZG3_FILIAL := xFilial('ZG3') 
			ZG3->ZG3_PROJET := ::cRevCod
			ZG3->ZG3_TIPO   := ::cTipoZG3
			ZG3->ZG3_DESCRI := (_cAlias)->DESCRI
			ZG3->ZG3_REVISA := ::cRevNew
			ZG3->ZG3_TPEST  := (_cAlias)->TPEST
			ZG3->ZG3_CODIGO := (_cAlias)->CODIGO
			ZG3->ZG3_SUPER  := _cSuper
			ZG3->ZG3_USER   := ::cUserZG3 
			ZG3->ZG3_DPTO   := ::cDptoZG3
			ZG3->ZG3_REF    := (_cAlias)->REF
			ZG3->ZG3_QUANTI := (_cAlias)->QUANT
			ZG3->ZG3_DIAS   := (_cAlias)->DIAS
			ZG3->ZG3_NIVEL  := (_cAlias)->NIVEL
			ZG3->ZG3_START  := STOD((_cAlias)->DINICIO)
			ZG3->ZG3_FINISH := STOD((_cAlias)->DFIM)
			ZG3->ZG3_HORAI  := (_cAlias)->HINICIO+':00' 
			ZG3->ZG3_HORAF  := (_cAlias)->HFIM+':59' 
			ZG3->ZG3_DTATUI := STOD((_cAlias)->DATAINI)
			ZG3->ZG3_DTATUF := STOD((_cAlias)->DATAFIM)
			ZG3->ZG3_HRATUI := (_cAlias)->HORAINI
			ZG3->ZG3_HRATUF := (_cAlias)->HORAFIM
			ZG3->(MsUnlock())
			(_cAlias)->(DbSkip())
		End Do
	End Transaction
	(_cAlias)->(DbCloseArea())
	DbSelectArea('SX2')
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : MataRev
@Author  : Cristian Silva
@Date    : 25/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Mata revisлo ao cancelar.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method MataRev() Class CRS707_MAIN 
	Local _lRet := .T.
	ZG3->(DbSetOrder(2))
	If ZG3->(DbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev))
		If ::MataZG3(::cPrjRev)
			::UpdStsAf8('1')
			::oPainel4:End()
		End If
	End If	
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : CheckStatus
@Author  : Cristian Silva
@Date    : 27/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Set do status do projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/         

Method CheckStatus(_cCod,_nTskEdt) Class CRS707_MAIN
	If !::cTela = 'Revisao'
		::cSheet    :='papel_escrito'
		::cClFolder :='folder5'
		::cOpFolder	:='folder6'
		Return
	End If
	ZG3->(DbSetOrder(1))
	If ZG3->(DbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev+_cCod))
	    If _nTskEdt = 'TSK' // TASK
			::DefStatusTsk()
		Else
			If ::CheckEdt(_cCod)
				::cClFolder := 'folder10'
				::cOpFolder := 'folder11'
			Else 
				::cClFolder := 'folder5'
				::cOpFolder := 'folder6'
			End IF
		End If
	End If		
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : DefStatusTsk()
@Author  : Cristian Silva
@Date    : 15/05/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Set do status da Task
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 
              
Method DefStatusTsk() Class CRS707_MAIN
	If !Empty(ZG3->ZG3_DTATUF)          // CHECKING IF TASK IS EXECUTED 
		::cSheet := 'sdusetdel_ocean'   // WHEN TASK IS IN TIME SETS BLANK PAPER WITH A GREEN CHECK ON IT AS IMAGE
	Else
		If (::dDate > ZG3->ZG3_FINISH) .or. (::dDate = ZG3->ZG3_START .and. ::dDate = ZG3->ZG3_FINISH .and. ::cHora >= ZG3->ZG3_HORAF) // CHECKING IF TASK'S START IS LATE	   						// CHECKING IF TASK IS LATE  
			::cSheet := 'ng_ico_fmrpc'  // WHEN TASK IS LATE SETS RED PAPER AS IMAGE         
		ElseIf (::dDate > ZG3->ZG3_START .and. ::dDate < ZG3->ZG3_FINISH ) .or. (::dDate = ZG3->ZG3_START .and. ::cHora >= ZG3->ZG3_HORAI)	// CHECKING IF TASK'S START IS LATE
			::cSheet := 'ng_ico_fmrap'	// WHEN TASK'S START IS LATE SETS YELLOW PAPER AS IMAGE 
		Else
			::cSheet := 'papel_escrito'	// WHEN TASK IS NOT LATE SETS BLANK PAPER AS IMAGE
		End If
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : CheckEdt
@Author  : Cristian Silva 
@Date    : 27/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava valores iniciais das EDT's baseado nos valores das TASK's.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method CheckEdt(_cSuper) Class CRS707_MAIN
	Local _lRet   := .T.
	Local _cAlias := GetNextAlias() 	
	
	BeginSql Alias _cAlias
		SELECT ZG3_CODIGO AS CODIGO,ZG3_REVISA AS REVISAO,ZG3_TPEST AS TIPOEST,ZG3_DTATUF AS DATAFIM
		FROM %Table:ZG3% ZG3 
		WHERE 
		ZG3.ZG3_FILIAL  = %xFilial:ZG3% AND		
		ZG3.ZG3_SUPER   = %exp:_cSuper% AND 
		ZG3.ZG3_PROJET  = %exp:Self:cPrjCod% AND 
		ZG3.ZG3_REVISA  = %exp:Self:cPrjRev% AND 
		ZG3.%notdel% 
	EndSql
	If !(_cAlias)->(eof())
		Do While !(_cAlias)->(eof())
			If Empty((_cAlias)->DATAFIM) 
				_lRet := .F.
				Exit
			End If
			If (_cAlias)->TIPOEST = '1'
				If !::CheckEdt((_cAlias)->CODIGO)
					_lRet := .F.
				End If	
			End if
			(_cAlias)->(dbSkip())
		End Do 
	Else 
		_lRet := .F.
	End If
	(_cAlias)->(DbCloseArea())
	DbSelectArea('SX2')
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : GeraRev
@Author  : Cristian Silva
@Date    : 27/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Gera as tabelas dos projetos na revisлo.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method GeraRev() Class CRS707_MAIN // IT IS CALLED WHEN A USER CLICKS ON THE 'GERAR' BUTTON	                                        							 // STORES THE RETURN VALUE FROM MakeZG1(). WHETHER COMPLETE = .T.; !COMPLETE = .F. 
	Local _lRet := .F.
    _lRet := ::VldGeraRev()
    If _lRet                          
    	::oGerar:cProjeto := ::cRevCod  // CONVEYING THE VALUE INTO TABLES AT HYD702 (AF8,AFC,AF9,AFX)
    	::oGerar:cPrjRev  := ::cRevNew
    	::oGerar:dPrjDti  := ::dRevDti                              
    	::oGerar:dPrjDtf  := ::dRevDtf                                 
      	::oGerar:cPrjDes  := ::cRevDes                                 
		::oGerar:cRevMot  := ::cRevMot								   
		::oGerar:cOldRev  := ::cOldRev
      	::oGerar:Executar()
      	::oPainel4:End()
    End If
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS707.PRW
@Type    : MTH - Methodo
@Name    : VldGeraRev
@Author  : Cristian Silva
@Date    : 01/04/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Gera as tabelas dos projetos na revisлo.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method VldGeraRev() Class CRS707_MAIN 
	If Empty(::cRevMot)                                 	
		MsgStop("Informe o Motivo da Revisao!","Atencao!")
		::ORevMot:SetFocus() 								
		Return .F.
	End If	
Return .T.   

//ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл				
