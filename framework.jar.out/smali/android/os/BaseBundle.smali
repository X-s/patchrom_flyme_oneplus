.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"


# static fields
.field static final BUNDLE_MAGIC:I = 0x4c444e42

.field static final DEBUG:Z = false

.field static final EMPTY_PARCEL:Landroid/os/Parcel;

.field private static final TAG:Ljava/lang/String; = "Bundle"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    sput-object v0, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 77
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 112
    return-void
.end method

.method constructor <init>(Landroid/os/BaseBundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/BaseBundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 51
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 121
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v1, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v0, v1, :cond_0

    .line 123
    sget-object v0, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 133
    :goto_0
    iget-object v0, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 139
    :goto_1
    iget-object v0, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 140
    return-void

    .line 125
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 126
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 127
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 130
    :cond_1
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0

    .line 136
    :cond_2
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 51
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 86
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 51
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 102
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;I)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "capacity"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 51
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 67
    if-lez p2, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    :goto_0
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 69
    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .end local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 70
    return-void

    .line 67
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_0
.end method

.method private readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 1355
    if-nez p2, :cond_0

    .line 1357
    sget-object v3, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1379
    :goto_0
    return-void

    .line 1360
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1361
    .local v0, "magic":I
    const v3, 0x4c444e42    # 5.146036E7f

    if-eq v0, v3, :cond_1

    .line 1363
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad magic number for Bundle: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1368
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1369
    .local v1, "offset":I
    add-int v3, v1, p2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1372
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1373
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1376
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1378
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 258
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 259
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 270
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 282
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 625
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 660
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 661
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 668
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 665
    .restart local p2    # "defaultValue":Z
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 666
    :catch_0
    move-exception v6

    .line 667
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1084
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1085
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1086
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1093
    :goto_0
    return-object v3

    .line 1090
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1091
    :catch_0
    move-exception v1

    .line 1092
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1093
    goto :goto_0
.end method

.method getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 693
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 694
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 695
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 696
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 702
    .end local v2    # "o":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 699
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v5

    .line 701
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 702
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0
.end method

