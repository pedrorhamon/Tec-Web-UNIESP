<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_template>
	
	<jsp:attribute name="content">
		
		<div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
   				<c:if test="${not empty sucesso}">
   					<div class="alert alert-success">${sucesso}</div>
   				</c:if>
            </div>
            
            <div class="table table-responsive table-striped table-hover">
                    <table class="table">
                      <thead class=" text-primary">
                       	  <th scope="col">ID</th>
					      <th scope="col">Nome</th>
					      <th scope="col">E-mail</th>
					      <th scope="col">Remover</th>
					      <th scope="col">Editar</th>
                      </thead>
                      <tbody>
                        <c:forEach var="contato" items="${contatos}">
                        	<tr>
                        		<td><c:out value="${contato.id}"></c:out></td>
                        		<td><c:out value="${contato.nome}"></c:out></td>
                        		<td><c:out value="${contato.email}"></c:out></td>
                        		
                        		
                        		<td>
                        			<a class="btn btn-danger" 
                        					href="${pageContext.request.contextPath}/contatosServlet?id=${contato.id}&acao=remover">
                        					<c:out value="Remover"/>
                        			</a>
                        		</td>
                        		
                        		
                        		
                        		<td>Editar</td>
                        	</tr>
                   
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
            
          </div>
        		
	</jsp:attribute>
		
</mt:admin_template>