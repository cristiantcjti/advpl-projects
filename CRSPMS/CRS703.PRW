/*/
лSource Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title     : CRS703.PRW
@Owner     : 
@CopyRight : 
@Author    : Cristian Silva
@Version   : P12 - Protheus 12
@Date      : 22/04/2019
@Engine    : AdvPl
@Module    : PMS
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Projetos
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Table
Table@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллSource Detailл
/*/   

#include "rwmake.ch"
#include "protheus.ch"
#include "apwebsrv.ch"

#DEFINE BR Chr(10)

#DEFINE	CSSPanel1;
	BR+"QFrame{";
	+BR+"  color: #000000;";
	+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
	+BR+"                                    stop: 0 #ccccff, stop: 0.5 #ffffff, stop: 0.7 #ccccff);";
	+BR+"}"

#DEFINE	CSSPanel2;
	BR+"QFrame{";
	+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
	+BR+"                                    stop: 0 #dcdcdc, stop: 1 #ffffff);";
	+BR+"}"

#DEFINE	CSSPanel3;
	BR+"QFrame{";
	+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
	+BR+"                                    stop: 0 #dcdcdc, stop: 1 #ffffff);";
	+BR+"}"
#DEFINE	CSSPanel4;
	BR+"QFrame{";
	+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
	+BR+"                                    stop: 0 #dcdcdc, stop: 1 #ffffff);";
	+BR+"}"

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : USR - User Fucntion 
@Name    : CRS703A
@Author  : Cristian Silva
@Date    : 27/04/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Chamada principal da rotina.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/  

USER FUNCTION CRS703A()	
	Local _oObj := CRS703_MAIN():New()
	_oObj:Run()
RETURN

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : CRS703_MAIN
@Author  : Cristian Silva
@Date    : 22/04/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Criaллo da classe
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 
Class CRS703_MAIN FROM LongClassName
	Method New() Constructor
	Method Run()
	Method Posicao()
	Method Acessos()
	Method KillPrj()
	Method CriaMenu()
	Method NovoProj()
	Method PutToKill()
	Method Estrutura()
	Method GeraExcel()
	Method Atualizar()
	Method BuildPanel()
	Method Visualizar()
	Method ExcProjeto()
	Method RevProjeto()
	Method CheckToKill()
	Method MontaPainel() 
	Data cId
	Data nLin
	Data nCol
	Data oMenu1
	Data oGerar
	Data oFont1
	Data aPosObj
	Data nFimLin
	Data nFimCol   
	Data oPrjCod
	Data cPrjCod
	Data oPrjDes
	Data cPrjDes
	Data oPrjDti
	Data dPrjDti
	Data oPrjDtf
	Data dPrjDtf
	Data oPrjSts
	Data cPrjSts
	Data aCampos 
	Data oEstPrj
	Data oExcPrj
	Data oRevPrj
	Data cColbmp
	Data oPainel1
	Data oPainel2 
	Data oPainel3
	Data oPainel4
	Data oFuncoes
	Data ckillCod
	Data ckillRev 
	Data oDlgEdit 
	Data oBtnPrj001
	Data oBtnPrj002
	Data oBtnPrj003
	Data oBtnPrj004	
	Data oBtnPrj005
	Data oGetProjetos
EndClass

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : New
@Author  : Cristian Silva
@Date    : 22/04/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Method new - constructor
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/
                                                                            
Method New() CLASS CRS703_MAIN
	::cId	  := '25'                             
	::ckillCod:= ''
	::ckillRev:= ''
	::oFont1  := TFont():New('Arial',,17,.T.,.T.)   
	::cPrjCod := space(15)
	::cPrjDes := space(50)
	::dPrjDti := CTOD('')
	::dPrjDtf := CTOD('31/12/2049')     
	::aCampos := {'COLBMP','AF8_PROJET','AF8_REVISA','AF8_DESCRI','AF8_DATA','AF8_START','AF8_FINISH','AF8_STATUS'}
	::oGerar  := CRS707_MAIN():New('Geracao')
	::oEstPrj := CRS707_MAIN():New('Estrutura')
	::oRevPrj := CRS707_MAIN():New('Revisao')
	::oExcPrj := CRS708_MAIN():New() 
	::oFuncoes:= Funcoes():New()
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : Posicao
@Author  : Cristian Silva
@Date    : 22/04/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Retorna posiллes.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method Posicao(_nLin,_nCol,_lResLin,_lResCol) CLASS CRS703_MAIN                                             
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
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : Run
@Author  : Cristian Santana 
@Date    : 22/04/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Inicializa Processo
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/     
                                                                       
