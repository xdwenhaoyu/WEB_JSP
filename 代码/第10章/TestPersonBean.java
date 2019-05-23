import beans.PersonBean;
 
/**
 * Class <code>TestPersonBean</code>.
 */
public class TestPersonBean {
    /**
     * Tester method <code>main</code> for class <code>PersonBean</code>.
     * @param args
     */
    public static void main(String[] args) {
        PersonBean person = new PersonBean();
        person.setName("Bob");
        person.setDeceased(false);
 
        // Output: "Bob [alive]"
        System.out.print(person.getName());
        System.out.println(person.isDeceased() ? " [deceased]" : " [alive]");
    }
}
