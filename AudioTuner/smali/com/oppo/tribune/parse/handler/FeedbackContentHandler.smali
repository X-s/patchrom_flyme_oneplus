.class public Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "FeedbackContentHandler.java"


# instance fields
.field private mDataSb:Ljava/lang/StringBuilder;

.field private mMessage:Ljava/lang/String;

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mMessage:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mTagName:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 40
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 46
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mTagName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "message"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mMessage:Ljava/lang/String;

    .line 60
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mTagName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    .line 30
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 65
    return-void
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
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 70
    iput-object p2, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mTagName:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/FeedbackContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    .line 77
    return-void
.end method
