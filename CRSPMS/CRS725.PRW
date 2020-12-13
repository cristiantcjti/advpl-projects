/*/
лSource Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title     : CRS725.PRW
@Owner     : CRS
@CopyRight : CRS
@Author    : Cristian Silva
@Version   : P12 - Protheus 12
@Date      : 27/02/2020
@Engine    : AdvPl
@Module    : PMS
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
WorkFlow das tarefas realizadas.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Table
Table@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллSource Detailл
/*/ 

#Include 'TOTVS.ch' 

/*/
лSource Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS725.PRW
@Type    : USR - User Function 
@Name    : CRS725
@Author  : Cristian Silva Santana
@Date    : 27/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
user function principal para inicio de workflow. 
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/  
USER FUNCTION CRS725() 
	RpcSetType( 3 )
	RPCSetEnv('99','01')

	Do While !KillApp()
		Conout('Vou mandar workflow')
		WorkFlowFim() // RUNS AFTER EACH TASK CONCLUSION
	  	WorkFlowIni() // RUNS ONLY AFTER THE FIRST SCAN OVER THE NEWEST PROJECT
		SetColbmp()
		Inkey(05)
	End Do
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS725.PRW
@Type    : STC - Stactic
@Name    : WorkFlowFim
@Author  : Cristian Silva Santana
@Date    : 27/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Query para definiУЇУЃo das tasks que serУЃo definidas para envio de email.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Static Function WorkFlowFim()                                                    
//	Local _oWorkflow      
	Local _cAlias := GetNextAlias()
	BeginSql Alias _cAlias
		SELECT AF9.R_E_C_N_O_ AS AF9REC
		FROM %table:AF9% AF9
		WHERE 
		AF9.AF9_FILIAL =  %xFilial:AF9% AND
		AF9.AF9_DTATUF <> ' ' AND                  
		AF9.AF9_XWRKFI <> 'S' AND 
		AF9.%notdel%   
	EndSql                      
	If !(_cAlias)->(eof())
		Do While !(_cAlias)->(eof())
			_nRecno := (_cAlias)->AF9REC
			AF9->(dbGoTo(_nRecno))
			Enviar('Fim')
			AF9->(RecLock('AF9',.F.)) 
			AF9->AF9_XWRKFI := 'S'
			AF9->(MsUnLock())
			(_cAlias)->(dbSkip())
		End Do
		WFSendMail({"99","01"})                                   	
	End IF 
Return 

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS725.PRW
@Type    : STC - Stactic
@Name    : Enviar
@Author  : Cristian Silva Santana
@Date    : 27/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Envio de email.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/
	
Static Function Enviar(_cTipo) 	
	Local _lExec
	Local _oWorkflow
	Local _cMsgExp 
	Local _cMsgCab 
	
	If _cTipo = 'Fim'
		_cMsgExp := 'foi finalizada'
		_cMsgCab := 'Tarefa Finalizada'
	Else 
		_cMsgExp := 'pode ser iniciada.'
		_cMsgCab := 'Tarefa Liberada'	
	End If
	
	_oWorkflow:=TWFProcess():New("000001", "Workflow - ") 
	_oWorkflow:NewTask("Workflow de budget","\tower\html\totvs.htm")                      
	_oWorkflow:cFromName  := 'Project Manager'
	_oWorkflow:cFromAddr  := 'cristiantcjti@gmail.com'
	_oWorkflow:cSubject   := 'Teste de e-mail'
	_oWorkflow:cTo        := 'cristiantcjtitests@gmail.com'
	_oWorkflow:NewVersion(.T.)
	_oWorkflow:bReturn    := ""                       
	_oHtml := _oWorkflow:oHTML 
	_oHtml:ValByName("Explanation","A tarefa "+AF9->AF9_DESCRI+" do projeto "+AF9->AF9_PROJET+" "+_cMsgExp)                                             
	_oHtml:ValByName("Header",_cMsgCab +"!")
	_lExec:=_oWorkflow:Start()           
	_oWorkflow:Free()
	_oWorkflow:= Nil
Return .T.

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS725.PRW
@Type    : STC - Stactic
@Name    : WorkFlowIni
@Author  : Cristian Silva Santana
@Date    : 27/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Query para definiУЇУЃo da prУГxima tarefa a ser executada.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Static Function WorkFlowIni()                                                    
	Local _cQuery := ''
	Local _cEnter := chr(13)+chr(10)
	Local _oWorkflow      
	Local _cAlias := GetNextAlias()
	_cQuery := _cEnter + " SELECT AF9_FILIAL AS FILIAL,AF9_PROJET AS PROJETO,AF9_REVISA AS REVISAO, MIN(AF9_TAREFA) AS TAREFA,AF8_XWFTAR AS XWFTAR "
	_cQuery += _cEnter + " FROM "+RetSqlName('AF9')+" AF9 "
	_cQuery += _cEnter + " INNER JOIN "+RetSqlName('AF8')+" AF8 ON "  
	_cQuery += _cEnter + " AF9.AF9_FILIAL = '"+xFilial('AF9')+"' AND "
	_cQuery += _cEnter + " AF9.AF9_FILIAL = AF8.AF8_FILIAL AND "
	_cQuery += _cEnter + " AF9.AF9_PROJET = AF8.AF8_PROJET AND "
	_cQuery += _cEnter + " AF9.AF9_REVISA = AF8.AF8_REVISA AND "
	_cQuery += _cEnter + " AF9.AF9_DTATUF = ' ' AND "
	_cQuery += _cEnter + " AF9.D_E_L_E_T_<> '*' AND "
	_cQuery += _cEnter + " AF8.D_E_L_E_T_<> '*' "
	_cQuery += _cEnter + " GROUP BY AF9_FILIAL,AF9_PROJET,AF9_REVISA,AF8_XWFTAR "
	DbUseArea(.T.,"TOPCONN",TcGenQry(,,_cQuery),_cAlias,.F.,.T.)
    _lEnviado := .F.
    If !(_cAlias)->(eof())
		Do While !(_cAlias)->(eof())
			If AF9->(DbSeek(xFilial('AF9') + (_cAlias)->PROJETO + (_cAlias)->REVISAO + (_cAlias)->TAREFA))
				If Alltrim((_cAlias)->XWFTAR) <> Alltrim((_cAlias)->TAREFA)
					Enviar('Inicio')
					_lEnviado := .T.
					AF9->(RecLock('AF9',.F.)) 
					AF9->AF9_XWRKIN := 'S'
					AF9->(MsUnLock())
					AF8->(DbSetOrder(8)) 
					If AF8->(DbSeek(xFilial('AF8') + (_cAlias)->PROJETO + (_cAlias)->REVISAO)) 
						AF8->(RecLock('AF8',.F.)) 
						AF8->AF8_XWFTAR := (_cAlias)->TAREFA
						AF8->(MsUnLock())
					End If
				End If
			End If	  
			(_cAlias)->(dbSkip())
		End Do
		If _lEnviado
			WFSendMail({"99","01"}) //SEND THE EMAIL'S LIST                                    	
		End If
	End IF
    (_cAlias)->(DbCloseArea())
	DbSelectArea('SX2')		
Return

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS725.PRW
@Type    : STC - Stactic
@Name    : SetColbmp
@Author  : Cristian Silva Santana
@Date    : 27/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Query para pegar todos os projetos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Static Function SetColbmp()
	Local _x1     := 0
	Private aPrj  := {}
	
	TakePrjs()
	For _x1 := 1 to Len(aPrj)
		SetCol(_x1,CheckPrj(_x1))
	Next _x1
Return
	

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS725.PRW
@Type    : STC - Stactic
@Name    : TakePrjs
@Author  : Cristian Silva Santana
@Date    : 27/02/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Query para pegar todos os projetos.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Static Function TakePrjs()
	Local _cProj   := ''
	Local _cAlias  := GetNextAlias()

	BEGINSQL ALIAS _cAlias
		SELECT AF8_PROJET AS PROJETOS, AF8_REVISA AS REVISAO 
		FROM %table:AF8% AF8
		WHERE 
		AF8.AF8_FILIAL = %xFilial:AF8% AND
		AF8.%notdel%  
	ENDSQL
	Do While !(_cAlias)->(eof())
		If _cProj <> (_cAlias)->PROJETOS 
			aAdd(aPrj,{(_cAlias)->PROJETOS,(_cAlias)->REVISAO})
			_cProj := (_cAlias)->PROJETOS   
		End If
		(_cAlias)->(DbSkip())
	End Do
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2')
Return
/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS725.PRW
@Type    : STC - Stactic
@Name    : CheckPrj
@Author  : Cristian Silva Santana
@Date    : 18/05/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Query para definiУЇУЃo de status de cada projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Static Function CheckPrj(_x1)
	Local _dDate   := DATE()
	Local _cHora   := SubStr(TIME(),1,5)
	Local _cColbmp := ''
	local _cQuery  := ''
	Local _cEnter  := chr(13)+chr(10)
	Local _cAlias  := GetNextAlias()

	_cQuery := _cEnter + " SELECT AF9_PROJET AS PROJETO, AF9_REVISA AS REVISAO, AF9_START AS INICIO, AF9_FINISH AS FIM,AF9_DTATUF AS FINALIZADO, AF9_HORAI AS HORAI, AF9_HORAF AS HORAF "
	_cQuery += _cEnter + " FROM "+RetSqlName('AF9')+" AF9 "
	_cQuery += _cEnter + " INNER JOIN "+RetSqlName('AF8')+" AF8 ON " 
	_cQuery += _cEnter + " AF9.AF9_FILIAL = '"+xFilial('AF9')+"' AND " 
	_cQuery += _cEnter + " AF9.AF9_FILIAL = AF8.AF8_FILIAL AND "
	_cQuery += _cEnter + " AF9.AF9_PROJET = AF8.AF8_PROJET AND "
	_cQuery += _cEnter + " AF9.AF9_REVISA = AF8.AF8_REVISA AND "
	_cQuery += _cEnter + " AF9.AF9_PROJET = '"+aPrj[_x1][1]+"' AND
	_cQuery += _cEnter + " AF9.AF9_REVISA     = '"+aPrj[_x1][2]+"' AND
	_cQuery += _cEnter + " AF8.D_E_L_E_T_<>'*' AND "
	_cQuery += _cEnter + " AF9.D_E_L_E_T_<>'*'"
	_cQuery += _cEnter + " ORDER BY PROJETO "
	DbUseArea(.T.,"TOPCONN",TCGENQRY(,,_cQuery),_cAlias,.F.,.T.)
	Do while !(_cAlias)->(eof())
		If !Empty((_cAlias)->FINALIZADO)// CHECKING IF TASK IS EXECUTED 
			_cColbmp := '1'       		//=1 // GREEN
		Else
			If (_dDate > STOD((_cAlias)->FIM) .or. (_dDate = STOD((_cAlias)->INICIO) .and. _dDate = STOD((_cAlias)->FIM) .and. _cHora >= (_cAlias)->HORAF)) // CHECKING IF TASK'S START IS LATE	   						// CHECKING IF TASK IS LATE  
				_cColbmp := '3'	        //=3 // RED								
			ElseIf ((_dDate > STOD((_cAlias)->INICIO) .and. _dDate < STOD((_cAlias)->FIM)) .or. (_dDate = STOD((_cAlias)->INICIO) .and. _cHora >= (_cAlias)->HORAI))	// CHECKING IF TASK'S START IS LATE
				_cColbmp := '2'         //=2 // YELLOW							
			Else
				_cColbmp := '4'         //=1 // BLUE 	   							
			End If
			Exit
		End If 
		(_cAlias)->(DbSkip())
	End Do
	(_cAlias)->(dbCloseArea())
	dbSelectArea('SX2')
Return _cColbmp

/*/
лObject Detailллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Title   : CRS725.PRW
@Type    : STC - Stactic
@Name    : CheckPrj
@Author  : Cristian Silva Santana
@Date    : 18/05/2020
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Descriptions
Query para definiУЇУЃo de status de cada projeto.
Descriptions@
ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@Return
Return@
лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллObject Detailл
/*/ 

Static Function SetCol(_nPos,_cColbmp)
	Local _cCodPrj := aPrj[_nPos][1]
	Local _cCodRev := aPrj[_nPos][2]
	
	AF8->(DbSetorder(8))
	If AF8->(DbSeek(xFilial('AF8')+ _cCodPrj + _cCodRev))
		AF8->(RecLock('AF8',.F.))
		AF8->AF8_XCOLBM := _cColbmp
		AF8->(MsUnlock())
	Else 
		Return .F.
	End If
//	oMain:Atualizar()
Return
//ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл	

