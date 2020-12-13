/*/
лSource Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title     : CRS708.PRW
@Owner     : CRS
@CopyRight : CRS 
@Author    : Cristian Silva
@Version   : P12 - Protheus 12
@Date      : 31/10/2019
@Engine    : AdvPl
@Module    : PMS
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Tela amigavel para exibir e executar projeto.
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

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : USR - User Function 
@Name    : CRS708A
@Author  : Cristian Silva 
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
User function principal para chamada da classe 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                  
User Function CRS708A() 
	Local _oTela
	_oTela := CRS708_MAIN():New() 
	_oTela:Executar()	
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : CLS - Classe
@Name    : CRS708_MAIN
@Author  : Cristian Silva 
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Criacao da classe
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                
Class CRS708_MAIN FROM LongClassName	
	Method New() 
	Method Ramo()
	Method Save()
	Method Reset()
	Method UpdEdt()
	Method VldSave()
	Method Posicao()
	Method CheckEdt()
	Method CheckFim()
	Method VldField()
	Method Executar()
	Method MudaMenu()
	Method TakeUser()
	Method GravaAFC()
	Method DblClick()
	Method UpdEdtIni()
	Method UpdEdtFim()
	Method UploadPrj()
	Method TemFilhos()
	Method RodaArvore()
	Method EndTaskEdt()
	Method UploadTask()
	Method CheckStatus()
	Method MontaArvore()
	Method BaixaArvore()
	Method GravaAf9Afc()
	Method DefStatusTsk()
	Method MenuEstrutura()
	Data nLin
	Data nCol
	Data dDate
	Data cHora
	Data oTree
	Data oMenu
	Data cSheet 
	Data lTodas 
	Data oField
	Data oGerar	
	Data oFonte2		      
	Data oPainel
	Data cPrjCod
	Data oPrjCod
	Data cPrjDes
	Data oPrjDes
	Data cPrjRev
	Data oPrjRev
	Data oPrjDti
	Data dPrjDti
	Data oPrjDtf
	Data dPrjDtf
	Data oFimCod
	Data cFimCod
	Data oFimDes
	Data cFimDes
	Data oFimDip
	Data dFimDip
	Data oFimDfp
	Data dFimDfp
	Data oFimHor                    
	Data cFimHor
	Data oFimUsu
	Data cFimUsu
	Data oFimNus
	Data cFimNus
	Data oFimDpt
	Data cFimDpt
	Data oFimNdp
	Data cFimNdp
	Data oFimRef
   	Data cFimRef 
   	Data oFimQtd
   	Data nFimQtd  
   	Data oFimDia 
   	Data cFimDia
   	Data aFimRef
   	Data aFimDia
	Data oFimHip
	Data cFimHip
	Data oFimHfp
	Data cFimHfp
	Data oFimDir
	Data dFimDir
	Data oFimDfr
	Data dFimDfr
	Data oFimHir
	Data cFimHir
	Data oFimHfr
	Data cFimHfr
	Data cFimObs
	Data oFimObs
	Data cFimSts
	Data aFields
	Data lRepeat
	Data lControl
	Data oPainel2
	Data cClFolder
	Data cOpFolder
	Data oDlgFinaliza   
EndClass              

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
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
Method New() CLASS CRS708_MAIN                   
	::oFonte2 := TFont():New('Arial',,18,.T.,.T.)
	::Reset()
	::cHora   := SubStr(TIME(),1,5)
	::dDate   := Date()							  
	::dPrjDti := Date()+1
	::dPrjDtf := Date()+1
	::cFimHir := space(5)
	::cFimHfr := space(5)
	::cFimObs := ''
	::cFimSts := '1'
   	::cFimRef := ''
   	::nFimQtd := ''
   	::cFimDia := ''
   	::lRepeat := .F.
   	::lControl:= .T.
   	::aFimRef := {'D. Dias','H. horas'}
   	::aFimDia := {'1. Dias uteis','2. Dias Corridos','3. '}
	::oGerar  := CRS707_MAIN():Gerar()
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Method
@Name    : Posicao
@Author  : Cristian Silva
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Retorna posicoes.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 
Method Posicao(_nLin,_nCol,_lResLin,_lResCol) CLASS CRS708_MAIN                                             
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
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : Executar
@Author  : Cristian Silva 
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Exibe tela para mostrar anexos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/            
Method Executar() Class CRS708_MAIN	 
	Local _nTamDes := 0  
	Local _nFimCol := 0
	Local _nFimLin := 0                            
	  
    cCadastro := "Execucao de Projeto"    // DEFINES DIALOG'S TITLE ACCORDING TO SCRREN'S TYPE
	DEFINE MSDIALOG ::oPainel TITLE cCadastro  From 0,0 To 500,800  Pixel 	
		_nFimLin := (::oPainel:nClientHeight / 2) 																		
		_nFimCol := (::oPainel:nClientWidth  / 2) 																		
		_nTamDes := _nFimCol - (45+35+53+53+14)     																		
	    
		::oPainel:bInit := EnchoiceBar(::oPainel,{|| ::oPainel:End()},{|| ::oPainel:End() },.f.,,,,.F.,.F.,.F.,.T.,.F.)			
	 	@ 058+0,008	Say "Estrutura"  		Of ::oPainel Pixel FONT ::oFonte2
 		::oPainel2 := TPanel():New(068+0,008,"",::oPainel ,,,,,,_nFimCol-16,_nFimLin-(45+43+0)) 	
 		::oTree    := DbTree():New(000,000,(::oPainel2:nClientHeight/2),(::oPainel2:nClientWidth/2),::oPainel2,,,.T.)	
 		::oTree:Disable()  
 		::Posicao(30,8,.T.,.T.)
		@ ::nLin+0,::nCol Say "Projeto"			   				Of  ::oPainel Pixel			
		@ ::nLin+8,::nCol MsGet ::oPrjCod 						Var ::cPrjCod Picture "@!" WHEN .F.		Size 040,009  	  Of ::oPainel Pixel HASBUTTON 
		::Posicao(000,045)
		@ ::nLin+0,::nCol Say "Revisao"			   				Of  ::oPainel Pixel			
		@ ::nLin+8,::nCol MsGet ::oPrjRev 						Var ::cPrjRev Picture "@!" WHEN .F.		Size 030,009  	  Of ::oPainel Pixel HASBUTTON 
		::Posicao(000,035)	
		@ ::nLin+0,::nCol Say "Descricao do Projeto" 			Of  ::oPainel Pixel			
		@ ::nLin+8,::nCol MsGet ::oPrjDes			   			Var ::cPrjDes Picture "@!" WHEN .F.		Size _nTamDes,009 Of ::oPainel Pixel HASBUTTON
 		::Posicao(000,_nTamDes+5)
		@ ::nLin+0,::nCol Say "Data Inicio"    					Of  ::oPainel Pixel			
  		@ ::nLin+8,::nCol MsGet ::oPrjDti      		   	     	Var ::dPrjDti WHEN .F.		 			Size 048,009 	  Of ::oPainel Pixel HASBUTTON	
   		::Posicao(000,053)
		@ ::nLin+0,::nCol Say "Data Fim"       		   			Of  ::oPainel Pixel 			
   		@ ::nLin+8,::nCol MsGet ::oPrjDtf      		   	     	Var ::dPrjDtf WHEN .F.		 			Size 048,009 	  Of ::oPainel Pixel HASBUTTON	
   		::MenuEstrutura()
 	    ::UploadPrj()
 	    ::oTree:bChange    := {|| ::MudaMenu()		        	 }
		::oTree:bRClicked  := {|_o,_a,_b| ::oMenu:Activate(_a,_b)}
		::oTree:bLDblClick := {|| ::DblClick()                   }				                         				
 	ACTIVATE MSDIALOG ::oPainel CENTERED	
Return


/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
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

Method DblClick() Class CRS708_MAIN 
	Local _cCargo := ::oTree:GetCargo()
	Local _cTipo  := Left(_cCargo,3)
	If _cTipo = 'EST' .or. _cTipo = 'EDT'
		Return .F.
	Else 
		::EndTaskEdt(.T.) 
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : MenuEstrutura
@Author  : Cristian Silva
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Cria menu somente quando estiver em tela de estrutura.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 
Method MenuEstrutura() Class CRS708_MAIN 
	::oMenu:=TMenu():New(0,0,0,0,.T.)
	::oMenu:Add(TMenuItem():New(::oPainel,Padr("Finalizar tarefa "           ,40),,,,{|| ::EndTaskEdt(.F.)},,'pedido'   ,,,,,,,.T.))
	::oMenu:Add(TMenuItem():New(::oPainel,Padr("Finalizar tarefas pendentes ",40),,,,{|| ::EndTaskEdt(.F.)},,'pcoimg16' ,,,,,,,.T.))
	::oMenu:Add(TMenuItem():New(::oPainel,Padr("Visualizar "                 ,40),,,,{|| ::EndTaskEdt(.T.)},,'bmpvisual',,,,,,,.T.))
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : Upload
@Author  : Cristian Silva
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Carrega projeto a ser executado.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method UploadPrj() Class CRS708_MAIN
	::cPrjCod := AF8->AF8_PROJET
	::cPrjDes := AF8->AF8_DESCRI
	::cPrjRev := AF8->AF8_REVISA
	::dPrjDti := AF8->AF8_START
	::dPrjDtf := AF8->AF8_FINISH
	::oPrjCod:Refresh()
	::oPrjDes:Refresh()
	::oPrjRev:Refresh()
	::oPrjDti:Refresh()
	::oPrjDtf:Refresh()
	::MontaArvore()
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : MontaArvore
@Author  : Cristian Silva
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Monta a estrutura da arvore.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method MontaArvore() Class CRS708_MAIN
	Local _cCargo  := 'EST'+space(TamSx3('ZG2_CODIGO')[1])									// SETS THE TREE'S FIRST LEVEL 
	::oTree:Enable()																		// ENABLE TREE
	::oTree:lVisible:=.F. 																	// DISABLES THE VISUALIZATIION FOR UPDATING
	::oTree:BeginUpdate()																	// STARTS A TREE UPDATE 
	::oTree:Reset()    																		// CLEAR THE PREVIOUS TREE STRUCTURE
	::oTree:AddTree(PADR('Estrutura',400),.T.,'ng_ico_doc2','ng_ico_doc1',,,_cCargo)        // MAKES FIRST LEVEL
   	::RodaArvore(_cCargo,AF8->AF8_PROJET) //estava o projeto af8_projet como superior		// CALLS THE TREE STRUCTURE WITH EMPTY LEVEL.	
	::oTree:EndTree()																		// CLOSES THE TREE 
	::oTree:EndUpdate()																		// FINISHES THE TREE UPDATE
	::oTree:lVisible:=.T.                                                                   // ENABLES THE TREE VISUALIZATION AFTER UPDATE
	::oTree:Refresh()																		// REFRESH THE TREE.
	::oTree:TreeSeek(_cCargo)   															// SELECT THE FIRST ITEM.
    ::MudaMenu()                                                                      
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : RodaArvore
@Author  : Cristian Silva
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Busca nivel dos itens na estrutura da arvore.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/
Method RodaArvore(_cCargo,_cSuperior) CLASS CRS708_MAIN
	Local _cPrompt
	Local _cNewCargo
	Local _cAlias := GetNextAlias() 	   		  	   												
	BeginSql Alias _cAlias
		SELECT * FROM (
		SELECT AFC_EDT AS CODIGO,AFC_DESCRI AS DESCRICAO,AFC_NIVEL AS NIVEL,'EDT' AS TIPO,AFC.R_E_C_N_O_ AS REGISTRO
		FROM %table:AFC% AS AFC WHERE AFC.AFC_FILIAL = %exp:AF8->AF8_FILIAL% AND AFC.AFC_PROJET = %exp:AF8->AF8_PROJET% AND AFC.AFC_REVISA = %exp:AF8->AF8_REVISA% AND AFC_EDTPAI = %exp:_cSuperior% AND AFC.%notdel%
		UNION ALL 
		SELECT AF9_TAREFA AS CODIGO,AF9_DESCRI AS DESCRICAO,AF9_NIVEL AS NIVEL,'TSK' AS TIPO,AF9.R_E_C_N_O_ AS REGISTRO
		FROM %table:AF9% AS AF9 WHERE AF9.AF9_FILIAL = %exp:AF8->AF8_FILIAL% AND AF9.AF9_PROJET = %exp:AF8->AF8_PROJET% AND AF9.AF9_REVISA = %exp:AF8->AF8_REVISA% AND AF9_EDTPAI = %Exp:_cSuperior% AND AF9.%notdel%
		) AS TAB
		ORDER BY CODIGO,NIVEL	
	EndSql
	Do While !(_cAlias)->(eof())		
		::oTree:TreeSeek(_cCargo) 															                          		
		_cPrompt    := PADR(ALLTRIM((_cAlias)->CODIGO) +' - '+ (_cAlias)->DESCRICAO,400)
		IF (_cAlias)->TIPO = 'TSK' 				   											
			_cNewCargo  := 'TSK'+(_cAlias)->CODIGO
			::CheckStatus((_cAlias)->CODIGO,1) 		
			::oTree:AddItem(_cPrompt, _cNewCargo,::cSheet,,,, 2)	 			        	
		Else   																				
			_cNewCargo  := 'EDT'+(_cAlias)->CODIGO
			::CheckStatus((_cAlias)->CODIGO,2)
			If ::TemFilhos(_cNewCargo)
				::oTree:AddTree(_cPrompt,.T.,::cClFolder,::cOpFolder,,,_cNewCargo) 	       
				::RodaArvore(_cNewCargo,(_cAlias)->CODIGO) 								   
				::oTree:EndTree()														   
	   		Else
				::oTree:AddItem(_cPrompt, _cNewCargo,::cClFolder,,,, 2)	 				   
		    End If
		End If 
		(_cAlias)->(dbskip())
	End Do  
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2')	
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
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
Method TemFilhos(_cNewCargo) CLASS CRS708_MAIN
	Local _cQuery := ''
	Local _cEnter := chr(13)+chr(10)
	Local _lRet	  := .F.
    Local _cSuper := SubStr(_cNewCargo,4,20)    

	_cQuery	:=_cEnter+" SELECT COUNT(*) AS TOTAL "
	_cQuery	+=_cEnter+" FROM "+RetSqlName('ZG3')+" ZG3 " 
	_cQuery +=_cEnter+" WHERE "
	_cQuery +=_cEnter+" ZG3.ZG3_FILIAL = '"+xFilial('ZG3')+"' AND "
	_cQuery +=_cEnter+" ZG3.ZG3_PROJET = '"+::cPrjCod+"' AND "
	_cQuery +=_cEnter+" ZG3.ZG3_REVISA = '"+::cPrjRev+"' AND "		
	_cQuery +=_cEnter+" ZG3.ZG3_SUPER = '"+_cSuper+"' AND "
	_cQuery +=_cEnter+" D_E_L_E_T_<>'*'"   
   
	DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),'TEM',.F.,.T.)
	_lRet := TEM->TOTAL > 0
	TEM->(dbCloseArea())
	DbSelectArea('SX2') 
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : MudaMenu
@Author  : Cristian Silva
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Muda opcoes do menu conforme posicionamento na arvore de anexos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   
     
Method MudaMenu() CLASS CRS708_MAIN
	Local _cCargo := ::oTree:GetCargo() 
	Local _cCod   := SubStr(_cCargo,4)                          
	If Left(_cCargo,3) $ 'EST' 
		::oMenu:aItems[1]:Disable()			  							  // DISABLES BUTTON 'FINALIZAR TAREFA' 
		::oMenu:aItems[2]:Disable()			  							  // DISABLES BUTTON 'FINALIZAR TODAS TAREFAS'
		::oMenu:aItems[3]:Disable()			  							  // DISABLES BUTTON 'VISUALIZAR'
	ElseIf Left(_cCargo,3) $ 'EDT'  
		::oMenu:aItems[1]:Disable()			  							  // DISABLES BUTTON 'FINALIZAR TAREFA'
		::oMenu:aItems[3]:Enable()            			  				  // ENABLES BUTTON 'VISUALIZAR'
	    If !::CheckFim(_cCod) 
	   		::oMenu:aItems[2]:Enable()			  						  // ENABLES BUTTON 'FINALIZAR TODAS TAREFAS'
		Else
		   	::oMenu:aItems[2]:Disable()			  						  // DISABLES BUTTON 'FINALIZAR TODAS TAREFAS'  
		End If     
    Else
    	::oMenu:aItems[2]:Disable()           							  // DISABLES BUTTON 'FINALIZAR TODAS TAREFAS'
    	::oMenu:aItems[3]:Enable()            							  // ENABLES BUTTON 'VISUALIZAR'
    	AF9->(DbSetOrder(8))
    	If AF9->(DbSeek(xFilial('AF9')+::cPrjCod+::cPrjRev+_cCod))
    		If Empty(AF9->AF9_DTATUF)
		    	::oMenu:aItems[1]:Enable()    							  // ENABLES BUTTON 'FINALIZAR TAREFA'
			Else
				::oMenu:aItems[1]:Disable()								  // DISABLES BUTTON 'FINALIZAR TAREFA'
			End If
		End if  
	End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : CheckFin
@Author  : Cristian Silva
@Date    : 11/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Verifica se todas as EDT's e TASK's foram finalizadas.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   
Method CheckFim(_cSuperior) Class CRS708_MAIN
	Local _lRet   := .T.
	Local _cAlias := GetNextAlias() 		
	BeginSql Alias _cAlias
		SELECT * FROM (
		SELECT AFC_EDT AS CODIGO, AFC_DTATUI AS DATAINI, AFC_DTATUF AS DATAFIM, 'EDT' AS TIPO, AFC.R_E_C_N_O_ AS REGISTRO
		FROM %table:AFC% AS AFC 
		WHERE 
		AFC.AFC_FILIAL = %exp:AF8->AF8_FILIAL% AND
		AFC.AFC_PROJET = %exp:AF8->AF8_PROJET% AND
		AFC.AFC_REVISA = %exp:AF8->AF8_REVISA% AND
		AFC.AFC_EDTPAI = %exp:_cSuperior% AND
		AFC.%notdel%
		UNION ALL 
		SELECT AF9_TAREFA AS CODIGO, AF9_DTATUI AS DATAINI, AF9_DTATUF AS DATAFIM, 'TASK' AS TIPO, AF9.R_E_C_N_O_ AS REGISTRO
		FROM %table:AF9% AS AF9
		WHERE
		AF9.AF9_FILIAL = %exp:AF8->AF8_FILIAL % AND
		AF9.AF9_PROJET = %exp:AF8->AF8_PROJET % AND
		AF9.AF9_REVISA = %exp:AF8->AF8_REVISA % AND
		AF9.AF9_EDTPAI = %Exp:_cSuperior% AND
		AF9.AF9_DTATUF = %Exp:'  '% AND
		AF9.%notdel%
		) AS TAB
		ORDER BY CODIGO,DATAINI,DATAFIM	
	EndSql
	Do While !(_cAlias)->(eof())
	    If Empty((_cAlias)->DATAINI) .or. Empty((_cAlias)->DATAFIM)
	    	_lRet := .F.
	    	Exit	
	    End If
		(_cAlias)->(DbSkip())
	End Do
	(_cAlias)->(DbCloseArea())
	DbSelectArea('SX2')			
Return _lRet
/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : EndTask
@Author  : Cristian Silva
@Date    : 06/11/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Cria tela para finalizar tarefa.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/        

Method EndTaskEdt(_lVisual) Class CRS708_MAIN	       
	Local 	_nFimCol
	Local 	_nFimLin
//	Local 	_cCargo	  := SubStr(::oTree:GetCargo(),4,20)
	Local 	_cTipo	  := SubStr(::oTree:GetCargo(),1,3)
	Local 	_nTamDes  := 0
	Local 	_nTamMem  := 0 
	Local   _nTamNus  := 0
	Local   _nSize    := 0
//	Local 	_x  
	Default _lVisual  := .F. 
	
	::Reset()  
	If !_lVisual
		cCadastro := iif(_cTipo='EDT','Finaliza todas as tarefas','Finaliza tarefa')    									
	Else    
		cCadastro := iif(_cTipo='EDT','Visualizacao da EDT','Visualizacao da tarefa')    							
    End If
    
    ::lTodas   := (_cTipo='EDT')
    If ::lTodas
    	_nSize := 376
    Else
    	_nSize := 420	
    End If 
	
	DEFINE MSDIALOG ::oDlgFinaliza TITLE cCadastro  From 0,0 To _nSize,496  Pixel 	
		_nFimLin := (::oDlgFinaliza:nClientHeight / 2) 														
		_nFimCol := (::oDlgFinaliza:nClientWidth  / 2) 														
        
        If _lVisual
        	::oDlgFinaliza:bInit := EnchoiceBar(::oDlgFinaliza,{|| ::oDlgFinaliza:End() },{|| ::oDlgFinaliza:End() },.F.,,,,.F.,.F.,.F.,.F.,.F.)
        Else
			::oDlgFinaliza:bInit := EnchoiceBar(::oDlgFinaliza,{|| ::Save()},{|| ::oDlgFinaliza:End() },.F.,,,,.F.,.F.,.F.,.T.,.F.) 
		End If 
						         
		::Posicao(30,5,.T.,.T.) 															
		@ ::nLin+0,::nCol Say "Codigo"			    Of  ::oDlgFinaliza	Pixel			            
		@ ::nLin+8,::nCol MsGet ::oFimCod			Var ::cFimCod		Picture "@!"    WHEN .F. 	Size 060,009 Of ::oDlgFinaliza Pixel HASBUTTON 
		::Posicao(000,065)
		_nTamDes := _nFimCol - (::nCol+5)
		@ ::nLin+0,::nCol Say "Descricao"			Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimDes			Var ::cFimDes		Picture "@!"    WHEN .F.	Size _nTamDes,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::Posicao(024,005,,.T.)
	 	@ ::nLin+0,::nCol Say "Departamento"	    Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimDpt			Var ::cFimDpt		Picture "@!"    WHEN .F. 	Size 045,009 Of ::oDlgFinaliza Pixel HASBUTTON 
	    ::Posicao(000,050)
		@ ::nLin+0,::nCol Say "Nome Departamento"   Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimNdp			Var ::cFimNdp		Picture "@!"    WHEN .F. 	Size 050,009 Of ::oDlgFinaliza Pixel HASBUTTON
	    ::Posicao(000,055)
		@ ::nLin+0,::nCol Say "Usuario"		  		Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimUsu			Var ::cFimUsu		Picture "@!"    WHEN .F. 	Size 030,009 Of ::oDlgFinaliza Pixel HASBUTTON 
		::Posicao(000,035)
		_nTamNus := _nFimCol - (::nCol+5)
		@ ::nLin+0,::nCol Say "Nome Usuario"	    Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimNus			Var ::cFimNus		Picture "@!"    WHEN .F. 	Size _nTamNus,009 Of ::oDlgFinaliza Pixel HASBUTTON  
		::Posicao(024,005,,.T.) 
	    If !::lTodas
			@ ::nLin+0,::nCol Say "Tipo de Ref"         Of  ::oDlgFinaliza  Pixel			
			@ ::nLin+8,::nCol ComboBox ::oFimRef		Var ::cFimRef       Items ::aFimRef    			    Size 045,0012 Of ::oDlgFinaliza Pixel     
	   	    ::oFimRef:Disable()
	   		::Posicao(000,050)	    	 																			            
	  		@ ::nLin+0,::nCol Say "Quantidade"			Of  ::oDlgFinaliza  Pixel			
			@ ::nLin+8,::nCol MsGet ::oFimQtd			Var ::nFimQtd  Picture "@e 999,999.99" WHEN.F.	Size 050,009  Of ::oDlgFinaliza Pixel HASBUTTON 
			::Posicao(000,055)	
			@ ::nLin+0,::nCol Say "Tipo de Dias"	    Of  ::oDlgFinaliza  Pixel			
			@ ::nLin+8,::nCol ComboBox ::oFimDia		Var ::cFimDia       Items ::aFimDia		   			Size 055,0012 Of ::oDlgFinaliza Pixel
	   	    ::oFimDia:Disable()
   	    	::Posicao(024,005,,.T.)
	    End If
		@ ::nLin+0,::nCol Say "Inicio Prev."		Of  ::oDlgFinaliza  Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimDip			Var ::dFimDip	    Picture "@!"    WHEN .F.	Size 048,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::Posicao(000,053)
	 	@ ::nLin+0,::nCol Say "H/Inic.Prev."	    Of  ::oDlgFinaliza  Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimHip			Var ::cFimHip 	    Picture "99:99" WHEN .F.	Size 035,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::Posicao(000,040)
		@ ::nLin+0,::nCol Say "Fim Prev."			Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimDfp			Var ::dFimDfp		Picture "@!"    WHEN .F.	Size 048,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::oFimDfp:SetFocus()
		::Posicao(000,053)
		@ ::nLin+0,::nCol Say "H/Fim.Prev."	    	Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimHfp			Var ::cFimHfp 		Picture "99:99" WHEN .F.	Size 035,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::Posicao(024,005,,.T.) 
		@ ::nLin+0,::nCol Say "Inicio Real."		Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimDir			Var ::dFimDir		Picture "@!"    Valid ::VldField(1) Size 048,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::Posicao(000,053)
		@ ::nLin+0,::nCol Say "H/Inic.Real."	    Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimHir			Var ::cFimHir 		Picture "99:99" Valid ::VldField(3)	Size 035,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::Posicao(000,040)
		@ ::nLin+0,::nCol Say "Fim Real."			Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimDfr			Var ::dFimDfr		Picture "@!"    Valid ::VldField(2)	Size 048,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::oFimDfp:SetFocus()
		::Posicao(000,053)
		@ ::nLin+0,::nCol Say "H/Fim.Real."	    	Of  ::oDlgFinaliza	Pixel			
		@ ::nLin+8,::nCol MsGet ::oFimHfr			Var ::cFimHfr 		Picture "99:99" Valid ::VldField(4)	Size 035,009 Of ::oDlgFinaliza Pixel HASBUTTON
		::Posicao(024,005,,.T.) 
		_nTamMem := _nFimCol - (::nCol+6)
		@ ::nLin+0,::nCol Say "Observacoes"   		Of  ::oDlgFinaliza  Pixel
		@ ::nLin+8,::nCol Get ::oFimObs       		Var ::cFimObs MEMO                                      Size _nTamMem,045 Of ::oDlgFinaliza Pixel 
		::oFimDir:SetFocus() 
		::UploadTask()
		If _lVisual
			::oFimDir:Disable()
			::oFimHir:Disable()
			::oFimDfr:Disable()
			::oFimHfr:Disable()
			::oFimObs:Disable()
		End If 
	ACTIVATE MSDIALOG ::oDlgFinaliza CENTERED 	 
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : UploadTask
@Author  : Cristian Silva
@Date    : 11/12/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Carrega os campos da tela de finalizacao de tarefa/EDT.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                
Method UploadTask() Class CRS708_MAIN
	Local _cCargo := ::oTree:GetCargo()
	Local _lExiste
	
	::cFimCod := SubStr(_cCargo,4)
	If ::lTodas
		AFC->(DbSetOrder(6))                                                                                                                                                                                                                                                 
		_lExiste := AFC->(DbSeek(xFilial('AFC')+::cPrjCod+::cPrjRev+::cFimCod))
		If _lExiste
			::cFimDes := AFC->AFC_DESCRI
	        ::dFimDip := AFC->AFC_START
			::dFimDfp := AFC->AFC_FINISH
			::cFimHip := AFC->AFC_HORAI	  
			::cFimHfp := AFC->AFC_HORAF
			::dFimDir := AFC->AFC_DTATUI
			::cFimHir := AFC->AFC_HRATUI
			::dFimDfr := AFC->AFC_DTATUF
			::cFimHfr := AFC->AFC_HRATUF	
		End If
	Else	
		AF9->(DbSetOrder(8)) 
		_lExiste := AF9->(DbSeek(xFilial('AF9')+::cPrjCod+::cPrjRev+::cFimCod))                                                                                                          
		If _lExiste
			::cFimDes := AF9->AF9_DESCRI
	        ::dFimDip := AF9->AF9_START
			::dFimDfp := AF9->AF9_FINISH
			::cFimHip := AF9->AF9_HORAI	  
			::cFimHfp := AF9->AF9_HORAF	
			::nFimQtd := AF9->AF9_XQUANTI    			
			::dFimDir := AF9->AF9_DTATUI
			::cFimHir := AF9->AF9_HRATUI
			::dFimDfr := AF9->AF9_DTATUF
			::cFimHfr := AF9->AF9_HRATUF 	 
			::cFimObs := MSMM(AF9->AF9_CODMEM,TamSX3("AF9_OBS")[1],,,3,,,"AF9", "AF9_CODMEM")
			::oFimRef:nAt := ascan(::aFimRef,{ |_r| left(_r,1) = AF9->AF9_XREF })   
			::oFimDia:nAt := ascan(::aFimDia,{ |_r| left(_r,1) = AF9->AF9_XDIAS})      			
		End If
	End If
	::TakeUser()
	::oFimCod:Refresh()
	::oFimDes:Refresh()
	::oFimDip:Refresh()
	::oFimHip:Refresh()
	::oFimHfp:Refresh()
	If !::lTodas  
		::oFimRef:Refresh()
		::oFimDia:Refresh()
	End If    
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : TakeUser
@Author  : Cristian Silva
@Date    : 11/12/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Busca codigo de usuario.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                
Method TakeUser() Class CRS708_MAIN 
	Local _cUser  := ''
	Local _cDpto  := ''
	ZG3->(DbSetOrder(1))
	If ZG3->(DbSeek(xFilial('ZG3')+::cPrjCod+::cPrjRev+::cFimCod))
		_cUser := ZG3->ZG3_USER
		_cDpto := ZG3->ZG3_DPTO
		If ZA1->(DbSeek(xFilial('ZA1')+_cDpto))
			::cFimDpt := ZA1->ZA1_DEPTO
			::cFimNdp := ZA1->ZA1_DESCRI 
		End If	
		If ZA2->(DbSeek(xFilial('ZA2')+_cUser))	
			::cFimUsu := ZA2->ZA2_CODIGO
			::cFimNus := ZA2->ZA2_NOME
		End If
	End If  
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : VldSave
@Author  : Cristian Silva
@Date    : 12/12/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Valida campos na execucao do projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method VldField(_nOpc) Class CRS708_MAIN
	Local _lRet 
	Local _cHora  := ''
	Local _lAllowEmpty 
 // Local _x
   
	If _nOpc = 2 .or. _nOpc = 1
		If Empty(::dFimDfr)
			_lRet := .T. 
		ElseIf !Empty(::dFimDfr) .and. ::dFimDir > ::dFimDfr              
			_lRet := .F.                                                 
			MsgInfo('Data final inferior a Data inicial','Atencao')      
		End If
	End IF	
   
	If _nOpc = 3   														 
		_lRet := VldHora(::cFimHir,.T.)
	ElseIf _nOpc = 4													 
		If !Empty(::dFimDir) .and. ::dFimDir = ::dFimDfr .and. ::cFimHir > ::cFimHfr 
			MsgInfo('Projeto iniciado e finalizado no mesmo dia!<br>Hora final deve ser superior a Hora inicial!','Atencao')	
			Return .F.
		Else
			_lRet := VldHora(::cFimHfr,.T.)	
		End If
	End If                                         
Return _lRet                             

Static Function VldHora(_cHora,_lAllowEmpty)
	If alltrim(_cHora) == ':' .or. Empty(_cHora) 
		If _lAllowEmpty
			Return .T.
		Else
			Return .F.
		End If 
	End If
	If Left(_cHora,2) > '23' .or. Empty(Left(_cHora,2))
		If _lAllowEmpty
			MsgStop('Hora Invalida!','Atencao!')
		End If 
		Return .F.
	End If 
	If Right(_cHora,2) > '59' .or. Empty(Right(_cHora,2))
		If _lAllowEmpty
			MsgStop('Hora Invalida!','Atencao!')
		End If 
		Return .F.
	End If	
Return .T. 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : Save
@Author  : Cristian Silva
@Date    : 11/12/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Salva os dados de finalizacao de tarefa/EDT.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                
Method Save() Class CRS708_MAIN 
	Local _cCargo    := ::oTree:GetCargo()
	Local _cSuperior := SubStr(_cCargo,4)
	If ::VldSave()
		If ::lTodas
			::BaixaArvore(_cSuperior) 
		Else  
			::GravaAf9Afc(::cFimCod)
		End If
		::oDlgFinaliza:End()
		MsgInfo('Salvo com sucesso')
		::UploadPrj()
	End If
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : VldSave
@Author  : Cristian Silva
@Date    : 12/12/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Valida campos para poder realizar rotina salvar.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                
Method VldSave() Class CRS708_MAIN
	Local _lRet := .T. 
	
	If !Empty(::cFimHir) .and. Empty(::dFimDir)
		MsgInfo('Preencher campo Inicio Real para finalizacao','Atencao')
		::oFimDir:SetFocus()
		Return .F.
	ElseIf !Empty(::cFimHfr) .and. Empty(::dFimDfr) 
		MsgInfo('Preencher campo Fim Real para finalizacao','Atencao')
		::oFimDfr:SetFocus()
		Return .F.
	ElseIf !Empty(::dFimDfr) .and. Empty(::dFimDir) 
		MsgInfo('Preencher campo Inicio Real para finalizacao','Atencao')
		::oFimDir:SetFocus()
		Return .F.
	ElseIf Empty(::dFimDir) .and. Empty(::dFimDfr) .and. Empty(::cFimHir) .and. Empty(::cFimHfr) 
		If !MsgYesNo('Tem certeza que deseja nao liberar?','Atencao')
			::oFimDir:SetFocus()
			Return .F.
		Else 
			Return .T.
		End If
	End If	
Return _lRet

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : GravaAf9Afc
@Author  : Cristian Silva
@Date    : 12/12/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Salva as datas e horas das TASK's e EDT's realizadas e finalizadas.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/                
Method GravaAf9Afc(_cCod) Class CRS708_MAIN
	Local _cCodMem  := ''
	Local _nAF9_OBS := 0
	Local _lExiste  := ''
    AF9->(DbSetOrder(8))
	_lExiste := AF9->(DbSeek(xFilial('AF9')+::cPrjCod+::cPrjRev+_cCod))
	If _lExiste
		Begin Transaction
			AF9->(Reclock('AF9',.F.))
	        AF9->AF9_DTATUI := ::dFimDir 
		    AF9->AF9_DTATUF	:= ::dFimDfr
			AF9->AF9_HRATUI := ::cFimHir
			AF9->AF9_HRATUF := ::cFimHfr
			AF9->AF9_CODMEM := ""
			_cCodMem  := CriaVar("AF9_CODMEM")
			_nAF9_OBS := TamSX3("AF9_OBS")[1]						
			MSMM(_cCodMem,_nAF9_OBS,,::cFimObs,1,,,"AF9","AF9_CODMEM")
			AF9->(MsUnlock())
			::UpdEdt(AF9->AF9_EDTPAI,'INI')
			::UpdEdt(AF9->AF9_EDTPAI,'FIM')			
		End Transaction
	End If	
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : UpdEdtIni
@Author  : Cristian Silva 
@Date    : 04/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava valores iniciais das EDT's baseado nos valores das TASK's.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/
Method UpdEdt(_cSuper,_cTipo) Class CRS708_MAIN
	Local _cEdt 
	Local _cQuery := ' '
	Local _cEnter := chr(13)+chr(10)
	Local _cAlias := GetNextAlias() 
    Local _cFim   := iif(_cTipo = 'FIM','DESC',' ')    
	_cQuery := _cEnter + " SELECT TOP 1 * FROM ( 
	_cQuery += _cEnter + " SELECT AF9_TAREFA AS CODIGO, AF9_DTATUI AS DATAINI, AF9_HRATUI AS HORAINI, AF9_DTATUF AS DATAFIM, AF9_HRATUF AS HORAFIM
	_cQuery += _cEnter + " FROM "+RetSqlName('AF9')+" AF9 " 
	_cQuery += _cEnter + " WHERE AF9.AF9_FILIAL = '"+xFilial('AF9')+"' AND "
	_cQuery += _cEnter + " AF9.AF9_PROJET =  '"+::cPrjCod+"' AND "
	_cQuery += _cEnter + " AF9.AF9_REVISA =  '"+::cPrjRev+"' AND "
	_cQuery += _cEnter + " AF9.AF9_EDTPAI =  '"+_cSuper+"'AND "
	_cQuery += _cEnter + " AF9.D_E_L_E_T_ <> '*'
	_cQuery += _cEnter + " UNION ALL " 
	_cQuery += _cEnter + " SELECT AFC_EDT AS CODIGO, AFC_DTATUI AS DATAINI, AFC_HRATUI AS HORAINI,AFC_DTATUF AS DATAFIM,  AFC_HRATUF AS HORAFIM
	_cQuery += _cEnter + " FROM  "+RetSqlName('AFC')+" AFC " 
	_cQuery += _cEnter + " WHERE AFC.AFC_FILIAL = '"+xFilial('AFC')+"' AND "
	_cQuery += _cEnter + " AFC.AFC_PROJET = '"+::cPrjCod+"' AND " 
	_cQuery += _cEnter + " AFC.AFC_REVISA = '"+::cPrjRev+"' AND " 
	_cQuery += _cEnter + " AFC.AFC_EDTPAI = '"+_cSuper+"' AND "
	_cQuery += _cEnter + " AFC.D_E_L_E_T_ <> '*') AS TAB "
	_cQuery += _cEnter + " ORDER BY CODIGO "+_cFim	
	DbUseArea(.T.,"TOPCONN",TCGENQRY(,,_cQuery),_cAlias,.F.,.T.)
	If !(_cAlias)->(eof())                                      
		_cEdt := _cSuper
		If Empty(_cEdt)
			_cEdt := (_cAlias)->AF9_PROJET 
		End If 
		AFC->(DbSetOrder(6))
		If _cTipo = 'INI'
			If AFC->(DbSeek(xFilial('AFC')+::cPrjCod+::cPrjRev+_cEdt)) .AND. (AFC->AFC_DTATUI <> STOD((_cAlias)->DATAINI) .or. 	AFC->AFC_HRATUI <> (_cAlias)->HORAINI)
				AFC->(RecLock('AFC',.F.))
				AFC->AFC_DTATUI := STOD((_cAlias)->DATAINI)
				AFC->AFC_HRATUI := (_cAlias)->HORAINI
	    		AFC->(MsUnLock())	 
	        End If
		Else 
			If AFC->(DbSeek(xFilial('AFC')+::cPrjCod+::cPrjRev+_cEdt)) .and. (AFC->AFC_DTATUF <> STOD((_cAlias)->DATAFIM) .or. AFC->AFC_HRATUF <> (_cAlias)->HORAFIM)
				AFC->(RecLock('AFC',.F.))
				AFC->AFC_DTATUF := STOD((_cAlias)->DATAFIM)
				AFC->AFC_HRATUF := (_cAlias)->HORAFIM
				AFC->(MsUnLock())	 				
		    End If
		End If
		IF !empty(AFC->AFC_EDTPAI)
			::UpdEdt(AFC->AFC_EDTPAI,_cTipo)  
		End If
	End If
	(_cAlias)->(DbCloseArea())
	DbSelectArea('SX2')
Return
                                                                                                                              
/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : Reset
@Author  : Cristian Silva 
@Date    : 10/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Reset de variaveis na inicializacao.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 
           
Method Reset() Class CRS708_MAIN	 
 	::dFimDir := CTOD('')
	::dFimDfr := CTOD('')
	::cFimHir := space(TamSx3('AF9_HRATUI')[1]) 
	::cFimHfr := space(TamSx3('AF9_HRATUF')[1]) 	
Return             

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : BaixaArvore
@Author  : Cristian Silva
@Date    : 22/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Busca nivel dos itens na estrutura da arvore.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/
Method BaixaArvore(_cSuperior) CLASS CRS708_MAIN
	Local _cAlias := GetNextAlias() 	
	BeginSql Alias _cAlias
		SELECT * FROM (
		SELECT AFC_EDT AS CODIGO,AFC_DESCRI AS DESCRICAO,AFC_NIVEL AS NIVEL,'EDT' AS TIPO,AFC.R_E_C_N_O_ AS REGISTRO
		FROM %table:AFC% AS AFC 
		WHERE 
		AFC.AFC_FILIAL = %exp:AF8->AF8_FILIAL% AND
		AFC.AFC_PROJET = %exp:AF8->AF8_PROJET% AND
		AFC.AFC_REVISA = %exp:AF8->AF8_REVISA% AND
		AFC.AFC_EDTPAI = %exp:_cSuperior% AND
		AFC.%notdel%
		UNION ALL 
		SELECT AF9_TAREFA AS CODIGO,AF9_DESCRI AS DESCRICAO,AF9_NIVEL AS NIVEL,'TSK' AS TIPO,AF9.R_E_C_N_O_ AS REGISTRO
		FROM %table:AF9% AS AF9
		WHERE
		AF9.AF9_FILIAL = %exp:AF8->AF8_FILIAL% AND
		AF9.AF9_PROJET = %exp:AF8->AF8_PROJET% AND
		AF9.AF9_REVISA = %exp:AF8->AF8_REVISA% AND
		AF9.AF9_EDTPAI = %Exp:_cSuperior% AND
		AF9.AF9_DTATUF = %Exp:'  '% AND
		AF9.%notdel%
		) AS TAB
		ORDER BY CODIGO,NIVEL	
	EndSql
	Do While !(_cAlias)->(eof())		
		If (_cAlias)->TIPO = 'TSK'			                     
			::GravaAf9Afc((_cAlias)->CODIGO)
		Else  																		
			::BaixaArvore((_cAlias)->CODIGO) 								
		End If 
		(_cAlias)->(dbskip())
	End Do  
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2')	
Return  

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : CheckStatus()
@Author  : Cristian Silva
@Date    : 23/01/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Set do status do projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/               
Method CheckStatus(_cCod,_nTskEdt) Class CRS708_MAIN
	If _nTskEdt = 1 // TASK
		AF9->(DbSetOrder(8))
		If AF9->(DbSeek(xFilial('AF9')+::cPrjCod+::cPrjRev+_cCod))			
			::DefStatusTsk()
		End If
	End If
	If _nTskEdt = 2 // EDT
		AFC->(DbSetOrder(6))
		If AFC->(DbSeek(xFilial('AFC')+::cPrjCod+::cPrjRev+_cCod))
		   	If 	::CheckEdt(_cCod)
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
@Title   : CRS708.PRW
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
Method DefStatusTsk() Class CRS708_MAIN
	If !Empty(AF9->AF9_DTATUF)             							
		::cSheet := 'sdusetdel_ocean'     							
	Else 
		If (::dDate > AF9->AF9_FINISH) .or. (::dDate = AF9->AF9_START .and. ::dDate = AF9->AF9_FINISH .and. ::cHora >= AF9->AF9_HORAF)  						
			::cSheet := 'ng_ico_fmrpc'     						
		ElseIf (::dDate > AF9->AF9_START .and. ::dDate < AF9->AF9_FINISH ) .or. (::dDate = AF9->AF9_START .and. ::cHora >= AF9->AF9_HORAI)
			::cSheet := 'ng_ico_fmrap'							  
		Else
			::cSheet := 'papel_escrito'	   					
		End If
	End If
Return
/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS708.PRW
@Type    : MTH - Methodo
@Name    : UpdEdtIni
@Author  : Cristian Silva 
@Date    : 04/03/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Grava valores iniciais das EDT's baseado nos valores das TASK's.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/
Method CheckEdt(_cSuper) Class CRS708_MAIN
	Local _lRet   := .T.
	Local _cQuery := ' '
	Local _cEnter := chr(13)+chr(10)
	Local _cAlias := GetNextAlias() 	
    
	_cQuery := _cEnter + " SELECT * FROM ( 
	_cQuery += _cEnter + " SELECT AF9_TAREFA AS CODIGO,AF9_DTATUF AS DATAFIM
	_cQuery += _cEnter + " FROM "+RetSqlName('AF9')+" AF9 " 
	_cQuery += _cEnter + " WHERE AF9.AF9_FILIAL = '"+xFilial('AF9')+"' AND "
	_cQuery += _cEnter + " AF9.AF9_PROJET =  '"+::cPrjCod+"' AND "
	_cQuery += _cEnter + " AF9.AF9_REVISA =  '"+::cPrjRev+"' AND "
	_cQuery += _cEnter + " AF9.AF9_EDTPAI =  '"+_cSuper+"'AND "
	_cQuery += _cEnter + " AF9.D_E_L_E_T_ <> '*'
	_cQuery += _cEnter + " UNION ALL " 
	_cQuery += _cEnter + " SELECT AFC_EDT AS CODIGO, AFC_DTATUF AS DATAFIM
	_cQuery += _cEnter + " FROM  "+RetSqlName('AFC')+" AFC " 
	_cQuery += _cEnter + " WHERE AFC.AFC_FILIAL = '"+xFilial('AFC')+"' AND "
	_cQuery += _cEnter + " AFC.AFC_PROJET = '"+::cPrjCod+"' AND " 
	_cQuery += _cEnter + " AFC.AFC_REVISA = '"+::cPrjRev+"' AND " 
	_cQuery += _cEnter + " AFC.AFC_EDTPAI = '"+_cSuper+"' AND "
	_cQuery += _cEnter + " AFC.D_E_L_E_T_ <> '*') AS TAB "
	_cQuery += _cEnter + " ORDER BY CODIGO "
	DbUseArea(.T.,"TOPCONN",TCGENQRY(,,_cQuery),_cAlias,.F.,.T.)
	If !(_cAlias)->(eof())                                      
		Do While !(_cAlias)->(eof())
			If Empty((_cAlias)->DATAFIM) 
				_lRet := .F.
				Exit
			End If
			(_cAlias)->(dbskip())
		End Do
	Else
		_lRet := .F.		        
	End If
	(_cAlias)->(DbCloseArea())
	DbSelectArea('SX2')
Return _lRet   

//ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
