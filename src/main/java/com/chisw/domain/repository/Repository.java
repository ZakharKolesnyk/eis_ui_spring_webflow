package com.chisw.domain.repository;

import java.io.Serializable;

public interface Repository<T extends Serializable, I> {

    T update(T entity);

    T load(I id);

    T create(T entity);

    void delete(T entity);
}