Method Run() CLASS CRS703_MAIN
	::MontaPainel()
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : MontaPainel
@Author  : Cristian Silva
@Date    : 22/04/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Monta o painel principal
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/     
                                                                       
Method MontaPainel() CLASS CRS703_MAIN
//	Local _oCorpo
	Local _aStatus  := {'Pendentes','Concluidos','Todos'}
	Local _nTamCpo  
	
	DEFINE MSDIALOG ::oDlgEdit TITLE "Project Manager" PIXEL FROM 000,000 TO 600,1200           
		::BuildPanel()
		::nFimLin := (::oPainel2:nClientHeight/2)
		::nFimCol := (::oPainel2:nClientWidth /2) // 600                                                  		
		TGroup():New(004,007,037,::nFimCol-007,' Filtros ' ,::oPainel2,,,.T.) //-114     
	
		::Posicao(10,14,.T.,.T.) 	
	
		@ ::nLin+0,::nCol Say "Codigo"         Of  ::oPainel2 Pixel			
		@ ::nLin+8,::nCol MsGet ::oPrjCod      Var ::cPrjCod Picture "@!"    Size 045,009 Of ::oPainel2 Pixel HASBUTTON	
		::Posicao(000,050) // 50
		_nTamCpo := ::nFimCol-(114+::nCol+53+53+10)
		@ ::nLin+0,::nCol Say "Descricao"      Of  ::oPainel2 Pixel			
		@ ::nLin+8,::nCol MsGet ::oPrjDes      Var ::cPrjDes Picture "@!"    Size _nTamCpo,009 Of ::oPainel2 Pixel HASBUTTON	
		::Posicao(000,_nTamCpo+5) 
		
		@ ::nLin+0,::nCol Say "Data Inicio"    Of  ::oPainel2 Pixel			
		@ ::nLin+8,::nCol MsGet ::oPrjDti      Var ::dPrjDti 				 Size 048,009 Of ::oPainel2 Pixel HASBUTTON	
		::Posicao(000,053)
		
		@ ::nLin+0,::nCol Say "Data Fim"       Of  ::oPainel2 Pixel			
		@ ::nLin+8,::nCol MsGet ::oPrjDtf      Var ::dPrjDtf 				 Size 048,009 Of ::oPainel2 Pixel HASBUTTON	
		::Posicao(000,053) 
		
		@ ::nLin+0,::nCol Say "Status"		   Of  ::oPainel2 Pixel			
		@ ::nLin+8,::nCol ComboBox ::oPrjSts   Var ::cPrjSts Items _aStatus		Size 050,012 Of ::oPainel2 Pixel     	  	                   
		::Posicao(007,::nFimCol,.T.,.T.)		
		@ ::nLin+10,::nFimCol-063 Button ::oBtnPrj001 PROMPT '      Atualizar'      Size 050,014 Action FWMsgRun(, {|_oSay| ::Atualizar(.T.) },,'Aguarde...buscando realizado') Of ::oPainel2 Pixel	//-170
		::Posicao(007,007,.T.,.T.)
		@ ::nLin+00,::nCol Button ::oBtnPrj002 PROMPT '        		Novo Projeto'	Size 050,014 Action ::NovoProj()	Of ::oPainel3 Pixel		
		::Posicao(000,052)	       		                                                                                              
		@ ::nLin+00,::nCol Button ::oBtnPrj003 PROMPT '        		Estrutura'		Size 050,014 Action ::Estrutura()	Of ::oPainel3 Pixel				                                                                                                       
		::Posicao(023,007,.T.,.T.)
		@ ::nLin+00,::nCol Button ::oBtnPrj004 PROMPT '        		Opcoes'			Size 050,014 Action .t.				Of ::oPainel3 Pixel			
		::Posicao(000,052)	       	
		@ ::nLin+00,::nCol Button ::oBtnPrj005 PROMPT '        		Excel'			Size 050,014 Action ::GeraExcel()	Of ::oPainel3 Pixel		
		     
		::oBtnPrj001:SetCss(::oFuncoes:Botao('sduseek'	 ))  	   	
		::oBtnPrj002:SetCss(::oFuncoes:Botao('bmpincluir'))  	   	
		::oBtnPrj003:SetCss(::oFuncoes:Botao('produto'	 ))  	   	
		::oBtnPrj004:SetCss(::oFuncoes:Botao('ferram'	 )) 	
		::oBtnPrj005:SetCss(::oFuncoes:Botao('pmsexcel'	 ))  

		::oGetProjetos := Focus():New(::oPainel4,002,002,239,596,::aCampos) 
		::oGetProjetos:oBrowse:bLDblClick := {|_o| ::ExcProjeto() } 				
		::oGetProjetos:oBrowse:nRowHeight := 20 							
		::CriaMenu()
		::Atualizar()
