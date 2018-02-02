.class public Lcom/adobe/xmp/impl/ParseRDF;
.super Ljava/lang/Object;
.source "ParseRDF.java"

# interfaces
.implements Lcom/adobe/xmp/XMPError;
.implements Lcom/adobe/xmp/XMPConst;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_PREFIX:Ljava/lang/String; = "_dflt"

.field public static final RDFTERM_ABOUT:I = 0x3

.field public static final RDFTERM_ABOUT_EACH:I = 0xa

.field public static final RDFTERM_ABOUT_EACH_PREFIX:I = 0xb

.field public static final RDFTERM_BAG_ID:I = 0xc

.field public static final RDFTERM_DATATYPE:I = 0x7

.field public static final RDFTERM_DESCRIPTION:I = 0x8

.field public static final RDFTERM_FIRST_CORE:I = 0x1

.field public static final RDFTERM_FIRST_OLD:I = 0xa

.field public static final RDFTERM_FIRST_SYNTAX:I = 0x1

.field public static final RDFTERM_ID:I = 0x2

.field public static final RDFTERM_LAST_CORE:I = 0x7

.field public static final RDFTERM_LAST_OLD:I = 0xc

.field public static final RDFTERM_LAST_SYNTAX:I = 0x9

.field public static final RDFTERM_LI:I = 0x9

.field public static final RDFTERM_NODE_ID:I = 0x6

.field public static final RDFTERM_OTHER:I = 0x0

.field public static final RDFTERM_PARSE_TYPE:I = 0x4

.field public static final RDFTERM_RDF:I = 0x1

