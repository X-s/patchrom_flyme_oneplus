.class public Lcom/oppo/tribune/parse/handler/UploadContentHandle;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "UploadContentHandle.java"


# instance fields
.field private mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/util/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

.field private mDataSb:Ljava/lang/StringBuilder;

.field private mTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mAttachments:Ljava/util/List;

    .line 27
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    .line 29
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

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
    .line 112
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 114
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 116
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
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
    .line 51
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 52
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "aid"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setAid(Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    const-string v1, "attach"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mAttachments:Ljava/util/List;

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iput-object v3, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    .line 107
    :cond_1
    iput-object v3, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    .line 108
    return-void

    .line 81
    :cond_2
    const-string v1, "filename"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    const-string v1, "filetype"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setFileType(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_4
    const-string v1, "filesize"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setFileSize(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_5
    const-string v1, "attachment"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setAttachment(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_6
    const-string v1, "isimage"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setIsImage(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_7
    const-string v1, "description"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 92
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_8
    const-string v1, "ext"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 94
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setExt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :cond_9
    const-string v1, "attachsize"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 96
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setAttachSize(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_a
    const-string v1, "url"

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/util/Attachment;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/util/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mAttachments:Ljava/util/List;

    return-object v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mAttachments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mAttachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    iput-object v3, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mAttachments:Ljava/util/List;

    .line 38
    :cond_0
    iput-object v3, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    .line 39
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 41
    iput-object v3, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    .line 43
    :cond_1
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mAttachments:Ljava/util/List;

    .line 48
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
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 58
    iput-object p2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mTagName:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mDataSb:Ljava/lang/StringBuilder;

    .line 66
    const-string v0, "attach"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lcom/oppo/tribune/util/Attachment;

    invoke-direct {v0}, Lcom/oppo/tribune/util/Attachment;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/parse/handler/UploadContentHandle;->mCurrentAttachment:Lcom/oppo/tribune/util/Attachment;

    .line 70
    :cond_1
    return-void
.end method
