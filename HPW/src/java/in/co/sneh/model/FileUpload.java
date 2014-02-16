/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package in.co.sneh.model;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.fileupload.FileItemStream;

/**
 *
 * @author user
 */
public class FileUpload {
    public static boolean processFile(String path, FileItemStream item){
       try{ 
            File f = new File(path+File.separator+"images");
            if(!f.exists())f.mkdir();
            File savedFile = new File(f.getAbsolutePath()+File.separator+item.getName());
            FileOutputStream fos = new FileOutputStream(savedFile);
            InputStream is = item.openStream();
            
            int x = 0;
            byte[] b = new byte[1024];
            while((x=is.read(b))!=-1){
                fos.write(b, 0, x);
            }
            fos.flush();
            fos.close();
            return true;
       }catch(IOException e){
       }
        return false;
    }
}
