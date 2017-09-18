
package com.eia.soa.fault.eh;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlNs;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for FaultType complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="FaultType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element ref="{http://xmlns.eia.com/EO/Common/1.0}FaultMessage" minOccurs="0"/>
 *         &lt;element name="ReportingDateTime" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/>
 *         &lt;element name="CorrectiveAction" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element ref="{http://xmlns.eia.com/EO/Common/1.0}FaultingService" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 *
 */
@XmlRootElement(name="Fault",namespace="http://xmlns.eia.com/EO/Common/1.0")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "FaultType",
         propOrder = { "faultMessage", "reportingDateTime", "correctiveAction",
                       "faultingService" })
public class FaultType {

  @XmlElement(name = "FaultMessage")
  protected FaultMessageType faultMessage;
  @XmlElement(name = "ReportingDateTime")
  @XmlSchemaType(name = "dateTime")
  protected XMLGregorianCalendar reportingDateTime;
  @XmlElement(name = "CorrectiveAction")
  protected String correctiveAction;
  @XmlElement(name = "FaultingService")
  protected FaultingServiceType faultingService;

  /**
   * Gets the value of the faultMessage property.
   *
   * @return
   *     possible object is
   *     {@link FaultMessageType }
   *
   */
  public FaultMessageType getFaultMessage() {
    return faultMessage;
  }

  /**
   * Sets the value of the faultMessage property.
   *
   * @param value
   *     allowed object is
   *     {@link FaultMessageType }
   *
   */
  public void setFaultMessage(FaultMessageType value) {
    this.faultMessage = value;
  }

  /**
   * Gets the value of the reportingDateTime property.
   *
   * @return
   *     possible object is
   *     {@link XMLGregorianCalendar }
   *
   */
  public XMLGregorianCalendar getReportingDateTime() {
    return reportingDateTime;
  }

  /**
   * Sets the value of the reportingDateTime property.
   *
   * @param value
   *     allowed object is
   *     {@link XMLGregorianCalendar }
   *
   */
  public void setReportingDateTime(XMLGregorianCalendar value) {
    this.reportingDateTime = value;
  }

  /**
   * Gets the value of the correctiveAction property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getCorrectiveAction() {
    return correctiveAction;
  }

  /**
   * Sets the value of the correctiveAction property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setCorrectiveAction(String value) {
    this.correctiveAction = value;
  }

  /**
   * Gets the value of the faultingService property.
   *
   * @return
   *     possible object is
   *     {@link FaultingServiceType }
   *
   */
  public FaultingServiceType getFaultingService() {
    return faultingService;
  }

  /**
   * Sets the value of the faultingService property.
   *
   * @param value
   *     allowed object is
   *     {@link FaultingServiceType }
   *
   */
  public void setFaultingService(FaultingServiceType value) {
    this.faultingService = value;
  }

}
