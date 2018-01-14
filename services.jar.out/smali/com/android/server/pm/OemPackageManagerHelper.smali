.class public Lcom/android/server/pm/OemPackageManagerHelper;
.super Ljava/lang/Object;
.source "OemPackageManagerHelper.java"


# static fields
.field static final GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

.field static final RESERVE_APP_PATH:Ljava/lang/String; = "/system/reserve"

.field private static final TAG:Ljava/lang/String; = "OemPackageManagerHelper"

.field static final TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

.field static mDeletedReserveApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    .line 163
    new-array v0, v4, [Landroid/content/pm/Signature;

    .line 164
    new-instance v1, Landroid/content/pm/Signature;

    const-string/jumbo v2, "308204433082032ba003020102020900c2e08746644a308d300d06092a864886f70d01010405003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3038303832313233313333345a170d3336303130373233313333345a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820120300d06092a864886f70d01010105000382010d00308201080282010100ab562e00d83ba208ae0a966f124e29da11f2ab56d08f58e2cca91303e9b754d372f640a71b1dcb130967624e4656a7776a92193db2e5bfb724a91e77188b0e6a47a43b33d9609b77183145ccdf7b2e586674c9e1565b1f4c6a5955bff251a63dabf9c55c27222252e875e4f8154a645f897168c0b1bfc612eabf785769bb34aa7984dc7e2ea2764cae8307d8c17154d7ee5f64a51a44a602c249054157dc02cd5f5c0e55fbef8519fbe327f0b1511692c5a06f19d18385f5c4dbc2d6b93f68cc2979c70e18ab93866b3bd5db8999552a0e3b4c99df58fb918bedc182ba35e003c1b4b10dd244a8ee24fffd333872ab5221985edab0fc0d0b145b6aa192858e79020103a381d93081d6301d0603551d0e04160414c77d8cc2211756259a7fd382df6be398e4d786a53081a60603551d2304819e30819b8014c77d8cc2211756259a7fd382df6be398e4d786a5a178a4763074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964820900c2e08746644a308d300c0603551d13040530030101ff300d06092a864886f70d010104050003820101006dd252ceef85302c360aaace939bcff2cca904bb5d7a1661f8ae46b2994204d0ff4a68c7ed1a531ec4595a623ce60763b167297a7ae35712c407f208f0cb109429124d7b106219c084ca3eb3f9ad5fb871ef92269a8be28bf16d44c8d9a08e6cb2f005bb3fe2cb96447e868e731076ad45b33f6009ea19c161e62641aa99271dfd5228c5c587875ddb7f452758d661f6cc0cccb7352e424cc4365c523532f7325137593c4ae341f4db41edda0d0b1071a7c440f0fe9ea01cb627ca674369d084bd2fd911ff06cdbf2cfa10dc0f893ae35762919048c7efc64c7144178342f70581c9de573af55b390dd7fdb9418631895d5f759f30112687ff621410c069308a"

    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 163
    sput-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    .line 166
    new-array v0, v4, [[Landroid/content/pm/Signature;

    sget-object v1, Lcom/android/server/pm/OemPackageManagerHelper;->GOOGLE_SIGNATURES:[Landroid/content/pm/Signature;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAppHasDeleted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v2, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "name$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const/4 v2, 0x1

    return v2

    .line 51
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v4, 0x0

    .line 169
    if-nez p0, :cond_1

    .line 170
    if-nez p1, :cond_0

    .line 171
    const/4 v3, 0x1

    .line 170
    :goto_0
    return v3

    .line 172
    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    .line 174
    :cond_1
    if-nez p1, :cond_2

    .line 175
    const/4 v3, -0x2

    return v3

    .line 177
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 178
    .local v0, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p0, v3

    .line 179
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v1, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    array-length v5, p1

    move v3, v4

    :goto_2
    if-ge v3, v5, :cond_4

    aget-object v2, p1, v3

    .line 183
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 186
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 187
    return v4

    .line 189
    :cond_5
    const/4 v3, -0x3

    return v3
.end method

.method static getDataFreeSpace()J
    .locals 8

    .prologue
    .line 151
    const-wide/16 v0, 0x0

    .line 152
    .local v0, "block":J
    const-wide/16 v2, 0x0

    .line 153
    .local v2, "blockSize":J
    const-wide/16 v4, 0x0

    .line 154
    .local v4, "dataFreeSpace":J
    new-instance v6, Landroid/os/StatFs;

    const-string/jumbo v7, "/data"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 155
    .local v6, "mStatFs":Landroid/os/StatFs;
    if-eqz v6, :cond_0

    .line 156
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 157
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 158
    mul-long v4, v0, v2

    .line 160
    :cond_0
    return-wide v4
.end method

.method static isPackagesXMLExist()Z
    .locals 4

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, 0x1

    return v2

    .line 37
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isTrustedSystemSignature([Landroid/content/pm/Signature;)Z
    .locals 4
    .param p0, "signature"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v3, 0x0

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/pm/OemPackageManagerHelper;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 194
    sget-object v2, Lcom/android/server/pm/OemPackageManagerHelper;->TRUSTED_SIGNATURES:[[Landroid/content/pm/Signature;

    aget-object v1, v2, v0

    .line 195
    .local v1, "sig":[Landroid/content/pm/Signature;
    invoke-static {v1, p0}, Lcom/android/server/pm/OemPackageManagerHelper;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v2

    if-nez v2, :cond_0

    .line 196
    const/4 v2, 0x1

    return v2

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "sig":[Landroid/content/pm/Signature;
    :cond_1
    return v3
.end method

.method static putDeletedAppNameinList(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/server/pm/OemPackageManagerHelper;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method static readDeletedReserveAppsFromXML()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 69
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    const-string/jumbo v12, "system"

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v8, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v11, "packages-reserve.xml"

    invoke-direct {v0, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v0, "deletedReserveAppsXML":Ljava/io/File;
    const/4 v3, 0x0

    .line 72
    .local v3, "input":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 73
    return-void

    .line 76
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .end local v3    # "input":Ljava/io/FileInputStream;
    .local v4, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 78
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v7, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    :cond_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    if-eq v10, v14, :cond_2

    .line 81
    if-ne v10, v13, :cond_1

    .line 84
    :cond_2
    if-eq v10, v14, :cond_3

    .line 85
    return-void

    .line 87
    :cond_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 88
    .local v6, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    if-eq v10, v13, :cond_6

    .line 89
    if-ne v10, v15, :cond_5

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v6, :cond_6

    .line 90
    :cond_5
    if-eq v10, v15, :cond_4

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    .line 93
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v11, "package"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 95
    const-string/jumbo v11, "packageName"

    const/4 v12, 0x0

    invoke-interface {v7, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "name":Ljava/lang/String;
    sget-object v11, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 99
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "outerDepth":I
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v10    # "type":I
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v3, v4

    .line 100
    .end local v4    # "input":Ljava/io/FileInputStream;
    :goto_1
    const-string/jumbo v11, "OemPackageManagerHelper"

    const-string/jumbo v12, "Error reading reserve package list"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    return-void

    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "outerDepth":I
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "type":I
    :cond_6
    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    goto :goto_2

    .line 101
    .end local v6    # "outerDepth":I
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    .local v3, "input":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 102
    .end local v3    # "input":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    const-string/jumbo v11, "OemPackageManagerHelper"

    const-string/jumbo v12, "Error reading reserve package list"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_1

    .line 101
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v4    # "input":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method static writeDeletedReserveAppsToXML()V
    .locals 12

    .prologue
    .line 110
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "system"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v7, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v8, "packages-reserve.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v0, "deletedReserveAppsXML":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 116
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v4, "output":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 119
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v8, "utf-8"

    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 120
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    const-string/jumbo v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 122
    const-string/jumbo v8, "packages"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    sget-object v8, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 125
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 126
    const-string/jumbo v8, "package"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    const-string/jumbo v9, "packageName"

    sget-object v8, Lcom/android/server/pm/OemPackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const-string/jumbo v8, "package"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const-string/jumbo v8, "packages"

    const/4 v9, 0x0

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 133
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 134
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 135
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 138
    const/16 v9, 0x1b4

    .line 141
    const/4 v10, -0x1

    const/4 v11, -0x1

    .line 137
    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "output":Ljava/io/BufferedOutputStream;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "size":I
    :goto_1
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "OemPackageManagerHelper"

    const-string/jumbo v9, "Failed to write packages to list"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
