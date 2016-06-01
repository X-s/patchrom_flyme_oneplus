.class public Lcom/oppo/tribune/parse/handler/PhotoContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PhotoContentHandler.java"


# instance fields
.field private mAgent:Ljava/lang/String;

.field private mAppid:Ljava/lang/String;

.field private mAvatartype:Ljava/lang/String;

.field private mDataSb:Ljava/lang/StringBuilder;

.field private mDescription:Ljava/lang/String;

.field private mInajax:Ljava/lang/String;

.field private mInput:Ljava/lang/String;

.field private mMessagecode:Ljava/lang/String;

.field private mRoot:Ljava/lang/String;

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mInajax:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAppid:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mInput:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAgent:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAvatartype:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mRoot:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mMessagecode:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDescription:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

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
    .line 94
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 96
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 98
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
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
    .line 46
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 47
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
    .line 63
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "inajax"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mInajax:Ljava/lang/String;

    .line 89
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    .line 90
    return-void

    .line 70
    :cond_1
    const-string v1, "appid"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAppid:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_2
    const-string v1, "input"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mInput:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_3
    const-string v1, "agent"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAgent:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_4
    const-string v1, "avatartype"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAvatartype:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_5
    const-string v1, "messagecode"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mMessagecode:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_6
    const-string v1, "description"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDescription:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_7
    const-string v1, "root"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mRoot:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatartype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mAvatartype:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getInajax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mInajax:Ljava/lang/String;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mInput:Ljava/lang/String;

    return-object v0
.end method

.method public getMessagecode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mMessagecode:Ljava/lang/String;

    return-object v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mRoot:Ljava/lang/String;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    .line 39
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
    .line 42
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 43
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
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 52
    iput-object p2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->tagName:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/PhotoContentHandler;->mDataSb:Ljava/lang/StringBuilder;

    .line 59
    return-void
.end method
