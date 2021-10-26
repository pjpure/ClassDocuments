/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_university.BackEnd;

import java.util.ArrayList;

/**
 *
 * @author USER
 */
public class Authority {

    public static <E extends Person> Person login(String id, String password) {
        ArrayList<Person> arr = Database.getPerson();
        int res = Person.search(null, id, arr);
        if (res != -1) {
            if (arr.get(res).getPassword().equals(password)) {
                return arr.get(res);
            }
        }
        return null;
    }

    public static <E extends Person> boolean registor(E data) {
        if (Authority.login(data.getUsername(), data.getPassword()) == null) {
            E.submit(data);
        } else {
            return false;
        }
        return true;
    }


}
