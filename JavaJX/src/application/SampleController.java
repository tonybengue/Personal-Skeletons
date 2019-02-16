package application;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;

public class SampleController {
	@FXML
	private Button myButton;
	
	@FXML
	private void initialize()
	{
		myButton.setText("0");
	}
	
	
	@FXML
	private void actionOnButton(ActionEvent evt) {
		System.out.println("click");
	}
}
