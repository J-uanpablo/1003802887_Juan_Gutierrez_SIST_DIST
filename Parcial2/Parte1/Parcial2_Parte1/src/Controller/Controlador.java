/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;
/**
 *
 * @author Juan Pablo
 */
public class Controlador {
    public void Agregar(int id){
        //Objeto del modelo
        Modelo Modelo = new Modelo();
        Modelo.setid(id);
        Modelo.Agregar();
    }
}