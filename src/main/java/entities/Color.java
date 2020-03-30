package entities;

import java.util.Objects;

public class Color {
    private String color_number;
    private String name;

    public Color(String color_number, String name) {
        this.color_number = color_number;
        this.name = name;
    }

    public String getColor_number() {
        return color_number;
    }

    public void setColor_number(String color_number) {
        this.color_number = color_number;
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
        return color_number.equals(color.color_number) &&
                name.equals(color.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(color_number, name);
    }

    @Override
    public String toString() {
        return "Color{" +
                "color_number='" + color_number + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
