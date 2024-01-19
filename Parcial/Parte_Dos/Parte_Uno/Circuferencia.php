<?php

class Circunferencia extends FiguraGeometrica {
    private $radio;

    // Constructor
    public function __construct($radio) {
        $this->radio = $radio;
    }

    public function calcularArea() {
        return M_PI * pow($this->radio, 2);
    }
}
?>
