.class public Landroid/content/theme/OpAppIconInfo;
.super Ljava/lang/Object;
.source "OpAppIconInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theme/OpAppIconInfo$IconXmlHandler;
    }
.end annotation


# static fields
.field public static final ALL_APPS:Ljava/lang/String; = "allApps.xml"

.field private static mAllIconNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAllPackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Landroid/content/theme/OpAppIconInfo;->mCurrentTag:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/theme/OpAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    sput-object p0, Landroid/content/theme/OpAppIconInfo;->mCurrentTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getAppsNumbers()I
    .locals 1

    .prologue
    .line 139
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getIconName(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 155
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageName(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 147
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static indexOfIconName(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static indexOfPackageName(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static isThirdPart(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 125
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isThirdPartbyIconName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "iconName"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseIconXml()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 83
    const/4 v4, 0x0

    .line 84
    .local v4, "param":Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .line 85
    .local v2, "input":Ljava/io/InputStream;
    sget-object v8, Landroid/content/theme/OpAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 86
    sget-object v8, Landroid/content/theme/OpAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 88
    sget-boolean v8, Landroid/content/theme/OpThirdPartUtil;->mIsDefaultTheme:Z

    if-nez v8, :cond_1

    .line 90
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    const-string v8, "/data/theme/icons"

    invoke-direct {v5, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v4    # "param":Ljava/util/zip/ZipFile;
    .local v5, "param":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v8, "allApps.xml"

    invoke-virtual {v5, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 93
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 94
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/system/media/theme/default/allApps.xml"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    move-object v2, v3

    .line 99
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    :goto_0
    invoke-static {v2}, Landroid/content/theme/OpAppIconInfo;->parseXml(Ljava/io/InputStream;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 101
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 117
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "param":Ljava/util/zip/ZipFile;
    :goto_1
    return v6

    .line 97
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "param":Ljava/util/zip/ZipFile;
    :cond_0
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    goto :goto_0

    .line 103
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "param":Ljava/util/zip/ZipFile;
    .restart local v4    # "param":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    const-string v6, "parseIconXml"

    const-string v8, "parseIconXml error"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 106
    goto :goto_1

    .line 110
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/system/media/theme/default/allApps.xml"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :try_start_3
    invoke-static {v3}, Landroid/content/theme/OpAppIconInfo;->parseXml(Ljava/io/InputStream;)V

    .line 112
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .line 113
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_1

    .line 114
    :catch_1
    move-exception v1

    .line 115
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_3
    const-string v6, "parseIconXml"

    const-string v8, "parseIconXml error"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 117
    goto :goto_1

    .line 114
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_3

    .line 103
    .end local v4    # "param":Ljava/util/zip/ZipFile;
    .restart local v5    # "param":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "param":Ljava/util/zip/ZipFile;
    .restart local v4    # "param":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public static parseXml(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 76
    .local v1, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 77
    .local v0, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Landroid/content/theme/OpAppIconInfo$IconXmlHandler;

    invoke-direct {v2}, Landroid/content/theme/OpAppIconInfo$IconXmlHandler;-><init>()V

    invoke-virtual {v0, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 78
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 80
    return-void
.end method
