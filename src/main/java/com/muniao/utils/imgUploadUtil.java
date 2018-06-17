package com.muniao.utils;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;


/**
 * -- 夏冰 创建于 2018-06-06 10:40
 * -- 图片文件上传工具类
 *
 * -- 后期根据需要进行扩展（例如uuid 图片存数据库等）
 * -- 图片服务器根目录 /var/www/html
 * -- 具体使用 参考测试
 */
public class imgUploadUtil {

    /**
     * 图片上传
     * @param mFile         上传的文件
     * @param ftpDirName    ftp服务器 子目录名称（为空则为根目录）
     * @param ftpFileName   上传后 文件在ftp服务器端的名称
     * @return 返回上传状态
     * @throws IOException 抛出异常
     */
    public static boolean upload(MultipartFile mFile, String ftpDirName, String ftpFileName) throws IOException {
        CommonsMultipartFile cFile = (CommonsMultipartFile) mFile;
        DiskFileItem fileItem = (DiskFileItem) cFile.getFileItem();
        InputStream inputStream = fileItem.getInputStream();
        FTPClient ftp = new FTPClient();
        ftp.connect("39.105.123.156",21);
        boolean login = ftp.login("muniaoftp","123456");

        int replyCode = ftp.getReplyCode();
        if (!FTPReply.isPositiveCompletion(replyCode)) {
            return false;
        }
        ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
        ftp.makeDirectory(ftpDirName);
        ftp.changeWorkingDirectory(ftpDirName);
        ftp.storeFile(ftpFileName, inputStream);
        ftp.logout();
        return true;
    }

    /**
     * 图片上传 方式二
     * @param localFilePath 本地文件全路径
     * @param ftpDirName    ftp服务器 子目录名称（为空则为根目录）
     * @param ftpFileName   上传后 文件在ftp服务器端的名称
     * @return 返回上传状态
     * @throws IOException 抛出异常
     */
    public static boolean uploadLocal(String localFilePath,String ftpDirName,String ftpFileName) throws IOException {
        FileInputStream inputStream = new FileInputStream(localFilePath);
        FTPClient ftp = new FTPClient();
        ftp.connect("39.105.123.156",21);
        boolean login = ftp.login("muniaoftp","123456");

        int replyCode = ftp.getReplyCode();
        if (!FTPReply.isPositiveCompletion(replyCode)) {
            return false;
        }
        ftp.setFileType(FTPClient.BINARY_FILE_TYPE);
        ftp.makeDirectory(ftpDirName);
        ftp.changeWorkingDirectory(ftpDirName);
        ftp.storeFile(ftpFileName, inputStream);
        ftp.logout();
        return true;
    }
}
