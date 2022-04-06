package dao;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import modelos.Cliente;
import utilidades.HibernateUtil;

public class ClienteDAO {

	public ArrayList<Cliente> listarClientes() {
		ArrayList<Cliente> clientes = new ArrayList<Cliente>();

		SessionFactory sessionF = new HibernateUtil().getSessionFactory();
		Session session = sessionF.getCurrentSession();
		Transaction tr = null;
		try {
			tr = session.beginTransaction();
			clientes = (ArrayList<Cliente>) session.createQuery("SELECT c FROM Cliente c", Cliente.class)
					.getResultList();

		} catch (Exception ex) {
			ex.printStackTrace();
			if (tr != null) {
				tr.rollback();
			}
			clientes = null;
		} finally {
			session.close();
			sessionF.close();
		}
		return clientes;
	}

}
