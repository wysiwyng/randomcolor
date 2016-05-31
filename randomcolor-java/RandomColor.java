import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.Random;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

@SuppressWarnings("serial")
public class RandomColor extends JFrame{
	final String HEX_MAP = "0123456789ABCDEF";
	final int BRIGHTNESS_THRESHOLD = 5; //Range 0-15
	
	JTextField colorTextField;
	JButton generateButton;

	public static void main(String[] args) {
		new RandomColor();
	}
	
	RandomColor(){
		super("RandomColor");
		setSize(210, 150);
		setResizable(false);
		setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		addWindowListener(new WindowAdapter(){
			public void windowClosing(WindowEvent e){
				dispose();
				System.exit(0);
			}
		});
		setLayout(new BorderLayout());
		setupGUI(getContentPane());	
		generateRandomColor();
		setVisible(true);
	}

	void setupGUI(Container pane){
		colorTextField = new JTextField("#FFFFFF");
		colorTextField.setEditable(false);
		colorTextField.setHorizontalAlignment(SwingConstants.CENTER);
		
		generateButton = new JButton("New Color");
		generateButton.addActionListener(new ActionListener(){
			@Override
			public void actionPerformed(ActionEvent arg0) {
				generateRandomColor();
			}
		});
		
		pane.add(colorTextField, BorderLayout.CENTER);
		pane.add(generateButton, BorderLayout.SOUTH);
	}
	
	void generateRandomColor(){
		Random rand = new Random();
		String color = "#";
		int brightness = 0;
		for(int i=0; i<6; i++){
			int colorNibble = rand.nextInt(15);
			color += HEX_MAP.charAt(colorNibble);
			if(i%2 == 0)
				brightness += colorNibble;
		}		
		colorTextField.setText(color);
		Color generated = Color.decode(color);
		colorTextField.setBackground(generated);
		//Cool effect bro, but my eyes are bleeding
		/*float[] hsb = Color.RGBtoHSB(255 - generated.getRed(), 255 - generated.getGreen(), 255 - generated.getBlue(), new float[3]);
		colorTextField.setForeground(Color.getHSBColor(hsb[0], hsb[1], hsb[2]));*/
		
		//This work OK, but TODO should be refined
		if(brightness / 3 < BRIGHTNESS_THRESHOLD){
			colorTextField.setForeground(Color.WHITE);
		}
		else {
			colorTextField.setForeground(Color.BLACK);
		}
	}
}
