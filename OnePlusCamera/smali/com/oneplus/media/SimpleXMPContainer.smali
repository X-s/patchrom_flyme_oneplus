.class public Lcom/oneplus/media/SimpleXMPContainer;
.super Ljava/lang/Object;
.source "SimpleXMPContainer.java"

# interfaces
.implements Lcom/oneplus/media/XMPContainer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_XMPMeta:Lcom/adobe/xmp/XMPMeta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oneplus/media/SimpleXMPContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/media/SimpleXMPContainer;->TAG:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/XMPMeta;)V
    .locals 1
    .param p1, "xmp"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    .line 27
    iget-object v0, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public clearXMPMeta()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    .line 34
    return-void
.end method

.method public deleteProperty(Lcom/oneplus/media/XMPPropertyKey;)V
    .locals 3
    .param p1, "key"    # Lcom/oneplus/media/XMPPropertyKey;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-virtual {p1}, Lcom/oneplus/media/XMPPropertyKey;->getSchemaNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/media/XMPPropertyKey;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPMeta;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public getXMPMeta()Lcom/adobe/xmp/XMPMeta;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-interface {v0}, Lcom/adobe/xmp/XMPMeta;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/XMPMeta;

    return-object v0
.end method

.method public getXMPProperty(Lcom/oneplus/media/XMPPropertyKey;)Lcom/adobe/xmp/properties/XMPProperty;
    .locals 5
    .param p1, "key"    # Lcom/oneplus/media/XMPPropertyKey;

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p1, :cond_0

    .line 63
    return-object v2

    .line 64
    :cond_0
    const/4 v1, 0x0

    .line 67
    .local v1, "property":Lcom/adobe/xmp/properties/XMPProperty;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-virtual {p1}, Lcom/oneplus/media/XMPPropertyKey;->getSchemaNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oneplus/media/XMPPropertyKey;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/adobe/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPProperty;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    .end local v1    # "property":Lcom/adobe/xmp/properties/XMPProperty;
    :goto_0
    return-object v1

    .line 70
    .restart local v1    # "property":Lcom/adobe/xmp/properties/XMPProperty;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/media/SimpleXMPContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getXMPMetaProperty() - Error to get property"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerXMPNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "suggestedPrefix"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    .line 82
    .local v2, "registry":Lcom/adobe/xmp/XMPSchemaRegistry;
    invoke-interface {v2, p1}, Lcom/adobe/xmp/XMPSchemaRegistry;->deleteNamespace(Ljava/lang/String;)V

    .line 83
    const/4 v1, 0x0

    .line 86
    .local v1, "prefix":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "prefix":Ljava/lang/String;
    sget-object v3, Lcom/oneplus/media/SimpleXMPContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerXMPNamespace() - Namespace: "

    const-string/jumbo v5, ", prefix: "

    invoke-static {v3, v4, p1, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/oneplus/media/SimpleXMPContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerXMPNamespace() - Error to register namespace"

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public replaceXMPMeta(Lcom/adobe/xmp/XMPMeta;)V
    .locals 1
    .param p1, "xmp"    # Lcom/adobe/xmp/XMPMeta;

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 102
    iput-object v0, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    .line 99
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-interface {p1}, Lcom/adobe/xmp/XMPMeta;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/xmp/XMPMeta;

    iput-object v0, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    goto :goto_0
.end method

.method public setXMPProperty(Lcom/oneplus/media/XMPPropertyKey;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Lcom/oneplus/media/XMPPropertyKey;
    .param p2, "propValue"    # Ljava/lang/Object;

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/media/SimpleXMPContainer;->m_XMPMeta:Lcom/adobe/xmp/XMPMeta;

    invoke-virtual {p1}, Lcom/oneplus/media/XMPPropertyKey;->getSchemaNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/media/XMPPropertyKey;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    sget-object v1, Lcom/oneplus/media/SimpleXMPContainer;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setXMPMetaProperty() - Error to set property"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
