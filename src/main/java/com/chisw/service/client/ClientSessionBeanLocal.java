package com.chisw.service.client;

import javax.ejb.Local;
import javax.ejb.Stateful;

@Local
public interface ClientSessionBeanLocal {
    void updateUser();
}
