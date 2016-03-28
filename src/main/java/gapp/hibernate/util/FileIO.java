/*
 * This file is part of the CSNetwork Services (CSNS) project.
 * 
 * Copyright 2012-2014, Chengyu Sun (csun@calstatela.edu).
 * 
 * CSNS is free software: you can redistribute it and/or modify it under the
 * terms of the GNU Affero General Public License as published by the Free
 * Software Foundation, either version 3 of the License, or (at your option)
 * any later version.
 * 
 * CSNS is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 * 
 * You should have received a copy of the GNU Affero General Public License
 * along with CSNS. If not, see http://www.gnu.org/licenses/agpl.html.
 
package gapp.hibernate.util;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;


@Component
public class FileIO {

    @Autowired
    FileDao fileDao;

    @Value("#{applicationProperties['file.dir']}")
    private String fileDir;

    @Resource(name = "contentTypes")
    Properties contentTypes;

    private static final Logger logger = LoggerFactory.getLogger( FileIO.class );

    public FileIO()
    {
    }

   
    public void copy( InputStream in, OutputStream out )
    {
        byte[] buffer = new byte[4096];
        int bytesRead;
        try
        {
            while( (bytesRead = in.read( buffer )) != -1 )
                out.write( buffer, 0, bytesRead );
        }
        catch( IOException e )
        {
            logger.error( "Failed to copy input to output", e );
        }
    }

    public void copy( File file, OutputStream out )
    {
        try
        {
            java.io.File diskFile = getDiskFile( file );
            FileInputStream in = new FileInputStream( diskFile );
            copy( in, out );
            in.close();
        }
        catch( Exception e )
        {
            logger.error( "Failed to copy file to output", e );
        }
    }

    public void copy( File from, File to )
    {
        try
        {
            java.io.File diskFile = getDiskFile( to, false );
            FileOutputStream out = new FileOutputStream( diskFile );
            copy( from, out );
            out.close();
        }
        catch( Exception e )
        {
            logger.error( "Failed to copy file to output", e );
        }
    }

   
}
*/