.field public static final RDFTERM_RESOURCE:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-class v1, Lcom/adobe/xmp/impl/ParseRDF;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    .line 75
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 33
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xca

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 989
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v4

    .line 990
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 992
    if-nez v0, :cond_0

    .line 1010
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "XML namespace required for all elements and attributes"

    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    const-string/jumbo v1, "http://purl.org/dc/1.1/"

    .line 994
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1000
    :goto_0
    invoke-interface {v4, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    if-eqz v1, :cond_2

    .line 1006
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    new-instance v5, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-direct {v5}, Lcom/adobe/xmp/options/PropertyOptions;-><init>()V

    .line 1018
    if-nez p4, :cond_4

    move v0, v2

    :goto_2
    const-string/jumbo v2, "rdf:li"

    .line 1040
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v4, "rdf:value"

    .line 1041
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1044
    new-instance v6, Lcom/adobe/xmp/impl/XMPNode;

    invoke-direct {v6, v1, p3, v5}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1046
    invoke-virtual {v6, v0}, Lcom/adobe/xmp/impl/XMPNode;->setAlias(Z)V

    .line 1049
    if-eqz v4, :cond_6

    .line 1055
    invoke-virtual {p1, v3, v6}, Lcom/adobe/xmp/impl/XMPNode;->addChild(ILcom/adobe/xmp/impl/XMPNode;)V

    .line 1059
    :goto_3
    if-nez v4, :cond_7

    .line 1068
    :goto_4
    if-nez v2, :cond_a

    .line 1077
    :goto_5
    return-object v6

    :cond_1
    const-string/jumbo v0, "http://purl.org/dc/elements/1.1/"

    goto :goto_0

    .line 1003
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "_dflt"

    .line 1004
    :goto_6
    invoke-interface {v4, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1003
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1022
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    const-string/jumbo v7, "_dflt"

    invoke-static {v6, v0, v7, v3}, Lcom/adobe/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object p1

    .line 1024
    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 1030
    invoke-interface {v4, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_2

    .line 1033
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    .line 1034
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/XMPNode;->setHasAliases(Z)V

    move v0, v3

    goto :goto_2

    .line 1051
    :cond_6
    invoke-virtual {p1, v6}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_3

    .line 1061
    :cond_7
    if-eqz p4, :cond_9

    .line 1063
    :cond_8
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Misplaced rdf:value element"

    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1061
    :cond_9
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1065
    invoke-virtual {p1, v3}, Lcom/adobe/xmp/impl/XMPNode;->setHasValueChild(Z)V

    goto :goto_4

    .line 1070
    :cond_a
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "[]"

    .line 1074
    invoke-virtual {v6, v0}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    goto :goto_5

    .line 1072
    :cond_b
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Misplaced rdf:li element"

    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "xml:lang"

    .line 1094
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1099
    new-instance v1, Lcom/adobe/xmp/impl/XMPNode;

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {v1, p1, p2, v2}, Lcom/adobe/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1100
    invoke-virtual {p0, v1}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1102
    return-object v1

    .line 1099
    :cond_0
    invoke-static {p2}, Lcom/adobe/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 1118
    sget-boolean v1, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-eqz v1, :cond_1

    .line 1120
    :goto_0
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v1

    .line 1121
    sget-boolean v2, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-eqz v2, :cond_4

    .line 1128
    :cond_0
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1141
    :goto_1
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getQualifierLength()I

    move-result v2

    if-gt v0, v2, :cond_7

    .line 1143
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1144
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1118
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "rdf:value"

    .line 1121
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1130
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1135
    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/XMPNode;->getQualifier(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1136
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/XMPNode;->removeQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1137
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_1

    .line 1132
    :cond_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Redundant xml:lang for rdf:value element"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    const/4 v0, 0x2

    .line 1150
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v0, v2, :cond_8

    .line 1152
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->getChild(I)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 1153
    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/XMPNode;->addQualifier(Lcom/adobe/xmp/impl/XMPNode;)V

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1158
    :cond_8
    sget-boolean v0, Lcom/adobe/xmp/impl/ParseRDF;->$assertionsDisabled:Z

    if-eqz v0, :cond_a

    .line 1160
    :cond_9
    invoke-virtual {p0, v4}, Lcom/adobe/xmp/impl/XMPNode;->setHasValueChild(Z)V

    .line 1161
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 1162
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V

    .line 1163
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->removeChildren()V

    .line 1166
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/impl/XMPNode;

    .line 1169
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/XMPNode;->addChild(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_3

    .line 1158
    :cond_a
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1171
    :cond_b
    return-void
.end method

.method private static getRDFTermKind(Lorg/w3c/dom/Node;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1256
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 1257
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1260
    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 1269
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1321
    :cond_1
    return v4

    :cond_2
    const-string/jumbo v2, "about"

    .line 1261
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1262
    :cond_3
    instance-of v2, p0, Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 1263
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "ID"

    .line 1261
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "li"

    .line 1271
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "parseType"

    .line 1275
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "Description"

    .line 1279
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "about"

    .line 1283
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "resource"

    .line 1287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "RDF"

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "ID"

    .line 1295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "nodeID"

    .line 1299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "datatype"

    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "aboutEach"

    .line 1307
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "aboutEachPrefix"

    .line 1311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "bagID"

    .line 1315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    .line 1317
    return v0

    :cond_6
    const/16 v0, 0x9

    .line 1273
    return v0

    :cond_7
    const/4 v0, 0x4

    .line 1277
    return v0

    :cond_8
    const/16 v0, 0x8

    .line 1281
    return v0

    :cond_9
    const/4 v0, 0x3

    .line 1285
    return v0

    :cond_a
    const/4 v0, 0x5

    .line 1289
    return v0

    :cond_b
    const/4 v0, 0x1

    .line 1293
    return v0

    :cond_c
    const/4 v0, 0x2

    .line 1297
    return v0

    :cond_d
    const/4 v0, 0x6

    .line 1301
    return v0

    :cond_e
    const/4 v0, 0x7

    .line 1305
    return v0

    :cond_f
    const/16 v0, 0xa

    .line 1309
    return v0

    :cond_10
    const/16 v0, 0xb

    .line 1313
    return v0
.end method

.method private static isCoreSyntaxTerm(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1243
    if-le v1, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    return v1
.end method

.method private static isOldTerm(I)Z
    .locals 1

    .prologue
    const/16 v0, 0xa

    .line 1229
    if-le v0, p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/16 v0, 0xc

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private static isPropertyElementName(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1209
    if-ne p0, v1, :cond_1

    .line 1211
    :cond_0
    return v0

    .line 1209
    :cond_1
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParseRDF;->isOldTerm(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1215
    invoke-static {p0}, Lcom/adobe/xmp/impl/ParseRDF;->isCoreSyntaxTerm(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static isWhitespaceNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1182
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1187
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 1188
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1190
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1184
    :cond_0
    return v1

    .line 1192
    :cond_1
    return v1

    .line 1196
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static parse(Lorg/w3c/dom/Node;)Lcom/adobe/xmp/impl/XMPMetaImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/adobe/xmp/impl/XMPMetaImpl;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/XMPMetaImpl;-><init>()V

    .line 90
    invoke-static {v0, p0}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_RDF(Lcom/adobe/xmp/impl/XMPMetaImpl;Lorg/w3c/dom/Node;)V

    .line 91
    return-object v0
.end method

.method private static rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 816
    const/4 v5, 0x0

    .line 817
    const/4 v4, 0x0

    .line 818
    const/4 v3, 0x0

    .line 819
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 823
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    .line 831
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v6, v1, :cond_c

    .line 833
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v7, "xmlns"

    .line 834
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 831
    :goto_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 825
    :cond_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Nested content not allowed with rdf:resource or property attributes"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 835
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 840
    :cond_2
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v7

    .line 842
    packed-switch v7, :pswitch_data_0

    .line 899
    :pswitch_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unrecognized attribute of empty property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    const-string/jumbo v7, "xmlns"

    .line 835
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 837
    goto :goto_1

    :pswitch_1
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 846
    goto :goto_1

    .line 849
    :pswitch_2
    if-nez v3, :cond_4

    .line 855
    if-nez v2, :cond_5

    .line 862
    const/4 v4, 0x1

    .line 863
    if-eqz v2, :cond_6

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_1

    .line 851
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 857
    :cond_5
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Empty property element can\'t have both rdf:value and rdf:resource"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6
    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    .line 867
    goto :goto_1

    .line 870
    :pswitch_3
    if-nez v4, :cond_7

    .line 876
    const/4 v1, 0x1

    move v3, v4

    move v4, v5

    move v9, v2

    move v2, v1

    move v1, v9

    .line 877
    goto :goto_1

    .line 872
    :cond_7
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Empty property element can\'t have both rdf:resource and rdf:nodeID"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_4
    const-string/jumbo v7, "value"

    .line 880
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    const-string/jumbo v7, "xml:lang"

    .line 892
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v7, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 881
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 883
    if-nez v4, :cond_a

    .line 889
    const/4 v0, 0x1

    move v2, v3

    move v3, v4

    move v4, v5

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 891
    goto/16 :goto_1

    .line 885
    :cond_a
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Empty property element can\'t have both rdf:value and rdf:resource"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 894
    :cond_b
    const/4 v1, 0x1

    move v9, v2

    move v2, v3

    move v3, v4

    move v4, v1

    move v1, v9

    .line 896
    goto/16 :goto_1

    :cond_c
    const-string/jumbo v1, ""

    .line 910
    invoke-static {p0, p1, p2, v1, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v6

    .line 911
    const/4 v3, 0x0

    .line 913
    if-eqz v2, :cond_f

    .line 915
    :cond_d
    if-nez v0, :cond_10

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v6, v1}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 916
    if-eqz v2, :cond_11

    move v1, v3

    :goto_3
    const/4 v2, 0x0

    .line 928
    :goto_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 930
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 931
    if-ne v3, v0, :cond_13

    .line 928
    :cond_e
    :goto_5
    :pswitch_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 913
    :cond_f
    if-nez v4, :cond_d

    .line 922
    if-nez v5, :cond_12

    move v1, v3

    goto :goto_3

    .line 915
    :cond_10
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 919
    :cond_11
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setURI(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move v1, v3

    .line 921
    goto :goto_3

    .line 924
    :cond_12
    invoke-virtual {v6}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 925
    const/4 v1, 0x1

    goto :goto_3

    :cond_13
    const-string/jumbo v4, "xmlns"

    .line 932
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 933
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 938
    :goto_6
    invoke-static {v3}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v4

    .line 940
    packed-switch v4, :pswitch_data_1

    .line 967
    :pswitch_6
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Unrecognized attribute of empty property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_14
    const-string/jumbo v4, "xmlns"

    .line 933
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_6

    :pswitch_7
    const-string/jumbo v4, "rdf:resource"

    .line 947
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 951
    :pswitch_8
    if-eqz v1, :cond_15

    const-string/jumbo v4, "xml:lang"

    .line 956
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 962
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v6, v3, v4, v5}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_5

    .line 954
    :cond_15
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 953
    invoke-static {v6, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto/16 :goto_5

    :cond_16
    const-string/jumbo v4, "xml:lang"

    .line 958
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto/16 :goto_5

    .line 972
    :cond_17
    return-void

    .line 842
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 940
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v8, 0xca

    const/4 v1, 0x0

    .line 620
    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    move v0, v1

    .line 622
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 624
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string/jumbo v4, "xmlns"

    .line 625
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 622
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 631
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "xml:lang"

    .line 633
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 637
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 644
    :goto_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid attribute for literal property element"

    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    const-string/jumbo v4, "xmlns"

    .line 626
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "xml:lang"

    .line 635
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "ID"

    .line 638
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "datatype"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_5
    const-string/jumbo v0, ""

    .line 649
    :goto_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 651
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 652
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    .line 658
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid child of literal property element"

    invoke-direct {v0, v1, v8}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 654
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 661
    :cond_7
    invoke-virtual {v2, v0}, Lcom/adobe/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method private static rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v0

    const/16 v1, 0x8

    .line 165
    if-ne v0, v1, :cond_2

    .line 170
    :cond_0
    if-nez p3, :cond_3

    .line 176
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElementAttrs(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 177
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 180
    return-void

    .line 165
    :cond_2
    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Node element must be rdf:Description or typed node"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 170
    :cond_3
    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Top level typed node not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_NodeElementAttrs(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xca

    const/4 v0, 0x0

    move v1, v0

    .line 210
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 212
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    const-string/jumbo v3, "xmlns"

    .line 216
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 222
    :goto_2
    invoke-static {v2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v3

    .line 224
    packed-switch v3, :pswitch_data_0

    .line 263
    :pswitch_0
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid nodeElement attribute"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    const-string/jumbo v3, "xmlns"

    .line 217
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 229
    :pswitch_1
    if-gtz v0, :cond_4

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 237
    if-eqz p3, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 243
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    .line 253
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/adobe/xmp/impl/XMPNode;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_4
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Mutally exclusive about, ID, nodeID attributes"

    invoke-direct {v0, v1, v5}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 243
    :cond_5
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 245
    invoke-virtual {p1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Mismatched top level rdf:about values"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 259
    :pswitch_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v2, v3, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    .line 267
    :cond_6
    return-void

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static rdf_NodeElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_1

    .line 139
    :cond_1
    return-void
.end method

.method private static rdf_ParseTypeCollectionPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "ParseTypeCollection property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeLiteralPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 676
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "ParseTypeLiteral property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeOtherPropertyElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 765
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "ParseTypeOther property element not allowed"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static rdf_ParseTypeResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, ""

    .line 699
    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v2

    .line 701
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move v0, v1

    .line 703
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 705
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string/jumbo v4, "xmlns"

    .line 706
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 703
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 712
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 713
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "xml:lang"

    .line 714
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 718
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 726
    :goto_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid attribute for ParseTypeResource property element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    const-string/jumbo v4, "xmlns"

    .line 707
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "xml:lang"

    .line 716
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "ID"

    .line 719
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "parseType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 731
    :cond_5
    invoke-static {p0, v2, p2, v1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 733
    invoke-virtual {v2}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v0

    if-nez v0, :cond_6

    .line 737
    :goto_4
    return-void

    .line 735
    :cond_6
    invoke-static {v2}, Lcom/adobe/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_4
.end method

.method private static rdf_PropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 364
    invoke-static {p2}, Lcom/adobe/xmp/impl/ParseRDF;->getRDFTermKind(Lorg/w3c/dom/Node;)I

    move-result v1

    .line 365
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->isPropertyElementName(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    move v1, v2

    .line 373
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 375
    invoke-interface {v3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v5, "xmlns"

    .line 376
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 379
    :cond_0
    if-eqz v0, :cond_4

    .line 383
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_2
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid property element name"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 377
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "xmlns"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 381
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 386
    :cond_5
    if-nez v0, :cond_a

    .line 396
    :cond_6
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-gt v0, v8, :cond_b

    move v0, v2

    .line 407
    :goto_3
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 409
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 410
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "xml:lang"

    .line 413
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_7
    const-string/jumbo v0, "datatype"

    .line 416
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_8
    const-string/jumbo v0, "parseType"

    .line 420
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 422
    :cond_9
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 441
    :goto_4
    return-void

    .line 388
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    goto :goto_5

    .line 399
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 467
    :goto_6
    return-void

    :cond_c
    const-string/jumbo v1, "ID"

    .line 414
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 407
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    const-string/jumbo v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 414
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_7

    :cond_e
    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 416
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 418
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_4

    :cond_f
    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 420
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "Literal"

    .line 424
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "Resource"

    .line 428
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "Collection"

    .line 432
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 438
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeOtherPropertyElement()V

    goto :goto_4

    .line 426
    :cond_10
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeLiteralPropertyElement()V

    goto :goto_4

    .line 430
    :cond_11
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_4

    .line 434
    :cond_12
    invoke-static {}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ParseTypeCollectionPropertyElement()V

    goto :goto_4

    .line 448
    :cond_13
    invoke-interface {p2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_15

    .line 464
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_EmptyPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_6

    .line 452
    :cond_14
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 453
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v8, :cond_16

    .line 450
    add-int/lit8 v2, v2, 0x1

    :cond_15
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lt v2, v0, :cond_14

    .line 460
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_LiteralPropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    goto :goto_6

    .line 455
    :cond_16
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_ResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 456
    return-void
.end method

.method private static rdf_PropertyElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 283
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 285
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 286
    invoke-static {v1}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 296
    invoke-static {p0, p1, v1, p3}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_PropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Expected property element node not found"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 299
    :cond_2
    return-void
.end method

.method static rdf_RDF(Lcom/adobe/xmp/impl/XMPMetaImpl;Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid attributes of rdf:RDF element"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/XMPMetaImpl;->getRoot()Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElementList(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;)V

    .line 114
    return-void
.end method

.method private static rdf_ResourcePropertyElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xca

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 489
    if-nez p3, :cond_2

    :cond_0
    const-string/jumbo v0, ""

    .line 495
    invoke-static {p0, p1, p2, v0, p3}, Lcom/adobe/xmp/impl/ParseRDF;->addChildNode(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Ljava/lang/String;Z)Lcom/adobe/xmp/impl/XMPNode;

    move-result-object v4

    move v0, v1

    .line 498
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 500
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    const-string/jumbo v5, "xmlns"

    .line 501
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 498
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "iX:changes"

    .line 489
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    return-void

    .line 502
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 507
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 508
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "xml:lang"

    .line 509
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v3, "ID"

    .line 513
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 519
    :goto_3
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid attribute for resource property element"

    invoke-direct {v0, v1, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    const-string/jumbo v5, "xmlns"

    .line 502
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "xml:lang"

    .line 511
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 513
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_7
    move v3, v1

    move v0, v1

    .line 529
    :goto_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_17

    .line 531
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 532
    invoke-static {v5}, Lcom/adobe/xmp/impl/ParseRDF;->isWhitespaceNode(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 529
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 534
    :cond_8
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-eq v6, v2, :cond_a

    .line 581
    :cond_9
    if-nez v0, :cond_16

    .line 589
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Children of resource property element must be XML elements"

    invoke-direct {v0, v1, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 534
    :cond_a
    if-nez v0, :cond_9

    const-string/jumbo v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 536
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 537
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    .line 539
    if-nez v0, :cond_f

    .line 543
    :cond_b
    if-nez v0, :cond_10

    .line 547
    :cond_c
    if-nez v0, :cond_11

    .line 554
    :cond_d
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;

    .line 555
    if-eqz v0, :cond_12

    .line 568
    :cond_e
    :goto_6
    invoke-static {p0, v4, v5, v1}, Lcom/adobe/xmp/impl/ParseRDF;->rdf_NodeElement(Lcom/adobe/xmp/impl/XMPMetaImpl;Lcom/adobe/xmp/impl/XMPNode;Lorg/w3c/dom/Node;Z)V

    .line 570
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getHasValueChild()Z

    move-result v0

    if-nez v0, :cond_14

    .line 574
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-nez v0, :cond_15

    :goto_7
    move v0, v2

    .line 580
    goto :goto_5

    :cond_f
    const-string/jumbo v7, "Bag"

    .line 539
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 541
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_6

    :cond_10
    const-string/jumbo v7, "Seq"

    .line 543
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 545
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_6

    :cond_11
    const-string/jumbo v7, "Alt"

    .line 547
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 549
    invoke-virtual {v4}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    .line 550
    invoke-virtual {v0, v2}, Lcom/adobe/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;

    goto :goto_6

    :cond_12
    const-string/jumbo v0, "Description"

    .line 555
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 557
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_13

    .line 563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "rdf:type"

    .line 564
    invoke-static {v4, v6, v0}, Lcom/adobe/xmp/impl/ParseRDF;->addQualifierNode(Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/XMPNode;

    goto :goto_6

    .line 560
    :cond_13
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "All XML elements must be in a namespace"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 572
    :cond_14
    invoke-static {v4}, Lcom/adobe/xmp/impl/ParseRDF;->fixupQualifiedNode(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_7

    .line 576
    :cond_15
    invoke-static {v4}, Lcom/adobe/xmp/impl/XMPNodeUtils;->detectAltText(Lcom/adobe/xmp/impl/XMPNode;)V

    goto :goto_7

    .line 584
    :cond_16
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Invalid child of resource property element"

    invoke-direct {v0, v1, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 595
    :cond_17
    if-eqz v0, :cond_18

    .line 600
    return-void

    .line 598
    :cond_18
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Missing child of resource property element"

    invoke-direct {v0, v1, v9}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
