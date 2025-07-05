//package com.mohit.bean;
//
//import org.hibernate.Session;
//import com.mohit.utility.HibernateUtil;
//
//public class DemoTest {
//    public static void main(String[] args) {
//        // 2️⃣ Demo1 का object बनाओ
//        try ( // 1️⃣ Session खोलो
//                Session session = HibernateUtil.getSessionFactory().openSession()) {
//            // 2️⃣ Demo1 का object बनाओ
//            Demo1 demo = new Demo1();
//            demo.setSid(101);
//            demo.setName("Mohit");
//            demo.setSurname("Yadav");
//            demo.setMobile(987654321);
//            demo.setCity("Delhi");
//            // 3️⃣ Transaction शुरू करो
//            session.beginTransaction();
//            // 4️⃣ Demo1 object save करो
//            session.save(demo);
//            // 5️⃣ Commit करो
//            session.getTransaction().commit();
//            // 6️⃣ Session बंद करो
//        }
//
//        System.out.println("✅ Demo1 successfully saved!");
//    }
//}
