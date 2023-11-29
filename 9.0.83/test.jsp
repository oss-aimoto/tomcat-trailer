<%@ page import="java.util.Map" %>
<%
    String post_data = request.getParameter("foo");
    out.println("request.getParameter(\"foo\"): [" + post_data + "]");

    if (!request.isTrailerFieldsReady()) {
        out.println("request.isTrailerFieldsReady() is false");
        return;
    }
    String tname = "testaimoto";
    Map<String, String> trailers = request.getTrailerFields();
    out.println(tname + ": [" + trailers.get(tname) + "]");
%>

