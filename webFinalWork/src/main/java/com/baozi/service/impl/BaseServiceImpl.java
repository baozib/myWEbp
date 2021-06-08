package com.baozi.service.impl;

import com.baozi.mapper.BaseMapper;
import com.baozi.mapper.DonorMapper;
import com.baozi.model.Press;
import com.baozi.pojo.donor.Donor;
import com.baozi.pojo.gereral.User;
import com.baozi.service.api.BaseService;
import com.baozi.utils.MyTemplate;
import com.baozi.utils.myframe.AffluxPojo;
import lombok.NoArgsConstructor;
import lombok.SneakyThrows;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.*;



/**
 *
 * @desc   业务层实现类，继承了MyTemplate模板，实现了ServiceCurrent接口。
 * @author baozi
 * @data   2021/5/20
 */
@NoArgsConstructor
public class BaseServiceImpl extends MyTemplate
    implements BaseService<User> {

    private int judge;
    private Map<String, Object> map;
    private User user;


    public BaseServiceImpl(User user) {
        this.user = Objects.requireNonNull(user);
        this.map = new HashMap<>();
    }

    @Override
    public Map login() {
        process(sqlSession -> {
            DonorMapper mapper = sqlSession.getMapper(DonorMapper.class);
            User allUser = (User) mapper.selectUser(user);
            map.put("user",allUser);
            if(allUser != null){
                Donor donor = (Donor) mapper.selectDonor(Donor.builder().id(allUser.getUuid()).build());
                map.put("donor",donor);
            }
        });
        return map;
    }


    @Override
    public int register() {
        process(sqlSession -> {
            DonorMapper<User> mapper = sqlSession.getMapper(DonorMapper.class);
            Map<User, Press> map = new HashMap<>();
            map.put(user, Press.SUCCESS);
            map.put(mapper.selectMailbox(user), Press.ERROR_MAILBOX);
            map.put(mapper.selectUsername(user), Press.ERROR_USERNAME);
            map.keySet().stream().forEach((use) -> {if(use != null) { map.put(user,map.get(use)); }});
            judge = map.get(user).getValue();
            if(judge == 1) {
                user.setUuid(AffluxPojo.gainUUID());
                mapper.insertUser(user);
                mapper.insertDepotid(user);
            }
        });
        return judge;
    }

    @SneakyThrows
    @Override
    public void fileUpload(HttpServletRequest req, HttpServletResponse resp) {
        FileItemFactory fif = new DiskFileItemFactory();
        ServletFileUpload sfu = new ServletFileUpload(fif);
        FileItem picFile = sfu.parseRequest(req).get(0);
        if (!picFile.isFormField()) {
            String s = AffluxPojo.gainUUID() + picFile.getName();
            user.setAvatar(s);
            File file = AffluxPojo.gainAvatarFile(s);
            picFile.write(file);
            process((sqlSession)->{
                BaseMapper mapper = sqlSession.getMapper(BaseMapper.class);
                mapper.updateUser(user);
            });
        }
    }

    @Override
    public void updateMessage(User user) {

    }

}
