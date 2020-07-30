package fp.util;

import java.io.File;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.MediaType;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;


public class UploadFileUtils {

	//파일 업로드
		public String uploadFile(MultipartFile file, HttpServletRequest request) {
			
			try {
				
			
			String originalFileName=file.getOriginalFilename(); //file name
			byte[] fileData = file.getBytes(); //file data
			
			//파일명 중복 방지 처리
			String uuidFileName=getUuidFileName(originalFileName);
			
			// 파일 업로드 경로 설정
			String rootPath = getRootPath(originalFileName, request);  //기본경로 추출
			makeDir(rootPath,request);
			 
			// 서버에 파일 저장
			File target = new File(rootPath,uuidFileName);
			FileCopyUtils.copy(fileData, target);
			
			
			/* String uploadedFileName = null;
			// 이미지파일일 경우 썸네일이미지 생성
			if(MediaUtils.getMediaType(originalFileName)!=null) {
				uuidFileName=makeThumbnail(rootPath, datePath, uuidFileName);
			}*/
			
			//파일 저장 경로 치환
			return replaceSavedFilePath(rootPath, uuidFileName);
			
			} catch (Exception e) {
				e.printStackTrace();
				return "e.printStackTrace()";
			}
			
			
			
		}
		
		//기본 경로 추출
		public static String getRootPath(String fileName, HttpServletRequest request) {
			
			String rootPath="/resources/upload";
			MediaType mediaType = MediaUtils.getMediaType(fileName); //파일타비 확인 
			//이미지 파일
			if(mediaType!=null) return request.getSession().getServletContext().getRealPath(rootPath+ File.separator +"images");
			
			//일반파일
			return request.getSession().getServletContext().getRealPath(rootPath+ File.separator +"files");
			
		}
		//파일명 중복방지
		private static String getUuidFileName(String originalFileName) {
			return UUID.randomUUID().toString()+"_"+originalFileName;
		}
		
		//경로 합치기
		private static String replaceSavedFilePath(String rootPath,String fileName) {
			String savedFilePath = rootPath+File.separator+fileName;
			return savedFilePath.replace(File.separatorChar, '/');
		}
		
		//파일 삭제하기
		public static void deleteFile(String fileName,HttpServletRequest request) {
			String rootPath= getRootPath(fileName, request);
			
			//원본 이미지파일 삭제
			new File(rootPath + fileName.replace('/', File.separatorChar)).delete();
			
		}
		
		/*
		//날짜 폴더명 추출
		private static String getDatePath(String uploadPath) {
			
			Calendar calendar = Calendar.getInstance();
			String yearPath= File.separator+calendar.get(Calendar.YEAR);
			String monthPath= yearPath+ File.separator + new DecimalFormat("00").format(calendar.get(Calendar.MONTH)+1);
			String datePath = monthPath+ File.separator+new DecimalFormat("00").format(calendar.get(Calendar.DATE));
			
			makeDateDir(uploadPath,yearPath,monthPath,datePath);
			return datePath;
			
		}
		
		*/
		//폴더 생성 함수
		private void makeDir(String uploadPath,HttpServletRequest req) {
			
			String rootPath="/resources/upload";			
			String rootDir=req.getSession().getServletContext().getRealPath(rootPath);
			File dirRootPath=new File(rootDir);
			File dirPath = new File(uploadPath);
			
			if(dirRootPath.exists()) {				
				if(dirPath.exists()){
					return;
				}
				dirPath.mkdir();
			}else {
				dirRootPath.mkdir();
				if(dirPath.exists()){
					return;		
				}
				dirPath.mkdir();
			}
			
		}
		
		/*	
		//썸네일 이미지 생성
		private static String makeThumbnail(String uploadRootPath, String datePath, String fileName) throws Exception {
			
			//원본이미지를 메모리상에 로딩
			BufferedImage sourceImg = ImageIO.read(new File(uploadRootPath+datePath, fileName));
			//원본이미지를 축소
			BufferedImage thumbnailImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
			//썸네일 파일명
			String thumbnailName = "s_" + fileName;
			//썸네일  업로드 경로
			String fullPath= uploadRootPath + datePath+ File.separator + thumbnailName;
			// 썸네일 파일 객체 생성
			File newFile = new File(fullPath);
			// 썸네일 파일 확장자 추출
			String formatName = MediaUtils.getFormatName(fileName);
			// 썸네일 파일 저장
			ImageIO.write(thumbnailImg, formatName, newFile);

			return thumbnailName;
		}
		
		*/
		
		
	
}
