.class public Lcom/adobe/xmp/impl/XMPSerializerRDF;
.super Ljava/lang/Object;
.source "XMPSerializerRDF.java"


# static fields
.field private static final DEFAULT_PAD:I = 0x800

.field private static final PACKET_HEADER:Ljava/lang/String; = "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

.field private static final PACKET_TRAILER:Ljava/lang/String; = "<?xpacket end=\""

.field private static final PACKET_TRAILER2:Ljava/lang/String; = "\"?>"

.field static final RDF_ATTR_QUALIFIER:Ljava/util/Set;

.field private static final RDF_RDF_END:Ljava/lang/String; = "</rdf:RDF>"

.field private static final RDF_RDF_START:Ljava/lang/String; = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

.field private static final RDF_SCHEMA_END:Ljava/lang/String; = "</rdf:Description>"

.field private static final RDF_SCHEMA_START:Ljava/lang/String; = "<rdf:Description rdf:about="

.field private static final RDF_STRUCT_END:Ljava/lang/String; = "</rdf:Description>"

.field private static final RDF_STRUCT_START:Ljava/lang/String; = "<rdf:Description"

.field private static final RDF_XMPMETA_END:Ljava/lang/String; = "</x:xmpmeta>"

.field private static final RDF_XMPMETA_START:Ljava/lang/String; = "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""


# instance fields
.field private options:Lcom/adobe/xmp/options/SerializeOptions;

.field private outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

.field private padding:I

.field private unicodeSize:I

.field private writer:Ljava/io/OutputStreamWriter;

.field private xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "xml:lang"

    .line 67
    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "rdf:resource"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "rdf:ID"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "rdf:bagID"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "rdf:nodeID"

    aput-object v3, v1, v2

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    .line 35
    return-void
.end method

