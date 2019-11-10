<%@ page contentType="image/jpeg"
         import="java.awt.*,java.awt.image.*,java.util.*,javax.imageio.*"%>
<%!Color getRandColor(int fc, int bc) {//
    Random random = new Random();
    if (fc > 255)
        fc = 255;
    if (bc > 255)
        bc = 255;
    int r = fc + random.nextInt(bc - fc);
    int g = fc + random.nextInt(bc - fc);
    int b = fc + random.nextInt(bc - fc);
    return new Color(r, g, b);
}%>
<%
    //
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
    //
    int width = 60, height = 20;
    BufferedImage image = new BufferedImage(width, height,
            BufferedImage.TYPE_INT_RGB);

    //
    Graphics g = image.getGraphics();

    //
    Random random = new Random();

    //
    g.setColor(getRandColor(200, 250));
    g.fillRect(0, 0, width, height);

    //
    g.setFont(new Font("Times New Roman", Font.PLAIN, 18));

    //
    //g.setColor(new Color());
    //g.drawRect(0,0,width-1,height-1);

    //
    g.setColor(getRandColor(160, 200));
    for (int i = 0; i < 155; i++) {
        int x = random.nextInt(width);
        int y = random.nextInt(height);
        int xl = random.nextInt(12);
        int yl = random.nextInt(12);
        g.drawLine(x, y, x + xl, y + yl);
    }

    //
    String sRand = "";
    java.util.List<String> list= new ArrayList<>();
    String[] ra = {"1","2","3","4","5","6","7","8","9",
            "A","B","C","D","E","F","G","H","I","J","K","L", "M","N","P","Q","R","S","T","U","V","W","X","Y","Z",
            "a","b","c","d","e","f","g","h","i","j","k","l","m","n","p","q","r","s","t","u","v","w","x","y","z"};
    for (int i = 0; i < 4; i++) {
        String rand = ra[random.nextInt(61)];
        sRand += rand;
        //
        g.setColor(new Color(20 + random.nextInt(110), 40 + random
                .nextInt(110), 60 + random.nextInt(110)));
        //
        g.drawString(rand, 13 * i + 6, 16);
    }

    // SESSION
    session.setAttribute("verifyCode", sRand);

    //
    g.dispose();

    //
    ImageIO.write(image, "JPEG", response.getOutputStream());
    out.clear();
    out = pageContext.pushBody();
%>
