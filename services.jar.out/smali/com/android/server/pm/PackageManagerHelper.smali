.class public Lcom/android/server/pm/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# static fields
.field static final RESERVE_APP_PATH:Ljava/lang/String; = "/system/reserve"

.field private static final TAG:Ljava/lang/String; = "PackageManagerHelper"

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
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAppHasDeleted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v2, Lcom/android/server/pm/PackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x1

    .line 48
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getDataFreeSpace()J
    .locals 8

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    .line 149
    .local v0, "block":J
    const-wide/16 v2, 0x0

    .line 150
    .local v2, "blockSize":J
    const-wide/16 v4, 0x0

    .line 151
    .local v4, "dataFreeSpace":J
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 152
    .local v6, "mStatFs":Landroid/os/StatFs;
    if-eqz v6, :cond_0

    .line 153
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .line 154
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 155
    mul-long v4, v0, v2

    .line 157
    :cond_0
    return-wide v4
.end method

.method static isPackagesXMLExist()Z
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "system"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "packages.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    const/4 v2, 0x1

    .line 34
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static putDeletedAppNameinList(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerHelper;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/android/server/pm/PackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static readDeletedReserveAppsFromXML()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    .line 66
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "system"

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v7, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v10, "packages-reserve.xml"

    invoke-direct {v0, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, "deletedReserveAppsXML":Ljava/io/File;
    const/4 v2, 0x0

    .line 69
    .local v2, "input":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 101
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v2    # "input":Ljava/io/FileInputStream;
    .local v3, "input":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 75
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v6, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 78
    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    if-eq v9, v13, :cond_2

    if-ne v9, v12, :cond_1

    .line 81
    :cond_2
    if-eq v9, v13, :cond_3

    move-object v2, v3

    .line 82
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 84
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :cond_3
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 86
    .local v5, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v12, :cond_6

    if-ne v9, v14, :cond_5

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v5, :cond_6

    .line 87
    :cond_5
    if-eq v9, v14, :cond_4

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    .line 90
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, "tagName":Ljava/lang/String;
    const-string v10, "package"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 92
    const/4 v10, 0x0

    const-string v11, "packageName"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "name":Ljava/lang/String;
    sget-object v10, Lcom/android/server/pm/PackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 96
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 97
    .end local v3    # "input":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    :goto_2
    const-string v10, "PackageManagerHelper"

    const-string v11, "Error reading reserve package list"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "outerDepth":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    :cond_6
    move-object v2, v3

    .line 100
    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_0

    .line 98
    .end local v5    # "outerDepth":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    const-string v10, "PackageManagerHelper"

    const-string v11, "Error reading reserve package list"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local v3    # "input":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/FileInputStream;
    .restart local v2    # "input":Ljava/io/FileInputStream;
    goto :goto_3

    .line 96
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method static writeDeletedReserveAppsToXML()V
    .locals 12

    .prologue
    .line 107
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "system"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v7, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v8, "packages-reserve.xml"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v0, "deletedReserveAppsXML":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 113
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 114
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 115
    .local v4, "output":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 116
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 117
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 119
    const/4 v8, 0x0

    const-string v9, "packages"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    sget-object v8, Lcom/android/server/pm/PackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 122
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 123
    const/4 v8, 0x0

    const-string v9, "package"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    const/4 v9, 0x0

    const-string v10, "packageName"

    sget-object v8, Lcom/android/server/pm/PackageManagerHelper;->mDeletedReserveApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v9, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    const/4 v8, 0x0

    const-string v9, "package"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v8, 0x0

    const-string v9, "packages"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 130
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 131
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 132
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b4

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "output":Ljava/io/BufferedOutputStream;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "size":I
    :goto_1
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "PackageManagerHelper"

    const-string v9, "Failed to write packages to list"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
