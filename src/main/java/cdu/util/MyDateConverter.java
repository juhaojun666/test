package cdu.util;
import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
                                //String从前端获取到的数据类型，Date是要把它转换成的数据类型
public class MyDateConverter implements Converter<String,Date>{

    @Override
    public Date convert(String source) {
        Date date=null;
        //创建一个
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //转换日期
        try {
            date=sdf.parse(source);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}

