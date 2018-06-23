/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

import dominio.Administrador;
import persistencia.AdministradorBD;

/**
 *
 * @author Desiree
 */
public class CadastrarAdministrador {
    public static void main(String[] args) {
        Administrador administrador = new Administrador();
        administrador.setLogin("admin");
        administrador.setSenha("senha");
        administrador.setCodigo(1);
        AdministradorBD.inserir(administrador);
    }
}
