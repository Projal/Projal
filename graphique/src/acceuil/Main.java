package acceuil;
	
import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.EventHandler;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;
import javafx.fxml.FXMLLoader;


public class Main extends Application {
	
	private static ObservableList<person> personData = FXCollections.observableArrayList();
	
	@Override
	public void start(Stage primaryStage) {
		try {
			AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("bienvenue.fxml"));
			Scene scene = new Scene(root,700,400);
			scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
			primaryStage.setScene(scene);
			primaryStage.setTitle("bite en bois");
			primaryStage.show();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	public static void main(String[] args) {
	        personData.add(new person(null, null));
	        personData.add(new person("Ruth", "Mueller"));
	        personData.add(new person("Heinz", "Kurz"));
	        personData.add(new person("Cornelia", "Meier"));
	        personData.add(new person("Werner", "Meyer"));
	        personData.add(new person("Lydia", "Kunz"));
	        personData.add(new person("Anna", "Best"));
	        personData.add(new person("Stefan", "Meier"));
	        personData.add(new person("Martin", "Mueller"));
		launch(args);
	}
	
	   public ObservableList<person> getPersonData() {
	        return personData;
	    }
}
