package pro.arta.robotframework.model;

import org.robotframework.javalib.annotation.ArgumentNames;
import org.robotframework.javalib.annotation.RobotKeyword;
import org.robotframework.javalib.annotation.RobotKeywords;

/**
 * User: Kuanysh Bekturganov
 * Date: 26.07.16.
 * Time: 12:00.
 */
@RobotKeywords
public class SampleKeywords {

    @RobotKeyword("Print Message")
    @ArgumentNames({"message"})
    public void printMessage(String message) {
        System.out.println(message);
    }
}
