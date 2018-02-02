.class public final Lcom/adobe/xmp/options/SerializeOptions;
.super Lcom/adobe/xmp/options/Options;
.source "SerializeOptions.java"


# static fields
.field public static final ENCODE_UTF16BE:I = 0x2

.field public static final ENCODE_UTF16LE:I = 0x3

.field public static final ENCODE_UTF8:I = 0x0

.field private static final ENCODING_MASK:I = 0x3

.field public static final EXACT_PACKET_LENGTH:I = 0x200

.field public static final INCLUDE_THUMBNAIL_PAD:I = 0x100

.field private static final LITTLEENDIAN_BIT:I = 0x1

.field public static final OMIT_PACKET_WRAPPER:I = 0x10

.field public static final READONLY_PACKET:I = 0x20

.field public static final SORT:I = 0x1000

.field public static final USE_COMPACT_FORMAT:I = 0x40

.field private static final UTF16_BIT:I = 0x2


# instance fields
.field private baseIndent:I

.field private indent:Ljava/lang/String;

.field private newline:Ljava/lang/String;

.field private omitVersionAttribute:Z

.field private padding:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    const/16 v0, 0x800

    .line 63
    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    const-string/jumbo v0, "\n"

    .line 68
    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string/jumbo v0, "  "

    .line 73
    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 80
    iput-boolean v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    const/16 v0, 0x800

    .line 63
    iput v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    const-string/jumbo v0, "\n"

    .line 68
    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    const-string/jumbo v0, "  "

    .line 73
    iput-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 80
    iput-boolean v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    .line 100
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 390
    :try_start_0
    new-instance v0, Lcom/adobe/xmp/options/SerializeOptions;

    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;-><init>(I)V

    .line 391
    iget v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setBaseIndent(I)Lcom/adobe/xmp/options/SerializeOptions;

    .line 392
    iget-object v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setIndent(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;

    .line 393
    iget-object v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setNewline(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;

    .line 394
    iget v1, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    invoke-virtual {v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setPadding(I)Lcom/adobe/xmp/options/SerializeOptions;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 400
    return-object v0
.end method

.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    .line 418
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "OMIT_PACKET_WRAPPER"

    .line 412
    return-object v0

    :sswitch_1
    const-string/jumbo v0, "READONLY_PACKET"

    .line 413
    return-object v0

    :sswitch_2
    const-string/jumbo v0, "USE_COMPACT_FORMAT"

    .line 414
    return-object v0

    :sswitch_3
    const-string/jumbo v0, "INCLUDE_THUMBNAIL_PAD"

    .line 415
    return-object v0

    :sswitch_4
    const-string/jumbo v0, "EXACT_PACKET_LENGTH"

    .line 416
    return-object v0

    :sswitch_5
    const-string/jumbo v0, "NORMALIZED"

    .line 417
    return-object v0

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
        0x100 -> :sswitch_3
        0x200 -> :sswitch_4
        0x1000 -> :sswitch_5
    .end sparse-switch
.end method

.method public getBaseIndent()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    return v0
.end method

.method public getEncodeUTF16BE()Z
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getEncodeUTF16LE()Z
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/adobe/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UTF-8"

    .line 375
    return-object v0

    :cond_0
    const-string/jumbo v0, "UTF-16BE"

    .line 367
    return-object v0

    :cond_1
    const-string/jumbo v0, "UTF-16LE"

    .line 371
    return-object v0
.end method

.method public getExactPacketLength()Z
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 187
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIncludeThumbnailPad()Z
    .locals 1

    .prologue
    const/16 v0, 0x100

    .line 167
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getNewline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitPacketWrapper()Z
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 108
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getOmitVersionAttribute()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->omitVersionAttribute:Z

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    return v0
.end method

.method public getReadOnlyPacket()Z
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 128
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getSort()Z
    .locals 1

    .prologue
    const/16 v0, 0x1000

    .line 207
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getUseCompactFormat()Z
    .locals 1

    .prologue
    const/16 v0, 0x40

    .line 148
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/SerializeOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    const/16 v0, 0x1370

    .line 428
    return v0
.end method

.method public setBaseIndent(I)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0

    .prologue
    .line 282
    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->baseIndent:I

    .line 283
    return-object p0
.end method

.method public setEncodeUTF16BE(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 238
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    const/4 v0, 0x2

    .line 239
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 240
    return-object p0
.end method

.method public setEncodeUTF16LE(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 261
    invoke-virtual {p0, v1, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 262
    return-object p0
.end method

.method public setExactPacketLength(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 198
    return-object p0
.end method

.method public setIncludeThumbnailPad(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    .prologue
    const/16 v0, 0x100

    .line 177
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 178
    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->indent:Ljava/lang/String;

    .line 304
    return-object p0
.end method

.method public setNewline(Ljava/lang/String;)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->newline:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public setOmitPacketWrapper(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 118
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 119
    return-object p0
.end method

.method public setPadding(I)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 0

    .prologue
    .line 345
    iput p1, p0, Lcom/adobe/xmp/options/SerializeOptions;->padding:I

    .line 346
    return-object p0
.end method

.method public setReadOnlyPacket(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 138
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 139
    return-object p0
.end method

.method public setSort(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    .prologue
    const/16 v0, 0x1000

    .line 217
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 218
    return-object p0
.end method

.method public setUseCompactFormat(Z)Lcom/adobe/xmp/options/SerializeOptions;
    .locals 1

    .prologue
    const/16 v0, 0x40

    .line 158
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/SerializeOptions;->setOption(IZ)V

    .line 159
    return-object p0
.end method