.method private addPadding(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    const/16 v3, 0x20

    .line 140
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getExactPacketLength()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    .line 155
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getNewline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 156
    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    if-ge v1, v0, :cond_2

    .line 170
    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    invoke-direct {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    .line 172
    :goto_1
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/CountOutputStream;->getBytesWritten()I

    move-result v0

    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 144
    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    if-gt v0, v1, :cond_1

    .line 149
    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Can\'t fit into specified packet size"

    const/16 v2, 0x6b

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 158
    :cond_2
    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    .line 159
    :goto_2
    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    add-int/lit8 v2, v0, 0x64

    if-lt v1, v2, :cond_3

    .line 161
    invoke-direct {p0, v4, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    .line 162
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 163
    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    add-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_2

    .line 165
    :cond_3
    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    invoke-direct {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    .line 166
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_1
.end method

.method private appendNodeValue(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1191
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/adobe/xmp/impl/Utils;->escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1192
    return-void
.end method

.method private canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1210
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    :cond_0
    return v2

    .line 1211
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isURI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "[]"

    .line 1213
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    const/4 v0, 0x1

    return v0
.end method

.method private declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    if-eqz p2, :cond_0

    .line 892
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    :goto_1
    return-void

    .line 877
    :cond_0
    new-instance v0, Lcom/adobe/xmp/impl/QName;

    invoke-direct {v0, p1}, Lcom/adobe/xmp/impl/QName;-><init>(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/QName;->hasPrefix()Z

    move-result v1

    if-nez v1, :cond_1

    .line 888
    return-void

    .line 880
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    .line 882
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 884
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_0

    .line 894
    :cond_2
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 895
    invoke-direct {p0, p4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "xmlns:"

    .line 896
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 897
    invoke-direct {p0, p1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v0, "=\""

    .line 898
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 899
    invoke-direct {p0, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 900
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 901
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 833
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 839
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-nez v0, :cond_2

    .line 848
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 850
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 851
    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_1

    .line 836
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_0

    .line 841
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 844
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_2

    .line 854
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 856
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 857
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    .line 858
    invoke-direct {p0, v0, p2, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_3

    .line 860
    :cond_4
    return-void
.end method

.method private emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1146
    if-eqz p2, :cond_2

    .line 1148
    :cond_0
    invoke-direct {p0, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 1149
    if-nez p2, :cond_3

    const-string/jumbo v0, "</rdf:"

    :goto_0
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1155
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "Bag"

    .line 1161
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1164
    :goto_1
    if-nez p2, :cond_6

    :cond_1
    const-string/jumbo v0, ">"

    .line 1170
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1173
    :goto_2
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1175
    :goto_3
    return-void

    .line 1146
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "<rdf:"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "Alt"

    .line 1153
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "Seq"

    .line 1157
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1164
    :cond_6
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/>"

    .line 1166
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private serializeAsRDF()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""

    .line 253
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitVersionAttribute()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const-string/jumbo v0, "\">"

    .line 259
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 263
    invoke-direct {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

    .line 264
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 268
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getUseCompactFormat()Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFSchemas()V

    .line 278
    :goto_2
    invoke-direct {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "</rdf:RDF>"

    .line 279
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 283
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "</x:xmpmeta>"

    .line 284
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const-string/jumbo v0, ""

    .line 289
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    :goto_3
    return-object v0

    .line 246
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

    .line 247
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getVersionInfo()Lcom/adobe/xmp/XMPVersionInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/xmp/XMPVersionInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 270
    :cond_2
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFSchemas()V

    goto :goto_2

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/SerializeOptions;->getBaseIndent()I

    move-result v1

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_4
    if-lez v0, :cond_4

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/SerializeOptions;->getIndent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 296
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "<?xpacket end=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getReadOnlyPacket()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x77

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\"?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    const/16 v0, 0x72

    .line 297
    goto :goto_5
.end method

.method private serializeCompactRDFArrayProp(Lcom/adobe/xmp/impl/XMPNode;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x3e

    .line 630
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 631
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 632
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    .line 634
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    :goto_0
    add-int/lit8 v0, p2, 0x2

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V

    .line 641
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v2, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    .line 642
    return-void

    .line 636
    :cond_0
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method private serializeCompactRDFAttrProps(Lcom/adobe/xmp/impl/XMPNode;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 417
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 421
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 432
    goto :goto_0

    .line 423
    :cond_0
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 424
    invoke-direct {p0, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 425
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v5, "=\""

    .line 426
    invoke-direct {p0, v5}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v0, 0x22

    .line 428
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_0

    .line 435
    :cond_1
    return v1
.end method

.method private serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 491
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 493
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 494
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    .line 506
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    .line 511
    :goto_1
    invoke-direct {p0, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v1, 0x3c

    .line 512
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 513
    invoke-direct {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v8

    move v3, v4

    move v5, v4

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/xmp/impl/XMPNode;

    .line 521
    sget-object v9, Lcom/adobe/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v3, "rdf:resource"

    .line 527
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v9, 0x20

    .line 528
    invoke-direct {p0, v9}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 529
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v9, "=\""

    .line 530
    invoke-direct {p0, v9}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v1, 0x22

    .line 532
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_2

    :cond_1
    const-string/jumbo v1, "rdf:li"

    move-object v2, v1

    .line 508
    goto :goto_1

    :cond_2
    move v5, v6

    .line 524
    goto :goto_2

    .line 538
    :cond_3
    if-nez v5, :cond_4

    .line 545
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 551
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v1

    if-nez v1, :cond_6

    .line 557
    invoke-direct {p0, v0, p2, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFStructProp(Lcom/adobe/xmp/impl/XMPNode;IZ)Z

    move-result v0

    move v1, v0

    move v0, v6

    .line 564
    :goto_3
    if-eqz v1, :cond_0

    .line 566
    if-nez v0, :cond_7

    :goto_4
    const-string/jumbo v0, "</"

    .line 570
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 571
    invoke-direct {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 572
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 573
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_0

    .line 540
    :cond_4
    invoke-direct {p0, p2, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFGeneralQualifier(ILcom/adobe/xmp/impl/XMPNode;)V

    move v0, v6

    move v1, v6

    .line 541
    goto :goto_3

    .line 547
    :cond_5
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFSimpleProp(Lcom/adobe/xmp/impl/XMPNode;)[Ljava/lang/Object;

    move-result-object v3

    .line 548
    aget-object v0, v3, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 549
    aget-object v0, v3, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    .line 553
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFArrayProp(Lcom/adobe/xmp/impl/XMPNode;I)V

    move v0, v6

    move v1, v6

    .line 554
    goto :goto_3

    .line 568
    :cond_7
    invoke-direct {p0, p2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    goto :goto_4

    .line 577
    :cond_8
    return-void
.end method

.method private serializeCompactRDFGeneralQualifier(ILcom/adobe/xmp/impl/XMPNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v0, " rdf:parseType=\"Resource\">"

    .line 752
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 753
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 755
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    .line 757
    invoke-virtual {p2}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 760
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_0

    .line 762
    :cond_0
    return-void
.end method

.method private serializeCompactRDFSchemas()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 354
    invoke-direct {p0, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "<rdf:Description rdf:about="

    .line 355
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    .line 359
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v0, "xml"

    .line 360
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "rdf"

    .line 361
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    const/4 v3, 0x4

    .line 366
    invoke-direct {p0, v0, v1, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_0

    .line 370
    :cond_0
    const/4 v0, 0x1

    .line 371
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 374
    invoke-direct {p0, v0, v5}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/xmp/impl/XMPNode;I)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 377
    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v0, "/>"

    .line 384
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 385
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 386
    return-void

    :cond_2
    const/16 v0, 0x3e

    .line 379
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 380
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 390
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 392
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 393
    invoke-direct {p0, v0, v5}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V

    goto :goto_2

    .line 397
    :cond_3
    invoke-direct {p0, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "</rdf:Description>"

    .line 398
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 400
    return-void
.end method

.method private serializeCompactRDFSimpleProp(Lcom/adobe/xmp/impl/XMPNode;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 590
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 591
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 593
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->isURI()Z

    move-result v2

    if-nez v2, :cond_1

    .line 601
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const-string/jumbo v1, "/>"

    .line 603
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 605
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const/4 v2, 0x2

    .line 614
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    aput-object v0, v2, v4

    return-object v2

    :cond_1
    const-string/jumbo v1, " rdf:resource=\""

    .line 595
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const-string/jumbo v1, "\"/>"

    .line 597
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 599
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 601
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x3e

    .line 609
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 610
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 611
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private serializeCompactRDFStructProp(Lcom/adobe/xmp/impl/XMPNode;IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 663
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 665
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 666
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    move v1, v3

    .line 675
    :goto_1
    if-nez v1, :cond_2

    :cond_0
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v4

    .line 669
    goto :goto_1

    .line 675
    :cond_2
    if-eqz v0, :cond_0

    .line 681
    :goto_2
    if-nez p3, :cond_4

    .line 688
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 699
    if-eqz v0, :cond_6

    .line 709
    if-eqz v1, :cond_7

    const/16 v0, 0x3e

    .line 721
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 722
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 723
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "<rdf:Description"

    .line 724
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 725
    add-int/lit8 v0, p2, 0x2

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/xmp/impl/XMPNode;I)Z

    const-string/jumbo v0, ">"

    .line 726
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 728
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V

    .line 729
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "</rdf:Description>"

    .line 730
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 731
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    move v2, v4

    .line 733
    :goto_3
    return v2

    .line 681
    :cond_4
    if-eqz v0, :cond_3

    .line 683
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Can\'t mix rdf:resource qualifier and element fields"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    const-string/jumbo v0, " rdf:parseType=\"Resource\"/>"

    .line 694
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 695
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_3

    .line 703
    :cond_6
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/adobe/xmp/impl/XMPNode;I)Z

    const-string/jumbo v0, "/>"

    .line 704
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 705
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_3

    :cond_7
    const-string/jumbo v0, " rdf:parseType=\"Resource\">"

    .line 713
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 714
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 715
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/adobe/xmp/impl/XMPNode;I)V

    move v2, v4

    .line 717
    goto :goto_3

    :cond_8
    move v0, v1

    move v1, v3

    goto :goto_2
.end method

.method private serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 953
    const/4 v5, 0x1

    .line 954
    const/4 v4, 0x1

    .line 959
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 960
    if-nez p2, :cond_1

    const-string/jumbo v1, "[]"

    .line 964
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    .line 969
    :goto_0
    invoke-direct {p0, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v0, 0x3c

    .line 970
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 971
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 973
    const/4 v2, 0x0

    .line 974
    const/4 v0, 0x0

    .line 976
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v2, v0

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 978
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 979
    sget-object v7, Lcom/adobe/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v2, "rdf:resource"

    .line 985
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 986
    if-nez p2, :cond_0

    const/16 v7, 0x20

    .line 988
    invoke-direct {p0, v7}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 989
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v7, "=\""

    .line 990
    invoke-direct {p0, v7}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v0, 0x22

    .line 992
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "rdf:value"

    move-object v1, v0

    .line 963
    goto :goto_0

    :cond_2
    const-string/jumbo v0, "rdf:li"

    move-object v1, v0

    .line 966
    goto :goto_0

    .line 981
    :cond_3
    const/4 v0, 0x1

    move v3, v0

    .line 982
    goto :goto_1

    .line 999
    :cond_4
    if-nez v3, :cond_6

    .line 1030
    :cond_5
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1055
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1074
    if-eqz v2, :cond_11

    .line 1098
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1101
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/adobe/xmp/impl/XMPNode;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1106
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1107
    add-int/lit8 v3, p3, 0x1

    invoke-direct {p0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v3, 0x20

    .line 1108
    invoke-direct {p0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1109
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const-string/jumbo v3, "=\""

    .line 1110
    invoke-direct {p0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v0, 0x22

    .line 1112
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_2

    .line 999
    :cond_6
    if-nez p2, :cond_5

    .line 1006
    if-nez v2, :cond_8

    const-string/jumbo v0, " rdf:parseType=\"Resource\">"

    .line 1012
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1013
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1015
    add-int/lit8 v0, p3, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    .line 1017
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1019
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1020
    sget-object v3, Lcom/adobe/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1022
    add-int/lit8 v3, p3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v0, v6, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_3

    .line 1008
    :cond_8
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Can\'t mix rdf:resource and general qualifiers"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_9
    move v0, v4

    move v2, v5

    .line 1121
    :goto_4
    if-nez v2, :cond_16

    .line 1132
    :goto_5
    return-void

    .line 1034
    :cond_a
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isURI()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1042
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_b
    const-string/jumbo v0, "/>"

    .line 1044
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1046
    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    .line 1047
    goto :goto_4

    :cond_c
    const-string/jumbo v0, " rdf:resource=\""

    .line 1036
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const-string/jumbo v0, "\"/>"

    .line 1038
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1039
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1040
    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    .line 1041
    goto :goto_4

    :cond_d
    const-string/jumbo v0, ""

    .line 1042
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x3e

    .line 1050
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1051
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 1052
    const/4 v0, 0x0

    move v2, v5

    .line 1054
    goto :goto_4

    :cond_e
    const/16 v0, 0x3e

    .line 1058
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1059
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1060
    add-int/lit8 v0, p3, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    .line 1061
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1065
    :goto_6
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1067
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1068
    add-int/lit8 v3, p3, 0x2

    const/4 v6, 0x0

    invoke-direct {p0, v0, v6, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_7

    .line 1063
    :cond_f
    invoke-static {p1}, Lcom/adobe/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_6

    .line 1070
    :cond_10
    add-int/lit8 v0, p3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    move v0, v4

    move v2, v5

    .line 1073
    goto/16 :goto_4

    .line 1077
    :cond_11
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, " rdf:parseType=\"Resource\">"

    .line 1085
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1087
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1089
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1090
    add-int/lit8 v3, p3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v0, v6, v3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_8

    :cond_12
    const-string/jumbo v0, " rdf:parseType=\"Resource\"/>"

    .line 1079
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1080
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1081
    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    .line 1082
    goto/16 :goto_4

    :cond_13
    move v0, v4

    move v2, v5

    .line 1093
    goto/16 :goto_4

    .line 1103
    :cond_14
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Can\'t mix rdf:resource and complex fields"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_15
    const-string/jumbo v0, "/>"

    .line 1114
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1115
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1116
    const/4 v0, 0x0

    move v2, v0

    move v0, v4

    goto/16 :goto_4

    .line 1123
    :cond_16
    if-nez v0, :cond_17

    :goto_9
    const-string/jumbo v0, "</"

    .line 1127
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1128
    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 1129
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1130
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_5

    .line 1125
    :cond_17
    invoke-direct {p0, p3}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    goto :goto_9
.end method

.method private serializePrettyRDFSchema(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 795
    invoke-direct {p0, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "<rdf:Description rdf:about="

    .line 796
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 797
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    .line 799
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "xml"

    .line 800
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "rdf"

    .line 801
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 803
    invoke-direct {p0, p1, v0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/adobe/xmp/impl/XMPNode;Ljava/util/Set;I)V

    const/16 v0, 0x3e

    .line 805
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 806
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 809
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    const/4 v2, 0x3

    .line 812
    invoke-direct {p0, v0, v3, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFProperty(Lcom/adobe/xmp/impl/XMPNode;ZI)V

    goto :goto_0

    .line 816
    :cond_0
    invoke-direct {p0, v4}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "</rdf:Description>"

    .line 817
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 818
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 819
    return-void
.end method

.method private serializePrettyRDFSchemas()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x2

    .line 322
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const-string/jumbo v0, "<rdf:Description rdf:about="

    .line 323
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    const-string/jumbo v0, "/>"

    .line 325
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 328
    :cond_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 317
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializePrettyRDFSchema(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_0
.end method

.method private write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 1239
    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1250
    return-void
.end method

.method private writeChars(IC)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1261
    :goto_0
    if-lez p1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 1261
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1265
    :cond_0
    return-void
.end method

.method private writeIndent(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getBaseIndent()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    if-lez v0, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/adobe/xmp/options/SerializeOptions;->getIndent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1224
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1228
    :cond_0
    return-void
.end method

.method private writeNewline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/SerializeOptions;->getNewline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method private writeTreeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x22

    .line 336
    invoke-direct {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 337
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 338
    if-nez v0, :cond_0

    .line 342
    :goto_0
    invoke-direct {p0, v2}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 343
    return-void

    .line 340
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkOptionsConsistence()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x67

    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getExactPacketLength()Z

    move-result v0

    if-nez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getReadOnlyPacket()Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    if-nez v0, :cond_6

    .line 219
    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    if-eqz v0, :cond_8

    .line 224
    :goto_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v0

    if-nez v0, :cond_9

    .line 232
    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x2

    .line 183
    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getPadding()I

    move-result v0

    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Exact size must be a multiple of the Unicode element"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 190
    :cond_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Inconsistent options for exact size serialize"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/adobe/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_5

    .line 206
    iput v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_2

    .line 203
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Inconsistent options for read-only packet"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/adobe/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v0

    if-nez v0, :cond_7

    .line 215
    iput v2, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_2

    .line 212
    :cond_7
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Inconsistent options for non-packet serialize"

    invoke-direct {v0, v1, v3}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 221
    :cond_8
    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_1

    .line 226
    :cond_9
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    const-string/jumbo v1, "http://ns.adobe.com/xap/1.0/"

    const-string/jumbo v2, "Thumbnails"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    iget v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_2
.end method

.method public serialize(Lcom/adobe/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/adobe/xmp/options/SerializeOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-direct {v0, p2}, Lcom/adobe/xmp/impl/CountOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    .line 101
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p3}, Lcom/adobe/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    .line 103
    check-cast p1, Lcom/adobe/xmp/impl/XMPMetaImpl;

    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->xmp:Lcom/adobe/xmp/impl/XMPMetaImpl;

    .line 104
    iput-object p3, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->options:Lcom/adobe/xmp/options/SerializeOptions;

    .line 105
    invoke-virtual {p3}, Lcom/adobe/xmp/options/SerializeOptions;->getPadding()I

    move-result v0

    iput v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->padding:I

    .line 107
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {p3}, Lcom/adobe/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    .line 109
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->checkOptionsConsistence()V

    .line 113
    invoke-direct {p0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->serializeAsRDF()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->addPadding(I)V

    .line 120
    invoke-direct {p0, v0}, Lcom/adobe/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 123
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/adobe/xmp/impl/CountOutputStream;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/CountOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 127
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Error writing to the OutputStream"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
