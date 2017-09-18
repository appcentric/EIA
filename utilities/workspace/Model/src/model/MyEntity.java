package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Version;

@Entity
@NamedQueries({
              @NamedQuery(name = "MyEntity.findAll",
                          query = "select o from MyEntity o") })
public class MyEntity implements Serializable {
  private static final long serialVersionUID = 6584538676336683893L;
  @Id
  private Integer id;
  @Version
  private Integer version;
  private Integer var5;
  private Integer var3;
  private Integer var4;
  private Integer var1;
  private Integer var2;

  public MyEntity() {
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public Integer getVersion() {
    return version;
  }

  public void setVersion(Integer version) {
    this.version = version;
  }

  public Integer getVar5() {
    return var5;
  }

  public void setVar5(Integer var5) {
    this.var5 = var5;
  }

  public Integer getVar3() {
    return var3;
  }

  public void setVar3(Integer var3) {
    this.var3 = var3;
  }

  public Integer getVar4() {
    return var4;
  }

  public void setVar4(Integer var4) {
    this.var4 = var4;
  }

  public Integer getVar1() {
    return var1;
  }

  public void setVar1(Integer var1) {
    this.var1 = var1;
  }

  public Integer getVar2() {
    return var2;
  }

  public void setVar2(Integer var2) {
    this.var2 = var2;
  }
}
