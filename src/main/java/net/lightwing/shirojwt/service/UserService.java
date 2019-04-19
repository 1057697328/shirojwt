package net.lightwing.shirojwt.service;

import net.lightwing.shirojwt.dao.UserDao;
import net.lightwing.shirojwt.pojo.LUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@SuppressWarnings("ALL")
@Service
public class UserService
{
    @Autowired
    private UserDao dao;

    public LUser getUserWithPermission(String account)
    {
        return dao.getUserWithPermission(account);
    }
}
