package administracion;

import java.util.ArrayList;
import java.util.Vector;

import bdd.BDD;

public class Adm {
	
	public static ArrayList listarParroquia(String idCanton) throws Exception {
		ArrayList parroquia = new ArrayList();
		String sentencia = "SELECT IDPARROQUIA, NOMBREPARROQUIA, IDCANTON "
				+ "FROM adparroquia "
				+ "where IDCANTON = "+idCanton +" "
				+ "ORDER BY NOMBREPARROQUIA";
		ArrayList parroquia1 = BDD.consultar1(sentencia);
		if(!parroquia1.isEmpty()) {
			Vector parroquias2 = (Vector)parroquia1.get(0);
			if(!parroquias2.isEmpty()) {
				String parroquias3 = parroquias2.get(0).toString().trim();
				if(!parroquias3.isEmpty()) {
					parroquia = parroquia1;
				}
			}
		}
		if (parroquia.isEmpty()) {
			Vector vacios = new Vector();
			vacios.add("vacio");
			vacios.add("EL CANTON "+idCanton+ " NO TIENE PARROQUIAS");
			parroquia.add(vacios);
		}
		return parroquia;
	}
	
	public static ArrayList listarServicio() throws Exception {
		ArrayList servicio = new ArrayList();
		String sentencia = "SELECT IDSERVICIO, NOMBRESERVICIO "
				+ "FROM servicio ORDER BY NOMBRESERVICIO";
		
		ArrayList servicios1 = BDD.consultar1(sentencia);
		if(!servicios1.isEmpty()) {
			Vector servicios2 = (Vector)servicios1.get(0);
			if(!servicios2.isEmpty()) {
				String servicios3 = servicios2.get(0).toString().trim();
				if(!servicios3.isEmpty()) {
					servicio = servicios1;
				}
			}
		}
		if (servicio.isEmpty()) {
			Vector vacios = new Vector();
			vacios.add("vacio");
			vacios.add("EL SERVICIOS  NO EXISTE");
			servicio.add(vacios);
		}
		
		return servicio;
	}
	/*-----------------------------------------------------------*/
	public static void registrarServicioArtesano( String idServicio, String codPer, String estado) throws Exception{
		String sql = "INSERT INTO personaservicio (idServicio,CODIGOPERSONA,estado)VALUES ("
				+ idServicio+","
						+ codPer+","
								+ estado+")";
		BDD.instruccion(sql);
	}
	/*-----------------------------------------------------------*/
	public static ArrayList listarServiciosPersona(String codigoPersona) throws Exception {
		ArrayList servicio = new ArrayList();
		String sentencia = "SELECT IDSERVICIO, NOMBRESERVICIO "
				+ "FROM servicio ORDER BY NOMBRESERVICIO"
				+ "where CODIGOPERSONA = "+codigoPersona;
		
		ArrayList servicios1 = BDD.consultar1(sentencia);
		if(!servicios1.isEmpty()) {
			Vector servicios2 = (Vector)servicios1.get(0);
			if(!servicios2.isEmpty()) {
				String servicios3 = servicios2.get(0).toString().trim();
				if(!servicios3.isEmpty()) {
					servicio = servicios1;
				}
			}
		}
		if (servicio.isEmpty()) {
			Vector vacios = new Vector();
			vacios.add("vacio");
			vacios.add("La persona "+codigoPersona+ " NO TIENE SERVICIOS");
			servicio.add(vacios);
		}
		
		return servicio;
	}
	
	
	
}
