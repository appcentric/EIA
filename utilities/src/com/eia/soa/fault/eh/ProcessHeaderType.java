
package com.eia.soa.fault.eh;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for ProcessHeaderType complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="ProcessHeaderType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="ProcessStartTime" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/>
 *         &lt;element name="ProcessName" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="ProcessInstanceID" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="ProcessRevision" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="ProcessDN" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ProcessHeaderType",
         propOrder = { "processStartTime", "processName", "processInstanceID",
                       "processRevision", "processDN" })
public class ProcessHeaderType {

  @XmlElement(name = "ProcessStartTime")
  @XmlSchemaType(name = "dateTime")
  protected XMLGregorianCalendar processStartTime;
  @XmlElement(name = "ProcessName")
  protected String processName;
  @XmlElement(name = "ProcessInstanceID")
  protected String processInstanceID;
  @XmlElement(name = "ProcessRevision")
  protected String processRevision;
  @XmlElement(name = "ProcessDN")
  protected String processDN;

  /**
   * Gets the value of the processStartTime property.
   *
   * @return
   *     possible object is
   *     {@link XMLGregorianCalendar }
   *
   */
  public XMLGregorianCalendar getProcessStartTime() {
    return processStartTime;
  }

  /**
   * Sets the value of the processStartTime property.
   *
   * @param value
   *     allowed object is
   *     {@link XMLGregorianCalendar }
   *
   */
  public void setProcessStartTime(XMLGregorianCalendar value) {
    this.processStartTime = value;
  }

  /**
   * Gets the value of the processName property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getProcessName() {
    return processName;
  }

  /**
   * Sets the value of the processName property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setProcessName(String value) {
    this.processName = value;
  }

  /**
   * Gets the value of the processInstanceID property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getProcessInstanceID() {
    return processInstanceID;
  }

  /**
   * Sets the value of the processInstanceID property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setProcessInstanceID(String value) {
    this.processInstanceID = value;
  }

  /**
   * Gets the value of the processRevision property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getProcessRevision() {
    return processRevision;
  }

  /**
   * Sets the value of the processRevision property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setProcessRevision(String value) {
    this.processRevision = value;
  }

  /**
   * Gets the value of the processDN property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getProcessDN() {
    return processDN;
  }

  /**
   * Sets the value of the processDN property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setProcessDN(String value) {
    this.processDN = value;
  }

}
