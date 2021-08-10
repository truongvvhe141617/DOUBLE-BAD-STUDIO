package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Blog | E-Shopper</title>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/price-range.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/animate.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"js/html5shiv.js\"></script>\n");
      out.write("        <script src=\"js/respond.min.js\"></script>\n");
      out.write("        <![endif]-->       \n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/ico/favicon.ico\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("    </head><!--/head-->\n");
      out.write("    <body>\n");
      out.write("       \t<header id=\"header\">\n");
      out.write("                        <div class=\"header_top\">\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-sm-6\">\n");
      out.write("                                                        <div class=\"contactinfo\">\n");
      out.write("                                                                <ul class=\"nav nav-pills\">\n");
      out.write("                                                                        <li><a href=\"\"><i class=\"fa fa-phone\"></i> +84 942783802</a></li>\n");
      out.write("                                                                        <li><a href=\"\"><i class=\"fa fa-envelope\"></i>truongvvhe141617@fpt.edu.vn</a></li>\n");
      out.write("                                                                </ul>\n");
      out.write("                                                        </div>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"col-sm-6\">\n");
      out.write("                                                        <div class=\"social-icons pull-right\">\n");
      out.write("                                                                <ul class=\"nav navbar-nav\">\n");
      out.write("                                                                        <li><a href=\"https://www.facebook.com/pee.truong29/\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                                                                        <li><a href=\"\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                                                                        <li><a href=\"\"><i class=\"fa fa-linkedin\"></i></a></li>\n");
      out.write("                                                                        <li><a href=\"\"><i class=\"fa fa-dribbble\"></i></a></li>\n");
      out.write("                                                                        <li><a href=\"\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("                                                                </ul>\n");
      out.write("                                                        </div>\n");
      out.write("                                                </div>\n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("        <div class=\"header-middle\"><!--header-middle-->\n");
      out.write("            <div class=\"container\" >\n");
      out.write("                \n");
      out.write("                <div class=\"row\" >\n");
      out.write("                    <div class=\"col-sm-4\">\n");
      out.write("                        <div class=\"logo pull-left \" \n");
      out.write("                             >\n");
      out.write("                            <a href=\"home\"><img src=\"//theme.hstatic.net/1000351433/1000669365/14/logo.png?v=243\" alt=\"\" style=\"max-width: 300%;vertical-align: middle;margin-left: 45px;\"  /></a>\n");
      out.write("                        </div>\n");
      out.write("                     \n");
      out.write("                        <!--\t\t\t\t\t\t\n");
      out.write("                        --></div>\n");
      out.write("                    <div class=\"col-sm-8\" style=\"margin-left: 50px;float: right;\">\n");
      out.write("                        <div class=\"shop-menu pull-right\">\n");
      out.write("                            <ul class=\"nav navbar-nav\"  >\n");
      out.write("                                <li><a href=\"home\"><i class=\"fa fa-home\"></i>Home</a></li>\n");
      out.write("                                ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                               \n");
      out.write("                                ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                             \n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div><!--\n");
      out.write("                header-middle-->\n");
      out.write("\n");
      out.write("        <div class=\"header-bottom\"><!--header-bottom-->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-9\">\n");
      out.write("\n");
      out.write("                        <div class=\"mainmenu pull-left\">\n");
      out.write("                            <ul class=\"nav navbar-nav collapse navbar-collapse\">\n");
      out.write("                                <li><a href=\"\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.active}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                   <div class=\"col-sm-3\">\n");
      out.write("                            <div class=\"pull-right\">\n");
      out.write("                                <form action=\"search\" method=\"post\">\n");
      out.write("                                    <div class=\"search_box\">\n");
      out.write("                                        <input type=\"text\" name=\"txtSearch\" placeholder=\"Search\"/>\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-default search_box\" \n");
      out.write("                                                style=\"height: 35px; margin-top: -1px; margin-left: -30px; border: none; background: #F0F0E9;\">\n");
      out.write("                                            <i class=\"fa fa-search\"></i>\n");
      out.write("                                        </button>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div><!--/header-bottom-->\n");
      out.write("    </header><!--/header-->\n");
      out.write("\n");
      out.write("    <script src=\"js/jquery.js\"></script>\n");
      out.write("    <script src=\"js/price-range.js\"></script>\n");
      out.write("    <script src=\"js/jquery.scrollUp.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script> \n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write(" ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.user == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                     <li><a href=\"login.jsp\"><i class=\"fa fa-lock\"></i> Login</a></li>\n");
        out.write("                                      <li><a href=\"login.jsp\"><i class=\"fa fa-shopping-cart\"></i> Cart</a></li>\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.user != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                <li><a href=\"logout\"><i class=\"fa fa-lock\"></i>Logout</a></li>\n");
        out.write("                                <li><a href=\"order\"><i class=\"fa fa-user\"></i>Hello ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.user.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</a></li>\n");
        out.write("                                 <li><a href=\"cart\"><i class=\"fa fa-shopping-cart\"></i> Cart</a></li>\n");
        out.write("                                ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }
}
