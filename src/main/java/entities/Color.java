package entities;

import java.util.Objects;

public class Color {
    private String colorNumber;
    private String name;

    public Color() {
    }

    public Color(String colorNumber, String name) {
        this.colorNumber = colorNumber;
        this.name = name;
    }

    public String getColorNumber() {
        return colorNumber;
    }

    public void setColorNumber(String colorNumber) {
        this.colorNumber = colorNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Color color = (Color) o;
        return colorNumber.equals(color.colorNumber) &&
                name.equals(color.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(colorNumber, name);
    }

    @Override
    public String toString() {
        return "Color{" +
                "color_number='" + colorNumber + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
