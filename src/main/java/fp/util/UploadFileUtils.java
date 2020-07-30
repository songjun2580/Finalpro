package fp.util;

import java.io.File;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.MediaType;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;


public class UploadFileUtils {

	//���� ���ε�
		public String uploadFile(MultipartFile file, HttpServletRequest request) {
			
			try {
				
			
			String originalFileName=file.getOriginalFilename(); //file name
			byte[] fileData = file.getBytes(); //file data
			
			//���ϸ� �ߺ� ���� ó��
			String uuidFileName=getUuidFileName(originalFileName);
			
			// ���� ���ε� ��� ����
			String rootPath = getRootPath(originalFileName, request);  //�⺻��� ����
			makeDir(rootPath,request);
			 
			// ������ ���� ����
			File target = new File(rootPath,uuidFileName);
			FileCopyUtils.copy(fileData, target);
			
			
			/* String uploadedFileName = null;
			// �̹��������� ��� ������̹��� ����
			if(MediaUtils.getMediaType(originalFileName)!=null) {
				uuidFileName=makeThumbnail(rootPath, datePath, uuidFileName);
			}*/
			
			//���� ���� ��� ġȯ
			return replaceSavedFilePath(rootPath, uuidFileName);
			
			} catch (Exception e) {
				e.printStackTrace();
				return "e.printStackTrace()";
			}
			
			
			
		}
		
		//�⺻ ��� ����
		public static String getRootPath(String fileName, HttpServletRequest request) {
			
			String rootPath="/resources/upload";
			MediaType mediaType = MediaUtils.getMediaType(fileName); //����Ÿ�� Ȯ�� 
			//�̹��� ����
			if(mediaType!=null) return request.getSession().getServletContext().getRealPath(rootPath+ File.separator +"images");
			
			//�Ϲ�����
			return request.getSession().getServletContext().getRealPath(rootPath+ File.separator +"files");
			
		}
		//���ϸ� �ߺ�����
		private static String getUuidFileName(String originalFileName) {
			return UUID.randomUUID().toString()+"_"+originalFileName;
		}
		
		//��� ��ġ��
		private static String replaceSavedFilePath(String rootPath,String fileName) {
			String savedFilePath = rootPath+File.separator+fileName;
			return savedFilePath.replace(File.separatorChar, '/');
		}
		
		//���� �����ϱ�
		public static void deleteFile(String fileName,HttpServletRequest request) {
			String rootPath= getRootPath(fileName, request);
			
			//���� �̹������� ����
			new File(rootPath + fileName.replace('/', File.separatorChar)).delete();
			
		}
		
		/*
		//��¥ ������ ����
		private static String getDatePath(String uploadPath) {
			
			Calendar calendar = Calendar.getInstance();
			String yearPath= File.separator+calendar.get(Calendar.YEAR);
			String monthPath= yearPath+ File.separator + new DecimalFormat("00").format(calendar.get(Calendar.MONTH)+1);
			String datePath = monthPath+ File.separator+new DecimalFormat("00").format(calendar.get(Calendar.DATE));
			
			makeDateDir(uploadPath,yearPath,monthPath,datePath);
			return datePath;
			
		}
		
		*/
		//���� ���� �Լ�
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
		//����� �̹��� ����
		private static String makeThumbnail(String uploadRootPath, String datePath, String fileName) throws Exception {
			
			//�����̹����� �޸𸮻� �ε�
			BufferedImage sourceImg = ImageIO.read(new File(uploadRootPath+datePath, fileName));
			//�����̹����� ���
			BufferedImage thumbnailImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
			//����� ���ϸ�
			String thumbnailName = "s_" + fileName;
			//�����  ���ε� ���
			String fullPath= uploadRootPath + datePath+ File.separator + thumbnailName;
			// ����� ���� ��ü ����
			File newFile = new File(fullPath);
			// ����� ���� Ȯ���� ����
			String formatName = MediaUtils.getFormatName(fileName);
			// ����� ���� ����
			ImageIO.write(thumbnailImg, formatName, newFile);

			return thumbnailName;
		}
		
		*/
		
		
	
}
