
package com.eia.soa.fault.eh;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each
 * Java content interface and Java element interface
 * generated in the com.eia.soa.fault.eh package.
 * <p>An ObjectFactory allows you to programatically
 * construct new instances of the Java representation
 * for XML content. The Java representation of XML
 * content can consist of schema derived interfaces
 * and classes representing the binding of schema
 * type definitions, element declarations and model
 * groups.  Factory methods for each of these are
 * provided in this class.
 *
 */
@XmlRegistry
public class ObjectFactory {

  private final static QName _Fault_QNAME =
    new QName("http://xmlns.eia.com/EO/Common/1.0", "Fault");
  private final static QName _FaultMessage_QNAME =
    new QName("http://xmlns.eia.com/EO/Common/1.0", "FaultMessage");
  private final static QName _FaultingService_QNAME =
    new QName("http://xmlns.eia.com/EO/Common/1.0", "FaultingService");
  private final static QName _ProcessHeader_QNAME =
    new QName("http://xmlns.eia.com/EO/Common/1.0", "ProcessHeader");

  /**
   * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.eia.soa.fault.eh
   *
   */
  public ObjectFactory() {
  }

  /**
   * Create an instance of {@link ProcessHeaderType }
   *
   */
  public ProcessHeaderType createProcessHeaderType() {
    return new ProcessHeaderType();
  }

  /**
   * Create an instance of {@link FaultingServiceType }
   *
   */
  public FaultingServiceType createFaultingServiceType() {
    return new FaultingServiceType();
  }

  /**
   * Create an instance of {@link FaultMessageType }
   *
   */
  public FaultMessageType createFaultMessageType() {
    return new FaultMessageType();
  }

  /**
   * Create an instance of {@link FaultType }
   *
   */
  public FaultType createFaultType() {
    return new FaultType();
  }

  /**
   * Create an instance of {@link JAXBElement }{@code <}{@link FaultType }{@code >}}
   *
   */
  @XmlElementDecl(namespace = "http://xmlns.eia.com/EO/Common/1.0",
                  name = "Fault")
  public JAXBElement<FaultType> createFault(FaultType value) {
    return new JAXBElement<FaultType>(_Fault_QNAME, FaultType.class, null,
                                      value);
  }

  /**
   * Create an instance of {@link JAXBElement }{@code <}{@link FaultMessageType }{@code >}}
   *
   */
  @XmlElementDecl(namespace = "http://xmlns.eia.com/EO/Common/1.0",
                  name = "FaultMessage")
  public JAXBElement<FaultMessageType> createFaultMessage(FaultMessageType value) {
    return new JAXBElement<FaultMessageType>(_FaultMessage_QNAME,
                                             FaultMessageType.class, null,
                                             value);
  }

  /**
   * Create an instance of {@link JAXBElement }{@code <}{@link FaultingServiceType }{@code >}}
   *
   */
  @XmlElementDecl(namespace = "http://xmlns.eia.com/EO/Common/1.0",
                  name = "FaultingService")
  public JAXBElement<FaultingServiceType> createFaultingService(FaultingServiceType value) {
    return new JAXBElement<FaultingServiceType>(_FaultingService_QNAME,
                                                FaultingServiceType.class,
                                                null, value);
  }

  /**
   * Create an instance of {@link JAXBElement }{@code <}{@link ProcessHeaderType }{@code >}}
   *
   */
  @XmlElementDecl(namespace = "http://xmlns.eia.com/EO/Common/1.0",
                  name = "ProcessHeader")
  public JAXBElement<ProcessHeaderType> createProcessHeader(ProcessHeaderType value) {
    return new JAXBElement<ProcessHeaderType>(_ProcessHeader_QNAME,
                                              ProcessHeaderType.class, null,
                                              value);
  }

}
