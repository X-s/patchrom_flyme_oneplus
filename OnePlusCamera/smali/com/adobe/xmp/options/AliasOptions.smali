.class public final Lcom/adobe/xmp/options/AliasOptions;
.super Lcom/adobe/xmp/options/Options;
.source "AliasOptions.java"


# static fields
.field public static final PROP_ARRAY:I = 0x200

.field public static final PROP_ARRAY_ALTERNATE:I = 0x800

.field public static final PROP_ARRAY_ALT_TEXT:I = 0x1000

.field public static final PROP_ARRAY_ORDERED:I = 0x400

.field public static final PROP_DIRECT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/adobe/xmp/options/Options;-><init>()V

    .line 42
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
    .line 51
    invoke-direct {p0, p1}, Lcom/adobe/xmp/options/Options;-><init>(I)V

    .line 52
    return-void
.end method


# virtual methods
.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    .line 167
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "PROP_DIRECT"

    .line 162
    return-object v0

    :sswitch_1
    const-string/jumbo v0, "ARRAY"

    .line 163
    return-object v0

    :sswitch_2
    const-string/jumbo v0, "ARRAY_ORDERED"

    .line 164
    return-object v0

    :sswitch_3
    const-string/jumbo v0, "ARRAY_ALTERNATE"

    .line 165
    return-object v0

    :sswitch_4
    const-string/jumbo v0, "ARRAY_ALT_TEXT"

    .line 166
    return-object v0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_2
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method protected getValidOptions()I
    .locals 1

    .prologue
    const/16 v0, 0x1e00

    .line 177
    return v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 69
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAltText()Z
    .locals 1

    .prologue
    const/16 v0, 0x1000

    .line 129
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAlternate()Z
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 109
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayOrdered()Z
    .locals 1

    .prologue
    const/16 v0, 0x400

    .line 89
    invoke-virtual {p0, v0}, Lcom/adobe/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setArray(Z)Lcom/adobe/xmp/options/AliasOptions;
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/AliasOptions;->setOption(IZ)V

    .line 80
    return-object p0
.end method

.method public setArrayAltText(Z)Lcom/adobe/xmp/options/AliasOptions;
    .locals 1

    .prologue
    const/16 v0, 0x1e00

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/AliasOptions;->setOption(IZ)V

    .line 141
    return-object p0
.end method

.method public setArrayAlternate(Z)Lcom/adobe/xmp/options/AliasOptions;
    .locals 1

    .prologue
    const/16 v0, 0xe00

    .line 119
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/AliasOptions;->setOption(IZ)V

    .line 120
    return-object p0
.end method

.method public setArrayOrdered(Z)Lcom/adobe/xmp/options/AliasOptions;
    .locals 1

    .prologue
    const/16 v0, 0x600

    .line 99
    invoke-virtual {p0, v0, p1}, Lcom/adobe/xmp/options/AliasOptions;->setOption(IZ)V

    .line 100
    return-object p0
.end method

.method public toPropertyOptions()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/adobe/xmp/options/PropertyOptions;

    invoke-virtual {p0}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/adobe/xmp/options/PropertyOptions;-><init>(I)V

    return-object v0
.end method
