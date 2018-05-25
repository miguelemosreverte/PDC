<%@ attribute name="exampleAttribute" required="true" type="java.lang.String" description="Example attribute" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:out value="This is a custom tag and JSTL"></c:out>
<c:out value="And this is EL ${1+2}"/>