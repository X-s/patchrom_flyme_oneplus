.class public Lcom/adobe/xmp/impl/QName;
.super Ljava/lang/Object;
.source "QName.java"


# instance fields
.field private localName:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 31
    if-gez v0, :cond_0

    const-string/jumbo v0, ""

    .line 38
    iput-object v0, p0, Lcom/adobe/xmp/impl/QName;->prefix:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/adobe/xmp/impl/QName;->localName:Ljava/lang/String;

    .line 41
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/xmp/impl/QName;->prefix:Ljava/lang/String;

    .line 34
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/xmp/impl/QName;->localName:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/adobe/xmp/impl/QName;->prefix:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/adobe/xmp/impl/QName;->localName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/xmp/impl/QName;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/adobe/xmp/impl/QName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hasPrefix()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/adobe/xmp/impl/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/adobe/xmp/impl/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method
