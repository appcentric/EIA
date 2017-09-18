
package com.eia.soa.fault.eh;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for FaultMessageType complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="FaultMessageType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Code" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Text" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="Severity" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Stack" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 *
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "FaultMessageType",
         propOrder = { "code", "text", "severity", "stack" })
public class FaultMessageType {

  @XmlElement(name = "Code")
  protected String code;
  @XmlElement(name = "Text")
  protected List<String> text;
  @XmlElement(name = "Severity")
  protected String severity;
  @XmlElement(name = "Stack")
  protected String stack;

  /**
   * Gets the value of the code property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getCode() {
    return code;
  }

  /**
   * Sets the value of the code property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setCode(String value) {
    this.code = value;
  }

  /**
   * Gets the value of the text property.
   *
   * <p>
   * This accessor method returns a reference to the live list,
   * not a snapshot. Therefore any modification you make to the
   * returned list will be present inside the JAXB object.
   * This is why there is not a <CODE>set</CODE> method for the text property.
   *
   * <p>
   * For example, to add a new item, do as follows:
   * <pre>
   *    getText().add(newItem);
   * </pre>
   *
   *
   * <p>
   * Objects of the following type(s) are allowed in the list
   * {@link String }
   *
   *
   */
  public List<String> getText() {
    if (text == null) {
      text = new ArrayList<String>();
    }
    return this.text;
  }

  /**
   * Gets the value of the severity property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getSeverity() {
    return severity;
  }

  /**
   * Sets the value of the severity property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setSeverity(String value) {
    this.severity = value;
  }

  /**
   * Gets the value of the stack property.
   *
   * @return
   *     possible object is
   *     {@link String }
   *
   */
  public String getStack() {
    return stack;
  }

  /**
   * Sets the value of the stack property.
   *
   * @param value
   *     allowed object is
   *     {@link String }
   *
   */
  public void setStack(String value) {
    this.stack = value;
  }

}
