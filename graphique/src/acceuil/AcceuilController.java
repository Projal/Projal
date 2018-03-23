package acceuil;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;

public class AcceuilController {

    @FXML
    private TextField user_field;

    @FXML
    private AnchorPane square;

    @FXML
    private AnchorPane background;

    @FXML
    private Button co_buton;

    @FXML
    private PasswordField pswd_field;

    @FXML
    void make_login(ActionEvent event) {

    
    if(user_field.getText().equals("house")&& pswd_field.getText().equals("lymphome"))
    	System.out.println("welcome !");
    else
    	System.out.println("");
    }
    

    @FXML
    void click(ActionEvent event) {
    	
    }
}