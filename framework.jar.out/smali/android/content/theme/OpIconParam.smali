.class public Landroid/content/theme/OpIconParam;
.super Ljava/lang/Object;
.source "OpIconParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/theme/OpIconParam$ThemeXmlHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeDiscription"

.field private static final TAG_SCALE:Ljava/lang/String; = "Scale"

.field private static final TAG_XOFFSETPCT:Ljava/lang/String; = "XOffsetPCT"

.field private static final TAG_YOFFSETPCT:Ljava/lang/String; = "YOffsetPCT"


# instance fields
.field private final LOGE:Z

.field mCurrentTag:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public mScale:F

.field public mXOffsetPCT:F

.field public mYOffsetPCT:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/theme/OpIconParam;->LOGE:Z

    .line 41
    iput v1, p0, Landroid/content/theme/OpIconParam;->mScale:F

    .line 42
    iput v1, p0, Landroid/content/theme/OpIconParam;->mXOffsetPCT:F

    .line 43
    iput v1, p0, Landroid/content/theme/OpIconParam;->mYOffsetPCT:F

    .line 49
    iput-object p1, p0, Landroid/content/theme/OpIconParam;->mPath:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/content/theme/OpIconParam;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/content/theme/OpIconParam;->mScale:F

    return v0
.end method

.method public getXOffset()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/content/theme/OpIconParam;->mXOffsetPCT:F

    return v0
.end method

.method public getYOffset()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/content/theme/OpIconParam;->mYOffsetPCT:F

    return v0
.end method

.method public myLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public parseXml()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 86
    const/4 v4, 0x0

    .line 87
    .local v4, "path":Ljava/lang/String;
    sget-boolean v9, Landroid/content/theme/OpThirdPartUtil;->mIsDefaultTheme:Z

    if-nez v9, :cond_0

    .line 88
    const-string v4, "/data/theme/"

    .line 92
    :goto_0
    const/4 v2, 0x0

    .line 94
    .local v2, "param":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "com.oneplus.launcher"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    .end local v2    # "param":Ljava/util/zip/ZipFile;
    .local v3, "param":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 97
    .local v1, "input":Ljava/io/InputStream;
    :try_start_1
    iget-object v9, p0, Landroid/content/theme/OpIconParam;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 98
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    .line 99
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 100
    const-string/jumbo v9, "parseXml:entry is null"

    invoke-virtual {p0, v9}, Landroid/content/theme/OpIconParam;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 121
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    :goto_1
    return v8

    .line 90
    .end local v2    # "param":Ljava/util/zip/ZipFile;
    :cond_0
    const-string v4, "/system/media/theme/default/"

    goto :goto_0

    .line 103
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v3    # "param":Ljava/util/zip/ZipFile;
    :cond_1
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 104
    if-nez v1, :cond_2

    .line 105
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 106
    const-string/jumbo v9, "parseXml:input is null"

    invoke-virtual {p0, v9}, Landroid/content/theme/OpIconParam;->myLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 107
    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 110
    .end local v2    # "param":Ljava/util/zip/ZipFile;
    .restart local v3    # "param":Ljava/util/zip/ZipFile;
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    .line 111
    .local v6, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v5

    .line 112
    .local v5, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v9, Landroid/content/theme/OpIconParam$ThemeXmlHandler;

    invoke-direct {v9, p0}, Landroid/content/theme/OpIconParam$ThemeXmlHandler;-><init>(Landroid/content/theme/OpIconParam;)V

    invoke-virtual {v5, v1, v9}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 114
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 121
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .end local v5    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v6    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 115
    :catch_0
    move-exception v7

    .line 116
    .local v7, "zEx":Ljava/util/zip/ZipException;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseXml:ZipFile is destroyed, mPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/content/theme/OpIconParam;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/content/theme/OpIconParam;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    .end local v7    # "zEx":Ljava/util/zip/ZipException;
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v2    # "param":Ljava/util/zip/ZipFile;
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v3    # "param":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v8

    move-object v2, v3

    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 115
    .end local v2    # "param":Ljava/util/zip/ZipFile;
    .restart local v3    # "param":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .restart local v2    # "param":Ljava/util/zip/ZipFile;
    goto :goto_3
.end method
