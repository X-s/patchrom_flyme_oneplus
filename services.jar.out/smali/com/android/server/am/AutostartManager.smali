.class public Lcom/android/server/am/AutostartManager;
.super Ljava/lang/Object;
.source "AutostartManager.java"


# static fields
.field static final DEB:Z = false

.field private static final FILE_BOOT:Ljava/lang/String; = "//data//data//com.oneplus.security//shared_prefs//autostartlist.xml"

.field static final NODE_NAME:Ljava/lang/String; = "string"

.field static final TAG:Ljava/lang/String; = "AutostartManager"

.field static final THIRD_PREAPP:[Ljava/lang/String;


# instance fields
.field private bInitFinish:Z

.field private mFile:Ljava/io/File;

.field private mForbidAutostartPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.autonavi.minimap"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oneplus.bbs"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.netease.cloudmusic"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.netease.newsreader.activity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sankuai.meituan"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ctrip.android.view"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.youdao.dict"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.tencent.qqlive"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/AutostartManager;->THIRD_PREAPP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Lcom/android/server/am/AutostartManager;->init()V

    .line 53
    return-void
.end method

.method private static createSecurityDir()Z
    .locals 9

    .prologue
    .line 159
    const-string v1, "//data//data//com.oneplus.security"

    .line 160
    .local v1, "appParentDir":Ljava/lang/String;
    const-string v0, "shared_prefs"

    .line 161
    .local v0, "appChildDir":Ljava/lang/String;
    const/4 v2, 0x1

    .line 163
    .local v2, "bRet":Z
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v5, "fileParent":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    const/4 v2, 0x0

    .line 167
    :cond_0
    if-eqz v2, :cond_1

    .line 168
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "//"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v4, "fileChild":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 177
    .end local v4    # "fileChild":Ljava/io/File;
    .end local v5    # "fileParent":Ljava/io/File;
    :cond_1
    :goto_0
    return v2

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "AutostartManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init data  mkdir error. error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static initForbidAutostartList(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    invoke-static {}, Lcom/android/server/am/AutostartManager;->createSecurityDir()Z

    move-result v6

    if-nez v6, :cond_0

    .line 181
    const-string v6, "AutostartManager"

    const-string v7, "init data mkdir error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v6, "//data//data//com.oneplus.security//shared_prefs//autostartlist.xml"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    const-string v6, "AutostartManager"

    const-string v7, "init data, file exist."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "AutostartManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init data  create error. error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    invoke-static {p0}, Lcom/android/server/am/AutostartManager;->listPackage(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 196
    .local v4, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 198
    .local v2, "fileos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "fileos":Ljava/io/FileOutputStream;
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 203
    .restart local v2    # "fileos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 205
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_3
    const-string v6, "utf-8"

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 206
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    const/4 v6, 0x0

    const-string v7, "map"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const/4 v6, 0x0

    const-string v7, "set"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const/4 v6, 0x0

    const-string v7, "name"

    const-string v8, "forbidboot"

    invoke-interface {v5, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 211
    const/4 v6, 0x0

    const-string v7, "string"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const/4 v6, 0x0

    const-string v7, "string"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    .end local v2    # "fileos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "AutostartManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init data  out error. error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileos":Ljava/io/FileOutputStream;
    .restart local v3    # "i":I
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    const-string v7, "set"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    const/4 v6, 0x0

    const-string v7, "map"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 218
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 219
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 220
    .end local v3    # "i":I
    :catch_2
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AutostartManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init data  write error. error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/am/AutostartManager;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 257
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v2

    .line 262
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 263
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AutostartManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init data  check system app error. error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static listPackage(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 227
    .local v6, "pm":Landroid/content/pm/PackageManager;
    if-nez v6, :cond_0

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/am/AutostartManager;->THIRD_PREAPP:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 229
    .local v2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "AutostartManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "listPackage  write error. error =size= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 246
    .end local v2    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "packageNameList":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    .line 232
    .end local v3    # "packageNameList":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .restart local v2    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 235
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 236
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    .line 239
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 241
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/server/am/AutostartManager;->isSystemApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 244
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    move-object v3, v2

    .line 246
    .restart local v3    # "packageNameList":Ljava/lang/Object;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    if-nez v1, :cond_1

    .line 138
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public filterReceivers(Ljava/util/List;)V
    .locals 5
    .param p1, "receivers"    # Ljava/util/List;

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "iIndex":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 92
    .local v0, "NT":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 93
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 94
    .local v3, "temp":Ljava/lang/Object;
    instance-of v4, v3, Landroid/content/pm/ResolveInfo;

    if-nez v4, :cond_1

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_0

    .line 91
    .end local v0    # "NT":I
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "NT":I
    .restart local v3    # "temp":Ljava/lang/Object;
    :cond_1
    move-object v1, v3

    .line 99
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 101
    .local v1, "curt1":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/am/AutostartManager;->isContain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 107
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "curt1":Landroid/content/pm/ResolveInfo;
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 142
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "//data//data//com.oneplus.security//shared_prefs//autostartlist.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    .line 143
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const-string v1, "AutostartManager"

    const-string v2, "file is not exist [//data//data//com.oneplus.security//shared_prefs//autostartlist.xml]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AutostartManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init file err, err is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v4, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z

    .line 152
    iput-object v5, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "AutostartManager"

    const-string v2, "init file success."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z

    goto :goto_0
.end method

.method public isContain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "p_strPackageName"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 116
    .local v0, "bRes":Z
    iget-object v2, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readData()V
    .locals 12

    .prologue
    .line 59
    iget-object v8, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/am/AutostartManager;->bInitFinish:Z

    if-nez v8, :cond_1

    .line 60
    :cond_0
    const-string v8, "AutostartManager"

    const-string v9, "file is null or don\'t init !"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v9, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    monitor-enter v9

    .line 64
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 66
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 67
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 68
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v1, 0x0

    .line 70
    .local v1, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 71
    iget-object v8, p0, Lcom/android/server/am/AutostartManager;->mFile:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 82
    :try_start_2
    const-string v8, "string"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 83
    .local v7, "nl":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 84
    iget-object v8, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 72
    .end local v6    # "i":I
    .end local v7    # "nl":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v8, "AutostartManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse error ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    monitor-exit v9

    goto :goto_0

    .line 86
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 75
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_1
    move-exception v3

    .line 76
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    const-string v8, "AutostartManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse error ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    monitor-exit v9

    goto/16 :goto_0

    .line 78
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    .line 79
    .local v4, "e2":Ljava/io/IOException;
    const-string v8, "AutostartManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse error ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-exit v9

    goto/16 :goto_0

    .line 86
    .end local v4    # "e2":Ljava/io/IOException;
    .restart local v6    # "i":I
    .restart local v7    # "nl":Lorg/w3c/dom/NodeList;
    :cond_2
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public removeElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "p_strPackageName"    # Ljava/lang/String;

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AutostartManager;->mForbidAutostartPackage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
