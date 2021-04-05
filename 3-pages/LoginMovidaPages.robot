*** Settings ***
Resource       ../config.robot 

*** Variables ***

${usermenu}     		xpath=//div[@class='name-user-menu']
${linkout}      		xpath=a[class="user-menu-link-out"]
${controlcpf}   		xpath=input[class="form-control cpf"]
${nome}         		xpath=input[id="nome"]
${feminino}     		xpath=label[for="feminino"]
${datanasc}     		xpath=input[id="data_nasc"]
${telefone}     		xpath=input[id="telefone"] 
${celular}      		xpath=input[id="celular"]
${e-mail}        		xpath=(//input[@id="email"])[1]
${emailconf}    		xpath=input[id="email_conf"] 
${cep}          		xpath=input[id="cep"]
${logradouro}   		xpath=input[id="logradouro"] 
${numero}       		xpath=input[id="numero"] 
${complemento}  		xpath=input[id="complemento"] 
${bairro}       		xpath=input[id="bairro"]
${pais}         		xpath=select[id="Pais"]
${valor1}       		xpath=option[value="1"]
${ufsel}        		xpath=select[id="uf_sel"]
${sp}           		xpath=option[value="SP"]
${cidadesel}    		xpath=select[id="cidade_sel"]
${cid}          		xpath=option[value="3537909"]
${senhacadastro}		xpath=input[id="senha_cadastro"]
${senhaconf}    		xpath=input[id="senha_conf"] 
${enviadados}   		xpath=button[id="btnEnviaDados"]
${alert}        		xpath=div[class="alert alert-warning"]

*** Keywords ***   

PreencheDados
    Wait Until Element Is Visible    ${usermenu}    30
    Sleep               1
    Click Element    	${usermenu}     
    Click Element    	${linkout}      
    Input Text       	${controlcpf}		${cpf}
    Input Text       	${nome}      		
    Click Element    	${feminino}  		
    Input Text 			${datanasc}  		
    Input Text 			${telefone}  		
    Input Text 			${celular}   		
    Input Text 			${e-mail}    		${email}        
    Input Text 			${emailconf} 		${email}  
    Input Text			${cep}          
    Input Text			${logradouro}   
    Input Text			${numero}       
    Input Text			${complemento}  
    Input Text			${bairro}       
    Click Element		${pais}         
    Click Element		${valor1}       
    Click Element		${ufsel}        
    Click Element		${sp}           
    Click Element		${cidadesel}    
    Click Element		${cid}       


Senha
    Input Text           ${senhacadastro}
    Click Element        ${senhaconf}   


Finalizacao
    Click Element                        ${enviadados}   
    Wait Until Element Is Visible        ${alert}        30