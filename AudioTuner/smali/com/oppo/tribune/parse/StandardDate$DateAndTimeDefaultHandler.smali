.class Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StandardDate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/parse/StandardDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateAndTimeDefaultHandler"
.end annotation


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mDate:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private mTimeZone:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mBuilder:Ljava/lang/StringBuilder;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/parse/StandardDate$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/parse/StandardDate$1;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;)Lcom/oppo/tribune/parse/StandardDate;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->getResult()Lcom/oppo/tribune/parse/StandardDate;

    move-result-object v0

    return-object v0
.end method

.method private getResult()Lcom/oppo/tribune/parse/StandardDate;
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/oppo/tribune/parse/StandardDate;

    iget-object v1, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mTime:Ljava/lang/String;

    iget v3, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mTimeZone:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/tribune/parse/StandardDate;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 82
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 84
    iget-object v0, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 85
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "text":Ljava/lang/String;
    const-string v1, "TimeZone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {v0}, Lcom/oppo/tribune/util/Utils;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mTimeZone:I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v1, "Date"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iput-object v0, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mDate:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_2
    const-string v1, "Time"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iput-object v0, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
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
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/parse/StandardDate$DateAndTimeDefaultHandler;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    return-void
.end method
