.class Landroid/media/CCParser$CCData;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCData"
.end annotation


# static fields
.field private static final mCtrlCodeMap:[Ljava/lang/String;

.field private static final mProtugueseCharMap:[Ljava/lang/String;

.field private static final mSpanishCharMap:[Ljava/lang/String;

.field private static final mSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 763
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RCL"

    aput-object v1, v0, v3

    const-string v1, "BS"

    aput-object v1, v0, v4

    const-string v1, "AOF"

    aput-object v1, v0, v5

    const-string v1, "AON"

    aput-object v1, v0, v6

    const-string v1, "DER"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "RU2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RU3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RU4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FON"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "RDC"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "RTD"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EDM"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "CR"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ENM"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EOC"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    .line 770
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u00ae"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u00b0"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u00bd"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u00bf"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u2122"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u00a2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u00a3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u266a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u00e0"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u00a0"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u00e8"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u00e2"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u00ea"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u00ee"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u00f4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u00fb"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    .line 789
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u00c1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u00c9"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u00d3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u00da"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u00dc"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u00fc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u2018"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u00a1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u2014"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u00a9"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u2120"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u2022"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u201c"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u201d"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u00c0"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u00c2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u00c7"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u00c8"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u00ca"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u00cb"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u00eb"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\u00ce"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "\u00cf"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\u00ef"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u00d4"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u00d9"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u00f9"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u00db"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u00ab"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "\u00bb"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    .line 826
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u00c3"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u00e3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u00cd"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u00cc"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u00ec"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u00d2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u00f2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u00d5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u00f5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u00c4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u00e4"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u00d6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u00f6"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u00df"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u00a4"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\u2502"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "\u00c5"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\u00e5"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u00d8"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u00f8"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u250c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u2510"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u2514"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "\u2518"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(BBB)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "data1"    # B
    .param p3, "data2"    # B

    .prologue
    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput-byte p1, p0, Landroid/media/CCParser$CCData;->mType:B

    .line 878
    iput-byte p2, p0, Landroid/media/CCParser$CCData;->mData1:B

    .line 879
    iput-byte p3, p0, Landroid/media/CCParser$CCData;->mData2:B

    .line 880
    return-void
.end method

.method static synthetic access$000(Landroid/media/CCParser$CCData;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/CCParser$CCData;

    .prologue
    .line 758
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->isExtendedChar()Z

    move-result v0

    return v0
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "ctrlCode"    # I

    .prologue
    .line 936
    sget-object v0, Landroid/media/CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x20

    aget-object v0, v0, v1

    return-object v0
.end method

.method static fromByteArray([B)[Landroid/media/CCParser$CCData;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 864
    array-length v2, p0

    div-int/lit8 v2, v2, 0x3

    new-array v0, v2, [Landroid/media/CCParser$CCData;

    .line 866
    .local v0, "ccData":[Landroid/media/CCParser$CCData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 867
    new-instance v2, Landroid/media/CCParser$CCData;

    mul-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    invoke-direct {v2, v3, v4, v5}, Landroid/media/CCParser$CCData;-><init>(BBB)V

    aput-object v2, v0, v1

    .line 866
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    :cond_0
    return-object v0
.end method

.method private getBasicChar(B)C
    .locals 1
    .param p1, "data"    # B

    .prologue
    .line 957
    sparse-switch p1, :sswitch_data_0

    .line 968
    int-to-char v0, p1

    .line 970
    .local v0, "c":C
    :goto_0
    return v0

    .line 958
    .end local v0    # "c":C
    :sswitch_0
    const/16 v0, 0xe1

    .restart local v0    # "c":C
    goto :goto_0

    .line 959
    .end local v0    # "c":C
    :sswitch_1
    const/16 v0, 0xe9

    .restart local v0    # "c":C
    goto :goto_0

    .line 960
    .end local v0    # "c":C
    :sswitch_2
    const/16 v0, 0xed

    .restart local v0    # "c":C
    goto :goto_0

    .line 961
    .end local v0    # "c":C
    :sswitch_3
    const/16 v0, 0xf3

    .restart local v0    # "c":C
    goto :goto_0

    .line 962
    .end local v0    # "c":C
    :sswitch_4
    const/16 v0, 0xfa

    .restart local v0    # "c":C
    goto :goto_0

    .line 963
    .end local v0    # "c":C
    :sswitch_5
    const/16 v0, 0xe7

    .restart local v0    # "c":C
    goto :goto_0

    .line 964
    .end local v0    # "c":C
    :sswitch_6
    const/16 v0, 0xf7

    .restart local v0    # "c":C
    goto :goto_0

    .line 965
    .end local v0    # "c":C
    :sswitch_7
    const/16 v0, 0xd1

    .restart local v0    # "c":C
    goto :goto_0

    .line 966
    .end local v0    # "c":C
    :sswitch_8
    const/16 v0, 0xf1

    .restart local v0    # "c":C
    goto :goto_0

    .line 967
    .end local v0    # "c":C
    :sswitch_9
    const/16 v0, 0x2588

    .restart local v0    # "c":C
    goto :goto_0

    .line 957
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x5c -> :sswitch_1
        0x5e -> :sswitch_2
        0x5f -> :sswitch_3
        0x60 -> :sswitch_4
        0x7b -> :sswitch_5
        0x7c -> :sswitch_6
        0x7d -> :sswitch_7
        0x7e -> :sswitch_8
        0x7f -> :sswitch_9
    .end sparse-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x7f

    const/16 v2, 0x20

    .line 974
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    if-lt v1, v2, :cond_1

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    if-gt v1, v3, :cond_1

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 976
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData1:B

    invoke-direct {p0, v1}, Landroid/media/CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 977
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-lt v1, v2, :cond_0

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-gt v1, v3, :cond_0

    .line 978
    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-direct {p0, v1}, Landroid/media/CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 980
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 983
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getExtendedChar()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3f

    const/16 v2, 0x20

    .line 996
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-gt v0, v3, :cond_1

    .line 999
    sget-object v0, Landroid/media/CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x20

    aget-object v0, v0, v1

    .line 1006
    :goto_0
    return-object v0

    .line 1000
    :cond_1
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_3

    :cond_2
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_3

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-gt v0, v3, :cond_3

    .line 1003
    sget-object v0, Landroid/media/CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x20

    aget-object v0, v0, v1

    goto :goto_0

    .line 1006
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 987
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    .line 989
    sget-object v0, Landroid/media/CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x30

    aget-object v0, v0, v1

    .line 992
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBasicChar()Z
    .locals 2

    .prologue
    .line 940
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtendedChar()Z
    .locals 2

    .prologue
    .line 949
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSpecialChar()Z
    .locals 2

    .prologue
    .line 944
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getCtrlCode()I
    .locals 2

    .prologue
    .line 883
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    .line 885
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    .line 887
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 922
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->getBasicChars()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 925
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    move-result-object v0

    .line 927
    if-nez v0, :cond_0

    .line 928
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    move-result-object v0

    .line 932
    :cond_0
    return-object v0
.end method

.method getMidRow()Landroid/media/CCParser$StyleCode;
    .locals 2

    .prologue
    .line 893
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1

    .line 895
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v0}, Landroid/media/CCParser$StyleCode;->fromByte(B)Landroid/media/CCParser$StyleCode;

    move-result-object v0

    .line 897
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPAC()Landroid/media/CCParser$PAC;
    .locals 2

    .prologue
    .line 901
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1

    .line 904
    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    iget-byte v1, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v0, v1}, Landroid/media/CCParser$PAC;->fromBytes(BB)Landroid/media/CCParser$PAC;

    move-result-object v0

    .line 906
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTabOffset()I
    .locals 2

    .prologue
    .line 910
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData1:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    const/16 v1, 0x23

    if-gt v0, v1, :cond_1

    .line 912
    iget-byte v0, p0, Landroid/media/CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x3

    .line 914
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDisplayableChar()Z
    .locals 1

    .prologue
    .line 918
    invoke-direct {p0}, Landroid/media/CCParser$CCData;->isBasicChar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/CCParser$CCData;->isSpecialChar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/media/CCParser$CCData;->isExtendedChar()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v5, 0x10

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1013
    iget-byte v4, p0, Landroid/media/CCParser$CCData;->mData1:B

    if-ge v4, v5, :cond_0

    iget-byte v4, p0, Landroid/media/CCParser$CCData;->mData2:B

    if-ge v4, v5, :cond_0

    .line 1015
    const-string v4, "[%d]Null: %02x %02x"

    new-array v5, v10, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1043
    :goto_0
    return-object v4

    .line 1018
    :cond_0
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getCtrlCode()I

    move-result v0

    .line 1019
    .local v0, "ctrlCode":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 1020
    const-string v4, "[%d]%s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v0}, Landroid/media/CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1023
    :cond_1
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getTabOffset()I

    move-result v3

    .line 1024
    .local v3, "tabOffset":I
    if-lez v3, :cond_2

    .line 1025
    const-string v4, "[%d]Tab%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1028
    :cond_2
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getPAC()Landroid/media/CCParser$PAC;

    move-result-object v2

    .line 1029
    .local v2, "pac":Landroid/media/CCParser$PAC;
    if-eqz v2, :cond_3

    .line 1030
    const-string v4, "[%d]PAC: %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Landroid/media/CCParser$PAC;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1033
    :cond_3
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getMidRow()Landroid/media/CCParser$StyleCode;

    move-result-object v1

    .line 1034
    .local v1, "m":Landroid/media/CCParser$StyleCode;
    if-eqz v1, :cond_4

    .line 1035
    const-string v4, "[%d]Mid-row: %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1}, Landroid/media/CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1038
    :cond_4
    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->isDisplayableChar()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1039
    const-string v4, "[%d]Displayable: %s (%02x %02x)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/media/CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1043
    :cond_5
    const-string v4, "[%d]Invalid: %02x %02x"

    new-array v5, v10, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method
