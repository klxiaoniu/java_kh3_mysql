import java.sql.*;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int choice;
        while ((choice = showMenu()) != 0) {    //0为退出
            Scanner scanner = new Scanner(System.in);
            switch (choice) {
                case 1 -> {
                    int i = 0, limit = 10, page = getPageCnt(limit);
                    while (true) {
                        System.out.printf("Page %d/%d:\n", i + 1, page);
                        showStudent(limit, i++ * limit);     //分页查询
                        System.out.println("Input c to continue, q to stop:");  //貌似Java里没有getche()?只能多按下回车了
                        if (scanner.next().equals("q") || i >= page) break;     //TODO:完善此处交互逻辑
                    }
                }
                case 2 -> showClass();
                case 3 -> {
                    System.out.println("依序输入学号、姓名、性别（男0女1）、班级id、入学年、月、日：");
                    addStudent(scanner.nextInt(), scanner.next(), scanner.nextInt(), scanner.nextInt(),
                            new Date(new Date(scanner.nextInt() - 1900, scanner.nextInt(), scanner.nextInt()).getTime()));
                }          //这不是答辩是什么
                case 4 -> {
                    System.out.println("输入班级名（例：高三1班）：");
                    addClass(scanner.next());
                }
                case 5 -> {
                    System.out.println("输入欲删除的学生学号：");
                    delStudent(scanner.nextInt());
                }
                case 6 -> {
                    System.out.println("输入欲删除的班级名：");
                    delClass(scanner.next());
                }
                case 7 -> {
                    System.out.println("依序输入待修改学生的学号、欲修改的姓名、性别（男0女1）、班级id：");
                    updateStudent(scanner.nextInt(), scanner.next(), scanner.nextInt(), scanner.nextInt());
                }
                case 8 -> {
                    System.out.println("依序输入待修改班级名、修改后班级名：");
                    updateClass(scanner.next(), scanner.next());
                }
            }
        }
        System.out.println("快乐小牛 Copyright(c) 2022");
    }


    public static int showMenu() {
        System.out.println("--功能菜单--");
        System.out.println("1. 学生列表");
        System.out.println("2. 班级列表");
        System.out.println("3. 添加学生");
        System.out.println("4. 添加班级");
        System.out.println("5. 删除学生");
        System.out.println("6. 删除班级");
        System.out.println("7. 编辑学生");
        System.out.println("8. 编辑班级");
        System.out.println("0. 退出系统");
        int choice = -1;
        Scanner scanner = new Scanner(System.in);
        do {
            System.out.println("请输入选择：");
            choice = scanner.nextInt();
        } while (choice < 0 || choice > 8);
        return choice;
    }

    /**
     * 添加班级
     */
    public static void addClass(String className) {
        String sql = "INSERT INTO class VALUES (null,?)";
        //该语句为每个 IN 参数保留一个问号（“?”）作为占位符
        Connection conn = null;                //和数据库取得连接
        PreparedStatement pstmt = null;        //创建statement
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, className);
            pstmt.executeUpdate();            //执行
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);        //必须关闭
        }
    }

    public static void showClass() {
        String sql = "SELECT * FROM class";     //本想加上班级人数，奈何写不来
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String cname = rs.getString("cname");
                System.out.println(id + "\t" + cname);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);
        }

    }

    private static void delClass(String cname) {
        String sql = "DELETE FROM class WHERE cname=?";     //理论上也需要删除该班级对应的学生，待完善
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, cname);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);
        }
    }

    public static void updateClass(String cname, String cname_new) {
        String sql = "UPDATE class SET cname=? WHERE cname=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, cname_new);
            pstmt.setString(2, cname);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);
        }
    }

    /**
     * 添加学生
     */
    public static void addStudent(int sid, String name, int sex, int classid, Date timein) {
        String sql = "INSERT INTO student VALUES (null,?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, sid);
            pstmt.setString(2, name);
            pstmt.setInt(3, sex);
            pstmt.setInt(4, classid);
            pstmt.setDate(5, timein);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);
        }
    }

    public static int getPageCnt(int limit) {
        String sql = "SELECT CEILING(COUNT(*)/?) page FROM student;";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int page = 0;
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, limit);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                page = rs.getInt("page");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);
        }
        return page;
    }

    public static void showStudent(int limit, int offset) {
        String sql = "SELECT s.id,s.sid,s.name,s.sex,c.cname,s.timein FROM student s INNER JOIN class c ON s.classid=c.id LIMIT ? OFFSET ?;";
        Connection conn = null;             //连接查询，关联信息通过student表的classid和class表的id相连接
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, limit);
            pstmt.setInt(2, offset);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int sid = rs.getInt("sid");
                String name = rs.getString("name");
                String sex = rs.getInt("sex") == 0 ? "男" : "女";
                String classname = rs.getString("cname");
                Date timein = rs.getDate("timein");
                System.out.println(id + "\t" + sid + "\t" + name + "\t" + sex + "\t" + classname + "\t" + timein);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);
        }
    }

    public static void delStudent(int sid) {
        String sql = "DELETE FROM student WHERE sid=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, sid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);
        }
    }

    public static void updateStudent(int sid, String name, int sex, int classid) {
        String sql = "UPDATE student SET name=?,sex=?,classid=? WHERE sid=?";
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            conn = DbUtil.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setInt(2, sex);
            pstmt.setInt(3, classid);
            pstmt.setInt(4, sid);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DbUtil.close(pstmt);
            DbUtil.close(conn);
        }
    }
}