.method getByteArray(Ljava/lang/String;)[B
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1107
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1108
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1109
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1116
    :goto_0
    return-object v3

    .line 1113
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v1

    .line 1115
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1116
    goto :goto_0
.end method

.method getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method getChar(Ljava/lang/String;C)C
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 728
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 729
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 736
    .end local p2    # "defaultValue":C
    :goto_0
    return p2

    .line 733
    .restart local p2    # "defaultValue":C
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 734
    :catch_0
    move-exception v6

    .line 735
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method getCharArray(Ljava/lang/String;)[C
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1153
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1154
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1155
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1162
    :goto_0
    return-object v3

    .line 1159
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v1

    .line 1161
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1162
    goto :goto_0
.end method

.method getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 956
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 957
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 959
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 960
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 961
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 962
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 979
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1291
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1292
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1293
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1300
    :goto_0
    return-object v3

    .line 1297
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/CharSequence;

    move-object v3, v0

    check-cast v3, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1298
    :catch_0
    move-exception v1

    .line 1299
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "CharSequence[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1300
    goto :goto_0
.end method

.method getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1061
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1062
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1063
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1070
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1067
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<CharSequence>"

    invoke-virtual {p0, p1, v1, v3, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1070
    goto :goto_0
.end method

.method getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 885
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 897
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 898
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 899
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 906
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .line 903
    .restart local p2    # "defaultValue":D
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 904
    :catch_0
    move-exception v6

    .line 905
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1245
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1246
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1247
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1254
    :goto_0
    return-object v3

    .line 1251
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v1

    .line 1253
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1254
    goto :goto_0
.end method

.method getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 850
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 851
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method getFloat(Ljava/lang/String;F)F
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 863
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 864
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 865
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 872
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    .line 869
    .restart local p2    # "defaultValue":F
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 870
    :catch_0
    move-exception v6

    .line 871
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method getFloatArray(Ljava/lang/String;)[F
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1222
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1223
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1224
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1231
    :goto_0
    return-object v3

    .line 1228
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1231
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 783
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 796
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 797
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 804
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 801
    .restart local p2    # "defaultValue":I
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 802
    :catch_0
    move-exception v6

    .line 803
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1176
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1177
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1178
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1185
    :goto_0
    return-object v3

    .line 1182
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "int[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1185
    goto :goto_0
.end method

.method getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1015
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1016
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1017
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1024
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1021
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<Integer>"

    invoke-virtual {p0, p1, v1, v3, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1024
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 816
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 817
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 829
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 830
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 831
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 838
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 835
    .restart local p2    # "defaultValue":J
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 836
    :catch_0
    move-exception v6

    .line 837
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1199
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1200
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1201
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1208
    :goto_0
    return-object v3

    .line 1205
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1206
    :catch_0
    move-exception v1

    .line 1207
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "long[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1208
    goto :goto_0
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 153
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 154
    .local v2, "size":I
    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 155
    const-string v4, "Bundle"

    const-string v5, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    if-nez v2, :cond_1

    move-object v1, v3

    .line 165
    :goto_0
    return-object v1

    .line 160
    :cond_1
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 162
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "getPairValue()"

    const-string v5, "String"

    invoke-virtual {p0, v4, v1, v5, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v3

    .line 165
    goto :goto_0
.end method

.method getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 992
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 993
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 994
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1001
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 998
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "Serializable"

    invoke-virtual {p0, p1, v1, v3, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1001
    goto :goto_0
.end method

.method getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method getShort(Ljava/lang/String;S)S
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 761
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 762
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 763
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 770
    .end local p2    # "defaultValue":S
    :goto_0
    return p2

    .line 767
    .restart local p2    # "defaultValue":S
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 768
    :catch_0
    move-exception v6

    .line 769
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method getShortArray(Ljava/lang/String;)[S
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1130
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1131
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1132
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1139
    :goto_0
    return-object v3

    .line 1136
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v1

    .line 1138
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "short[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1139
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 920
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 921
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 923
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 924
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 926
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 942
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1268
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1269
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1270
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1277
    :goto_0
    return-object v3

    .line 1274
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v1

    .line 1276
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1277
    goto :goto_0
.end method

.method getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1038
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1039
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1040
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1047
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1044
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<String>"

    invoke-virtual {p0, p1, v1, v3, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1047
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 250
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isParcelled()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 323
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 302
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    .line 303
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 304
    return-void
.end method

.method putAll(Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "map"    # Landroid/util/ArrayMap;

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 313
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 314
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 334
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 335
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 503
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void
.end method

.method putByte(Ljava/lang/String;B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 347
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method

.method putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 515
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    return-void
.end method

.method putChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 359
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 539
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-void
.end method

.method putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 443
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    return-void
.end method

.method putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 611
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    return-void
.end method

.method putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 479
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 419
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 587
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    return-void
.end method

.method putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 407
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 575
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 383
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 551
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void
.end method

.method putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 455
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 395
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 563
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    return-void
.end method

.method putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 491
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-void
.end method

.method putShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 371
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method

.method putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 526
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 527
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 431
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 599
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    return-void
.end method

.method putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 467
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1348
    .local v0, "length":I
    if-gez v0, :cond_0

    .line 1349
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length in parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1351
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1352
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 292
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 176
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 177
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 242
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 647
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 648
    return-void
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v1, "Bundle"

    const-string v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    return-void
.end method

.method declared-synchronized unparcel()V
    .locals 4

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v2, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v1, v2, :cond_3

    .line 200
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    .line 201
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 205
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 203
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->erase()V

    goto :goto_1

    .line 209
    :cond_3
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .local v0, "N":I
    if-ltz v0, :cond_0

    .line 215
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v1, :cond_4

    .line 216
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 221
    :goto_2
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    .line 222
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0

    .line 218
    :cond_4
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->erase()V

    .line 219
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method writeToParcelInner(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const v7, 0x4c444e42    # 5.146036E7f

    const/4 v6, 0x0

    .line 1310
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v4, :cond_1

    .line 1311
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v5, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v4, v5, :cond_0

    .line 1312
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1339
    :goto_0
    return-void

    .line 1314
    :cond_0
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 1315
    .local v1, "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    iget-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p1, v4, v6, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_0

    .line 1321
    .end local v1    # "length":I
    :cond_1
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 1322
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1325
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1326
    .local v2, "lengthPos":I
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 1330
    .local v3, "startPos":I
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1331
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1334
    .local v0, "endPos":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1335
    sub-int v1, v0, v3

    .line 1336
    .restart local v1    # "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method
