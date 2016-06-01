.class public Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BaseDefaultHandler.java"


# instance fields
.field protected final mB:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->mB:Ljava/lang/StringBuilder;

    .line 27
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 40
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->mB:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 41
    return-void
.end method

.method protected getInt()I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLong()J
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->mB:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected parseLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/oppo/tribune/util/Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 33
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->mB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/BaseDefaultHandler;->mB:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method
