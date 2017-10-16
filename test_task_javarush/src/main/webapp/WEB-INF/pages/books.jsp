<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Books Page</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>

<br/>

<h1><a href="/books" >Book List</a></h1>






<c:url var="post_url"  value="/books" />
<form:form commandName="book" method="get" action="${post_url}">

    <label for="searchTitle">Title search</label>
    <form:input path="searchTitle" id="searchTitle" value="${searchTitle}"  />

</form:form>

<c:if test="${empty book.bookTitle}">
<c:if test="${empty searchTitle}">
    <label>Pages:</label>
    <c:forEach begin="${startpage}" end="${endpage}" var="p">
        <a href="<c:url value="/books?searchTitle=${searchTitle}" ><c:param name="page" value="${p}"/>${p}</c:url>"> ${p} </a>
    </c:forEach>
</c:if>

<c:if test="${!empty searchTitle}">
    Search Result:
    <br>
</c:if>

<c:if test="${!empty listBooks}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Title</th>
            <th width="120">Description</th>
            <th width="120">Author</th>
            <th width="120">ISBN</th>
            <th width="120">PrintYear</th>
            <th width="120">ReadAlready</th>
            <th width="60">Update</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listBooks}" var="book">
            <tr>
                <td>${book.id}</td>
                <td>${book.bookTitle}</td>
                <td>${book.bookDescription}</td>
                <td>${book.bookAuthor}</td>
                <td>${book.bookIsbn}</td>
                <td>${book.printYear}</td>
                <c:if test="${book.readAlready == 1}">
                    <td>YES</td>
                </c:if>
                <c:if test="${book.readAlready == 0}">
                    <td ><span style="white-space: nowrap">NO, <a href="<c:url value='/read/${book.id}?page=${page}&searchTitle=${searchTitle}'/>">Read</a></span>

                    </td>


                </c:if>
                <td><a href="<c:url value='/edit/${book.id}/${page}?&searchTitle=${searchTitle}'/>">Update</a></td>
                <td><a href="<c:url value='/remove/${book.id}?page=${page}&searchTitle=${searchTitle}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</c:if>

<c:if test="${!empty book.bookTitle}">
    <h1>Update Book</h1>
</c:if>
<c:if test="${empty book.bookTitle}">
    <h1>Create a Book</h1>
</c:if>



<c:url var="addAction" value="/books/add?page=${page}&searchTitle=${searchTitle}"/>

<form:form action="${addAction}" commandName="book">
    <table>
        <c:if test="${!empty book.bookTitle}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="bookTitle">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookTitle"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookDescription">
                    <spring:message text="Description"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookDescription"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookAuthor">
                    <spring:message text="Author"/>
                </form:label>
            </td>
            <td>


                <c:if test="${!empty book.bookTitle}">
                    <form:input path="bookAuthor" readonly="true" size="20" disabled="true"/>
                    <form:hidden path="bookAuthor"/>
                </c:if>
                <c:if test="${empty book.bookTitle}">
                    <form:input path="bookAuthor"/>
                </c:if>


            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bookIsbn">
                    <spring:message text="Isbn"/>
                </form:label>
            </td>
            <td>
                <form:input path="bookIsbn"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="printYear">
                    <spring:message text="PrintYear"/>
                </form:label>
            </td>
            <td>
                <form:input path="printYear"/>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <c:if test="${!empty book.bookTitle}">
                    <input type="submit"
                           value="<spring:message text="Update Book"/>"/>
                </c:if>
                <c:if test="${empty book.bookTitle}">
                    <input type="submit"
                           value="<spring:message text="Create Book"/>"/>
                </c:if>
                &nbsp; &nbsp; <input type="button" value="Cancel" onClick='location.href="/books?page=${page}&searchTitle=${searchTitle}"'>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
