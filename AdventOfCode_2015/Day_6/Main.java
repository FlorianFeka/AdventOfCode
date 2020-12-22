package AdventOfCode_2015.Day_6;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {
    public static void main(String[] args) {
        var lines = readLines(Path.of("./input.txt"));
        var litLight = countLitLights(lines);
        // System.out.println("Lit Lights: " + litLight);
        System.out.println("total brightness: " + litLight);
    }

    public static int countLitLights(List<String> lines){
        var litLights = 0;
        int[][] lightGrid = new int[1000][1000];
        Pattern pattern = Pattern.compile("(turn on|turn off|toggle)\\s(\\d{1,3},\\d{1,3})\\sthrough\\s(\\d{1,3},\\d{1,3})");
        for (String line : lines) {
            Matcher matcher = pattern.matcher(line);
            if(!matcher.matches()){
                break;
            }
            var action = matcher.group(1);
            var from = matcher.group(2);
            var to = matcher.group(3);
            // setLight(lightGrid, action, from, to);
            newSetLight(lightGrid, action, from, to);
        }
        for(int i = 0; i < lightGrid.length; i++){
            for(int j = 0; j < lightGrid.length; j++){
                litLights += lightGrid[i][j];
            }
        }
        return litLights;
    }

    public static void newSetLight(int[][] lightGrid, String action, String from, String to){
        var from1 = Integer.parseInt(from.split(",")[0]);
        var from2 = Integer.parseInt(from.split(",")[1]);
        var to1 = Integer.parseInt(to.split(",")[0]);
        var to2 = Integer.parseInt(to.split(",")[1]);
        for(int i = from1; i <= to1; i++){
            for(int j = from2; j <= to2; j++){
                switch(action) {
                    case "turn on":
                        lightGrid[i][j] += 1;
                        break;
                    case "turn off":
                        if(lightGrid[i][j] != 0){
                            lightGrid[i][j] -= 1;
                        }
                        break;
                    case "toggle":
                        lightGrid[i][j] += 2;
                        break;
                }
            }
        }
    }

    public static void setLight(int[][] lightGrid, String action, String from, String to){
        var from1 = Integer.parseInt(from.split(",")[0]);
        var from2 = Integer.parseInt(from.split(",")[1]);
        var to1 = Integer.parseInt(to.split(",")[0]);
        var to2 = Integer.parseInt(to.split(",")[1]);
        for(int i = from1; i <= to1; i++){
            for(int j = from2; j <= to2; j++){
                switch(action){
                    case "turn on":
                        lightGrid[i][j] = 1;
                        break;
                    case "turn off":
                        lightGrid[i][j] = 0;
                        break;
                    case "toggle":
                        lightGrid[i][j] = lightGrid[i][j] == 0 ? 1 : 0;
                        break;
                }
            }
        }
    }

    public static int toggle(int light){
        return light == 0 ? 1 : 0;
    }

    public static List<String> readLines(Path path) {
        try {
			return Files.readAllLines(path);
		} catch (IOException e) {
			e.printStackTrace();
        }
        return null;
    }
}