//		::Acessos()  	                                                                          

	ACTIVATE DIALOG ::oDlgEdit CENTERED  		
//	@ 1,1 Bitmap _oCorpo FILENAME "\tower\imagens\corpo.png" Pixel Of ::oPainel2 Size (::nFimCol),(::nFimLin) NOBORDER	// Define imagem que vai aparecer no Protheus
//	_oCorpo:lStretch:=.T.   	 	   	
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : Buildpanel
@Author  : Cristian Silva
@Date    : 13/05/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Monta paineis adicionais
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/     
                                                                       
Method BuildPanel() CLASS CRS703_MAIN
		::oPainel1 := TPanel():New(001,001,' Project Manager',::oDlgEdit,::oFont1,.F.,.F.,,,599,014,.F.,.F.)
		::oPainel1:SetCss(CSSPanel1)
		::oPainel2 := TPanel():New(014,001,,::oDlgEdit,,.F.,.F.,,,485,044,.F.,.T.) // 289
		::oPainel2:SetCss(CSSPanel2)
		::oPainel3 := TPanel():New(014,486,,::oDlgEdit,,.F.,.F.,,,114,044,.F.,.T.) // 289
		::oPainel3:SetCss(CSSPanel3)
		::oPainel4 := TPanel():New(058,001,,::oDlgEdit,,.F.,.F.,,,599,241,.F.,.T.) // 289
		::oPainel4:SetCss(CSSPanel4)
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : Atualizar
@Author  : Cristian Silva
@Date    : 22/04/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Atualizar tela
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/             
Method Atualizar() CLASS CRS703_MAIN
	Local _cQuery                   
	Local _aCores  := {} 
	Local _aRegras := {}
	Aadd(_aRegras,"AF8_XCOLBM = '1'")  ; Aadd(_aCores,"BR_VERDE"   ) 
	Aadd(_aRegras,"AF8_XCOLBM = '2'")  ; Aadd(_aCores,"BR_AMARELO" )  			
	Aadd(_aRegras,"AF8_XCOLBM = '3'")  ; Aadd(_aCores,"BR_VERMELHO") 
	Aadd(_aRegras,"AF8_XCOLBM = '4'")  ; Aadd(_aCores,"BR_AZUL"    ) 

	_cQuery := " SELECT AF8.AF8_XCOLBM,AF8.AF8_PROJET,AF8.AF8_REVISA,AF8.AF8_DESCRI,AF8.AF8_DATA,AF8.AF8_START,AF8.AF8_FINISH,AF8.AF8_STATUS,AF8.R_E_C_N_O_ AS AF8REC " //,AF8.R_E_C_N_O_ AS AF8REC "
	_cQuery += " FROM "+RetSqlName('AF8')+" AF8 " 
	_cQuery += " WHERE "
	_cQuery += " AF8.AF8_DATA BETWEEN '"+dtos(::dPrjDti)+"' AND '"+dtos(::dPrjDtf)+"' AND "                                        
	if !Empty(::cPrjDes)
		_cQuery += " AF8_DESCRI LIKE '%"+alltrim(::cPrjDes)+"%' AND " 
	End If              
	_cQuery += " D_E_L_E_T_ <> '*' " 
	::oGetProjetos:cQuery   := _cQuery   		      
	::oGetProjetos:aCores   := _aCores
	::oGetProjetos:aRegras  := _aRegras
	::oGetProjetos:cCpoRec	:='AF8REC' 
	::oGetProjetos:Refresh(.F.)		
Return                                                                         

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method 
@Name    : NovoProj
@Author  : Cristian e Fernando
@Date    : 09/10/2019                         
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Cria novo projeto 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method NovoProj() Class CRS703_MAIN
	If ::oGerar:Executar()//CRS707(1)
		::Atualizar()
		MsgInfo('Projeto gerado com sucesso.','Aviso!')
	End If	
Return 

