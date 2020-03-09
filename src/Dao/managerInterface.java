package Dao;

import Entity.Manage;

import java.util.List;

public interface managerInterface {
    public boolean addManager(Manage manage);
    public boolean selectName(String name);
    public boolean selectUpwd(String upwd);
    public List<Manage> selectManage(String manage);
}
