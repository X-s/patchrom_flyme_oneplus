.class public final Lcom/adobe/xmp/options/PropertyOptions;
.super Lcom/adobe/xmp/options/Options;
.source "PropertyOptions.java"


# static fields
.field public static final ARRAY:I = 0x200

.field public static final ARRAY_ALTERNATE:I = 0x800

.field public static final ARRAY_ALT_TEXT:I = 0x1000

.field public static final ARRAY_ORDERED:I = 0x400

.field public static final DELETE_EXISTING:I = 0x20000000

.field public static final HAS_LANGUAGE:I = 0x40

.field public static final HAS_QUALIFIERS:I = 0x10

.field public static final HAS_TYPE:I = 0x80

.field public static final NO_OPTIONS:I = 0x0

.field public static final QUALIFIER:I = 0x20

.field public static final SCHEMA_NODE:I = -0x80000000

.field public static final STRUCT:I = 0x100

.field public static final URI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public assertConsistency(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x67

    .line 418
    and-int/lit16 v0, p1, 0x100

    if-gtz v0, :cond_2

    .line 423
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-gtz v0, :cond_3

    .line 428
    :cond_1
    return-void

    .line 418
    :cond_2
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_0

    .line 420
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "IsStruct and IsArray options are mutually exclusive"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 423
    :cond_3
    and-int/lit16 v0, p1, 0x300

    if-lez v0, :cond_1

    .line 425
    new-instance v0, Lcom/adobe/xmp/XMPException;

    const-string/jumbo v1, "Structs and arrays can\'t have \"value\" options"

    invoke-direct {v0, v1, v2}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    .line 404
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "URI"

    .line 393
    return-object v0

    :sswitch_1
    const-string/jumbo v0, "HAS_QUALIFIER"

    .line 394
    return-object v0

    :sswitch_2
    const-string/jumbo v0, "QUALIFIER"

    .line 395
    return-object v0

    :sswitch_3
    const-string/jumbo v0, "HAS_LANGUAGE"

    .line 396
    return-object v0

    :sswitch_4
    const-string/jumbo v0, "HAS_TYPE"

    .line 397
    return-object v0

    :sswitch_5
    const-string/jumbo v0, "STRUCT"

    .line 398
    return-object v0

    :sswitch_6
    const-string/jumbo v0, "ARRAY"

    .line 399
    return-object v0

    :sswitch_7
    const-string/jumbo v0, "ARRAY_ORDERED"

    .line 400
    return-object v0

    :sswitch_8
    const-string/jumbo v0, "ARRAY_ALTERNATE"

    .line 401
    return-object v0

    :sswitch_9
    const-string/jumbo v0, "ARRAY_ALT_TEXT"

    .line 402
    return-object v0

    :sswitch_a
    const-string/jumbo v0, "SCHEMA_NODE"

    .line 403
    return-object v0

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x2 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
        0x400 -> :sswitch_7
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_9
    .end sparse-switch
.end method

.method public equalArrayTypes(Lcom/adobe/xmp/options/PropertyOptions;)Z
    .locals 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/PropertyOptions;->isArray()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 332
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public getHasLanguage()Z
    .locals 1

    .prologue
    const/16 v0, 0x40

    .line 142
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getHasQualifiers()Z
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 101
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getHasType()Z
    .locals 1

    .prologue
    const/16 v0, 0x80

    .line 160
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    const v0, -0x7fffe00e

    .line 371
    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 199
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAltText()Z
    .locals 1

    .prologue
    const/16 v0, 0x1000

    .line 263
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAlternate()Z
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 241
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayOrdered()Z
    .locals 1

    .prologue
    const/16 v0, 0x400

    .line 220
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isCompositeProperty()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isOnlyArrayOptions()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x1e01

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isQualifier()Z
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 124
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSchemaNode()Z
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 289
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStruct()Z
    .locals 1

    .prologue
    const/16 v0, 0x100

    .line 178
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isURI()Z
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 79
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public mergeWith(Lcom/adobe/xmp/options/PropertyOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/PropertyOptions;->setOptions(I)V

    goto :goto_0
.end method

.method public setArray(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 209
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 210
    return-object p0
.end method

.method public setArrayAltText(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x1000

    .line 273
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 274
    return-object p0
.end method

.method public setArrayAlternate(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 251
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 252
    return-object p0
.end method

.method public setArrayOrdered(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x400

    .line 230
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 231
    return-object p0
.end method

.method public setHasLanguage(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x40

    .line 152
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 153
    return-object p0
.end method

.method public setHasQualifiers(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 112
    return-object p0
.end method

.method public setHasType(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x80

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 171
    return-object p0
.end method

.method public setQualifier(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 134
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 135
    return-object p0
.end method

.method public setSchemaNode(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 299
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 300
    return-object p0
.end method

.method public setStruct(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/16 v0, 0x100

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 189
    return-object p0
.end method

.method public setURI(Z)Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/PropertyOptions;->setOption(IZ)V

    .line 90
    return-object p0
.end method
