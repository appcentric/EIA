
package com.eia.soa.fault.eh;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for FaultingServiceType complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="FaultingServiceType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="ID" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Process" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="InstanceID" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "FaultingServiceType",
         propOrder = { "id", "process", "instanceID" })
public class FaultingServiceType {

  @XmlElement(name = "ID")
  protected String id;
  @XmlElement(name = "Process")
  protected String process;
  @XmlElement(name = "InstanceID")
  protected String instanceID;

  /**
   * Gets the value of the id property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getID() {
    return id;
  }

  /**
   * Sets the value of the id property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setID(String value) {
    this.id = value;
  }

  /**
   * Gets the value of the process property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getProcess() {
    return process;
  }

  /**
   * Sets the value of the process property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setProcess(String value) {
    this.process = value;
  }

  /**
   * Gets the value of the instanceID property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getInstanceID() {
    return instanceID;
  }

  /**
   * Sets the value of the instanceID property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setInstanceID(String value) {
    this.instanceID = value;
  }

}
