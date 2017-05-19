.class public Lcom/android/internal/content/CompatibilityWhiteList;
.super Ljava/lang/Object;
.source "CompatibilityWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
    }
.end annotation


# static fields
.field private static final FILE_DIR:Ljava/lang/String; = "/data/system/OnePlusWL"

.field public static final FORCE_PACKAGE_NAME_CHANGE:I = 0x1

.field public static final FORCE_USE_SPECIFY_WEBVIEW:I = 0x0

.field private static final LENGTH_OF_WHITELIST:I = 0x2

.field private static final SYS_FILE_DIR:Ljava/lang/String; = "system/etc/oneplus_comp_whitelist.txt"

.field private static final TAG:Ljava/lang/String; = "CompatibilityWhiteList"

.field private static sDefaultWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackageNameChangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sSpecifyWebViewWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sDefaultWhiteList:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sSpecifyWebViewWhiteList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sPackageNameChangeList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static dump(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 149
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 150
    .local v3, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;"
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 151
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;

    .line 152
    .local v0, "cmpPkgInfo":Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
    const-string v4, "CompatibilityWhiteList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]  package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  parameter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    .end local v0    # "cmpPkgInfo":Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "m":I
    .end local v3    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;"
    :cond_1
    return-void
.end method

.method public static getCmpPkgParameters(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "whiteListType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "cmpPkgInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;

    .line 139
    .local v0, "cmpPkgInfo":Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
    iget-object v2, v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->parameters:Ljava/util/ArrayList;

    .line 144
    .end local v0    # "cmpPkgInfo":Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getWhiteList(I)Ljava/util/List;
    .locals 1
    .param p0, "whiteListType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    packed-switch p0, :pswitch_data_0

    .line 170
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sDefaultWhiteList:Ljava/util/List;

    .line 173
    .local v0, "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;"
    :goto_0
    return-object v0

    .line 162
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;"
    :pswitch_0
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sSpecifyWebViewWhiteList:Ljava/util/List;

    .line 163
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;"
    goto :goto_0

    .line 166
    .end local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;"
    :pswitch_1
    sget-object v0, Lcom/android/internal/content/CompatibilityWhiteList;->sPackageNameChangeList:Ljava/util/List;

    .line 167
    .restart local v0    # "whiteList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;"
    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;>;"
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/CompatibilityWhiteList;->readFromFile(Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 66
    :goto_0
    return v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInWhiteList(Ljava/util/ArrayList;ILjava/lang/String;)Z
    .locals 3
    .param p1, "whiteListType"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;>;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "cmpPkgInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;>;"
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;

    .line 127
    .local v0, "cmpPkgInfo":Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
    iget-object v2, v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 132
    .end local v0    # "cmpPkgInfo":Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static readFromFile(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;>;"
    const/4 v8, 0x0

    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 72
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v9, 0x2

    if-ge v4, v9, :cond_0

    .line 73
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/4 v3, 0x0

    .line 76
    .local v3, "fromSystem":Z
    const-string v9, "/data/system/OnePlusWL"

    if-eqz v9, :cond_1

    const-string v9, "system/etc/oneplus_comp_whitelist.txt"

    if-nez v9, :cond_2

    .line 102
    :cond_1
    :goto_1
    return v8

    .line 77
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/system/OnePlusWL"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    .line 79
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    const-string v9, "system/etc/oneplus_comp_whitelist.txt"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    const/4 v3, 0x1

    .line 83
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 87
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 88
    .local v6, "instream":Ljava/io/InputStream;
    if-eqz v6, :cond_1

    .line 89
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 90
    .local v5, "inputreader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 92
    .local v0, "buffreader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 93
    invoke-static {v7, p0}, Lcom/android/internal/content/CompatibilityWhiteList;->resolveLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 96
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "CompatibilityWhiteList"

    const-string v9, "File doesn\'t not exist."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v8, 0x1

    goto :goto_1

    .line 95
    .restart local v0    # "buffreader":Ljava/io/BufferedReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v6    # "instream":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 98
    .end local v0    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v6    # "instream":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "CompatibilityWhiteList"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static resolveLine(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "lineOfContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cmpWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;>;"
    const/4 v7, 0x2

    .line 106
    if-eqz p0, :cond_0

    const-string v6, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "tmp":[Ljava/lang/String;
    array-length v3, v4

    .line 109
    .local v3, "len":I
    if-lt v3, v7, :cond_0

    .line 110
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 111
    .local v1, "i":I
    if-ltz v1, :cond_0

    if-ge v1, v7, :cond_0

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 113
    .local v5, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;>;"
    new-instance v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;

    invoke-direct {v0}, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;-><init>()V

    .line 114
    .local v0, "cmpPkgInfo":Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    iput-object v6, v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->pkgName:Ljava/lang/String;

    .line 115
    if-le v3, v7, :cond_2

    .line 116
    const/4 v2, 0x2

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 117
    iget-object v6, v0, Lcom/android/internal/content/CompatibilityWhiteList$CompatibilityPkgInfo;->parameters:Ljava/util/ArrayList;

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v2    # "j":I
    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
