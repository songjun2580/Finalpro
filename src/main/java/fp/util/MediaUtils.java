package fp.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;

//업로드한 파일중 이미지 파일만 거르는 클래스
public class MediaUtils {

	private static Map<String, MediaType> mediaMap;
	
	static {
		mediaMap = new HashMap<String, MediaType>();
		mediaMap.put("JPG", MediaType.IMAGE_JPEG);
		mediaMap.put("GIF", MediaType.IMAGE_GIF);
		mediaMap.put("PNG", MediaType.IMAGE_PNG);
	}//
	
	public static MediaType getMediaType(String fileName) {
		String formatName = getFormatName(fileName);
		return mediaMap.get(formatName);
	}	
	//파일 확장자 추출
	public static String getFormatName(String fileName) {
		return fileName.substring(fileName.lastIndexOf(".")+1).toUpperCase();
	}
	
}
