.class Lcom/adobe/xmp/impl/ParseState;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# instance fields
.field private pos:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 392
    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    .line 400
    iput-object p1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    .line 401
    return-void
.end method


# virtual methods
.method public ch()C
    .locals 2

    .prologue
    .line 439
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public ch(I)C
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public gatherInt(Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 474
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    move v1, v2

    move v3, v2

    :goto_0
    const/16 v4, 0x30

    .line 475
    if-le v4, v0, :cond_1

    .line 483
    :cond_0
    if-nez v1, :cond_2

    .line 500
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/16 v4, 0x39

    .line 475
    if-gt v0, v4, :cond_0

    .line 477
    mul-int/lit8 v1, v3, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int v3, v1, v0

    .line 478
    const/4 v1, 0x1

    .line 479
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    .line 480
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/impl/ParseState;->ch(I)C

    move-result v0

    goto :goto_0

    .line 485
    :cond_2
    if-gt v3, p2, :cond_3

    .line 489
    if-ltz v3, :cond_4

    .line 495
    return v3

    .line 487
    :cond_3
    return p2

    .line 491
    :cond_4
    return v2
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public pos()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    return v0
.end method

.method public skip()V
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/ParseState;->pos:I

    .line 451
    return-void
.end method
