package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
              @NamedQuery(name = "OeOrderHeadersAll.findAll",
                          query = "select o from OeOrderHeadersAll o") })
public class OeOrderHeadersAll implements Serializable {
  public OeOrderHeadersAll() {
  }
}