/*/                                                                     	
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Methodo
@Name    : Estrutura
@Author  : Critian Silva
@Date    : 11/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Exibe tela para mostrar estrutura
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/   
         
Method Estrutura() Class CRS703_MAIN
	::oEstPrj:Executar()//CRS707(2)
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Methodo
@Name    : ExcProjeto
@Author  : Critian Silva
@Date    : 31/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Executa projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/            
Method ExcProjeto() Class CRS703_MAIN
	Local _nRecno := ::oGetProjetos:Registro()
  	AF8->(dbGoTo(_nRecno))
  	If _nRecno = 0
		MsgStop('NУЃo ha projeto selecionado para ser executado!','Aviso!')
		Return	
	End If
  	::oExcPrj:Executar()//CRS708
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method 
@Name    : 
@Author  : Cristian e Fernando
@Date    : 12/03/2020                         
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Cria revisлo do projeto. 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method RevProjeto() Class CRS703_MAIN
	Local _nRecno := ::oGetProjetos:Registro()
	AF8->(dbGoTo(_nRecno))
	If _nRecno = 0
		MsgStop('Nao ha projeto selecionado para ser revisado!','Aviso!')
		Return	
	End If
	If ::oRevPrj:Review()
		::Atualizar()
		MsgInfo('Projeto revisado com sucesso.','Aviso!')
    End If
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method 
@Name    : Visualizar
@Author  : Cristian e Fernando
@Date    : 09/10/2019                         
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Visualizar projeto 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method Visualizar() Class CRS703_MAIN
    Local _nRecno	:= ::oGetProjetos:Registro()               						           
	aRotina			:= { { "Pesquisar"	,"AxPesqui" , 0, 1},;                     	
						 { "Visualizar" ,"AxVisual" , 0, 2},;                     	
	                     { "Incluir"    ,"AxInclui" , 0, 3},;                     	
	                     { "Alterar"    ,"AxAltera" , 0, 4},;              			
	                     { "Excluir"    ,"AxDeleta" , 0, 5} }      					
	cCadastro := "Projetos - Visualizar"	               	                        	
	PRIVATE aMemos  := {{"AF8_CODMEM","AF8_OBS"}}                                   	
	PRIVATE aCores  := PmsAF8Color()													
	PRIVATE nDlgPln := 1																
	PRIVATE lCallPrj:= .T.																
	INCLUI := .F.																		
	ALTERA := .F.  																		
	SetFunName("PMSA410")	                                                        	
	Pergunte("PMA200",.F.)																
	nDlgPln := mv_par01	   	                                                        	
	dbSelectArea('AF8')                                                             	
	AF8->(dbGoTo(_nRecno))                                                          	
	FWMsgRun(, {|_oSay| PMS410Dlg('AF8',_nRecno,2) },,'Aguarde...Consultando Projeto')	
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method 
@Name    : Excel
@Author  : Cristian e Fernando
@Date    : 09/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Geraллo de Planilha Excel 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method GeraExcel(_nOpcao) Class CRS703_MAIN				   
	Local _oFWMSExcel                                    
	_oFWMSExcel:=PhxExcel():New()                       
	_oFWMSExcel:cTitulo    := "PROJETOS"
	_oFWMSExcel:cTitulo2   := "PROJETOS"	
	_oFWMSExcel:aHeader    := ::oGetProjetos:aHeader
	_oFWMSExcel:cQuery     := ::oGetProjetos:cQuery
	_oFWMSExcel:nRegistros := ::oGetProjetos:Contar()
	_oFWMSExcel:Executa('CRS703')		
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method 
@Name    : CriaMenu
@Author  : Cristian e Fernando
@Date    : 09/10/2019
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Cria Menu 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/

Method CriaMenu() CLASS CRS703_MAIN
	::oMenu1:=TMenu():New(0,0,0,0,.T.)
	::oMenu1:Add(TMenuItem():New(::oPainel3,"Executar Projeto"   ,,,.T.,{|| ::ExcProjeto() },,'dbg03_ocean',,,,,,,.T.))
	::oMenu1:Add(TMenuItem():New(::oPainel3,"Revisar Projeto"    ,,,.T.,{|| ::RevProjeto() },,'recorrente' ,,,,,,,.T.))                                                                             
	::oMenu1:Add(TMenuItem():New(::oPainel3,"Visualizar Projeto" ,,,.T.,{|| ::Visualizar() },,'bmpvisual'  ,,,,,,,.T.))
	::oMenu1:Add(TMenuItem():New(::oPainel3,"Excluir Projeto"    ,,,.T.,{|| ::KillPrj()    },,'editable'   ,,,,,,,.T.))
	::oBtnPrj004:SetPopupMenu(::oMenu1) 
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : KillPrj
@Author  : Cristian e Fernando
@Date    : 03/04/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Mata projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/  

Method KillPrj() Class CRS703_MAIN
	Local _nRecno := ::oGetProjetos:Registro()
	AF8->(dbGoTo(_nRecno))
	If _nRecno = 0
		MsgStop('Nao ha projeto selecionado para ser excluido!','Atencao!')
		Return
	Else
		If ::CheckToKill()
			::PutToKill('AF8')
			::PutToKill('AFC') 
			::PutToKill('AF9')
			::Atualizar()
			MsgInfo('Projeto excluido com sucesso.','Aviso!')
		Else
			MsgStop('Projeto nao pode ser excluido pois contem tarefas concluidas.','Aviso!')
			Return 	
		End If	
	End If 
Return  

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : CheckToKill
@Author  : Cristian e Fernando
@Date    : 03/04/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Check se o projeto teve algo finalizado.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Method CheckToKill() Class CRS703_MAIN
	Local _lRet   := .T.
	Local _cQuery := ''
	Local _cEnter := chr(13)+chr(10)
	Local _cAlias := GetNextAlias()
	::ckillCod := AF8->AF8_PROJET
	::cKillRev := AF8->AF8_REVISA 
	
	_cQuery := _cEnter + " SELECT * FROM ( 
	_cQuery += _cEnter + " SELECT AF9_TAREFA AS CODIGO,AF9_DTATUF AS DATAFIM
	_cQuery += _cEnter + " FROM "+RetSqlName('AF9')+" AF9 " 
	_cQuery += _cEnter + " WHERE AF9.AF9_FILIAL = '"+xFilial('AF9')+"' AND "
	_cQuery += _cEnter + " AF9.AF9_PROJET =  '"+::ckillCod+"' AND "
	_cQuery += _cEnter + " AF9.AF9_REVISA =  '"+::cKillRev+"' AND "
	_cQuery += _cEnter + " AF9.D_E_L_E_T_ <> '*'
	_cQuery += _cEnter + " UNION ALL " 
	_cQuery += _cEnter + " SELECT AFC_EDT AS CODIGO, AFC_DTATUF AS DATAFIM
	_cQuery += _cEnter + " FROM  "+RetSqlName('AFC')+" AFC " 
	_cQuery += _cEnter + " WHERE AFC.AFC_FILIAL = '"+xFilial('AFC')+"' AND "
	_cQuery += _cEnter + " AFC.AFC_PROJET = '"+::ckillCod+"' AND " 
	_cQuery += _cEnter + " AFC.AFC_REVISA = '"+::cKillRev+"' AND " 
	_cQuery += _cEnter + " AFC.D_E_L_E_T_ <> '*') AS TAB "
	_cQuery += _cEnter + " ORDER BY CODIGO "
	DbUseArea(.T.,"TOPCONN",TCGENQRY(,,_cQuery),_cAlias,.F.,.T.)
	
	If !(_cAlias)->(eof())                                      
		Do While !(_cAlias)->(eof())
			If !Empty((_cAlias)->DATAFIM) 
				_lRet := .F.
				Exit
			End If
			(_cAlias)->(dbskip())
		End Do  	       
	End If
	(_cAlias)->(DbCloseArea())
	DbSelectArea('SX2')		
Return _lRet 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS703.PRW
@Type    : MTH - Method
@Name    : PutToKill
@Author  : Cristian e Fernando
@Date    : 03/04/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Mata projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/    
 
Method PutToKill(_cTab) Class CRS703_MAIN
	Local _lRet   := .F. 
	Local _cAlias := GetNextAlias()
	Local _cQuery := ''
	Local _cEnter := chr(13)+chr(10)
	Local _nRecno := 0
	Default _cTab := '' 
   
	_cQuery := _cEnter + " SELECT "+_cTab+".R_E_C_N_O_ AS REGISTRO " 
	_cQuery += _cEnter + " FROM "+RetSqlName(_cTab)+" "+(_cTab)"
	_cQuery += _cEnter + " WHERE "+(_cTab)+"."+(_cTab)+"_FILIAL = '"+xFilial(_cTab)+"' AND "
	_cQuery += _cEnter + " "+(_cTab)+"."+(_cTab)+"_PROJET  = '"+::ckillCod+"' AND " 				
	_cQuery += _cEnter + " "+(_cTab)+".D_E_L_E_T_ <> '*' 
   	DbUseArea(.T.,"TOPCONN",TCGENQRY(,,_cQuery),_cAlias,.F.,.T.)  
   	   
	Begin Transaction 
		Do While !(_cAlias)->(eof())
			_nRecno := (_cAlias)-> REGISTRO
			(_cTab)->(dbGoTo(_nRecno))
			(_cTab)->(RecLock((_cTab),.F.))
			(_cTab)->(dbDelete())
			(_cTab)->(MsUnlock())
			(_cAlias)->(dbSkip())
		End Do
	End Transaction
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2') 
	_lRet := .T.
Return _lRet

//ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
