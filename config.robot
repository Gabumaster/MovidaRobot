*** Settings ***
Library        SeleniumLibrary
Library        FakerLibrary        locale=pt_BR   

*** Variables ***

${cpf}        	
${nome}       	
${telnumero}  	
${datanasc}   	
${telefone}  	
${celular}   	
${email}       	
${confemail} 	
${cep} 			
${logradouro} 	
${numlgrd} 		
${complemento} 	
${bairro} 		
${senha}

*** Keywords ***

Inicializa Teste

    ${cpf}   		Cpf
    ${nome}  		Name
    ${telnumero}    Phone Number	
    ${datanasc}   	Date Of Birth
    ${telefone}  	Phone Number
    ${celular}   	Phone Number
    ${email}       	Email
    ${confemail} 	Set Variable        ${email}
    ${cep}          Postcode			
    ${logradouro} 	Street Name
    ${numlgrd} 		Building Number
    ${complemento} 	Address
    ${bairro} 		State Abbr
    ${senha}        Password
    
    Open Browser        https://www.movida.com.br        chrome
    Maximize Browser Window

Fecha Navegador
    Close Browser