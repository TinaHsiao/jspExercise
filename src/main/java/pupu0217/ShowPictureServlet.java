package pupu0217;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowPictureServlet
 */
@WebServlet("/ShowPicture.do")
public class ShowPictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
		String[] sa = {"fs.jpg","m001.jpg","m12.jpg","m46.jpg","m536.jpg","Monterey_Butterflies.jpg"};
		List<String> list = null;
		
	synchronized protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(list == null || list.size()==0){			//表示list內沒有元素
			list = new ArrayList(Arrays.asList(sa));
			System.out.println("新建List物件");		//觀察用	
		}
		int idx = (int)(Math.random()*sa.length);
		String filename = list.get(idx);			//取出list內的某個元素
		list.remove(idx);							//移除標註是idx的元素.list的size會減1
		
		ServletContext context = getServletContext();
		String mimeType = context.getMimeType(filename);
		response.setContentType(mimeType);
		try(
			InputStream is = context.getResourceAsStream("/images/"+filename);
			OutputStream os = response.getOutputStream();
			){
			
			byte[] b = new byte[8192];			//水桶大小 []一定要給值
			int len = 0;
			while((len = is.read(b))!=-1){
				os.write(b, 0, len);			//把圖寫到網頁  口訣: A.O.L.;Array,offset,length
			}
		}
	}

}
