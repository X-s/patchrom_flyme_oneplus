.class public Landroid/content/res/OpThemeZipFile;
.super Ljava/lang/Object;
.source "OpThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field private static final ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = ".png"

.field private static final HYDRONGEN_PACKAGE:Ljava/lang/String; = "com.hydrongen"

.field private static final RESOURCES_PATHS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OpThemeZipFile"

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final sDensities:[I

.field private static final sDensity:I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/OpThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private mCharSequences:Landroid/util/SparseArray;

.field private mIntegers:Landroid/util/SparseArray;

.field private mLastModifyTime:J

.field private mMetaData:Landroid/content/res/OpThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "assets/colors.xml"

    aput-object v1, v0, v2

    const-string v1, "framework-res/assets/colors.xml"

    aput-object v1, v0, v3

    const-string v1, "hydrogen-framework-res/assets/colors.xml"

    aput-object v1, v0, v4

    const-string v1, "assets/strings.xml"

    aput-object v1, v0, v5

    sput-object v0, Landroid/content/res/OpThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    .line 68
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "res/drawable"

    aput-object v1, v0, v2

    const-string v1, "framework-res/res/drawable"

    aput-object v1, v0, v3

    const-string v1, "hydrogen-framework-res/res/drawable"

    aput-object v1, v0, v4

    const-string/jumbo v1, "res/drawable"

    aput-object v1, v0, v5

    sput-object v0, Landroid/content/res/OpThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    .line 85
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/content/res/OpThemeZipFile;->sDensity:I

    .line 88
    sget v0, Landroid/content/res/OpThemeZipFile;->sDensity:I

    invoke-static {v0}, Landroid/content/res/OpDisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Landroid/content/res/OpThemeZipFile;->sDensities:[I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/OpThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/OpThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/content/res/OpThemeResources$MetaData;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "resources"    # Landroid/content/res/Resources;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OpThemeZipFile;->DEBUG:Z

    .line 75
    iput-wide v2, p0, Landroid/content/res/OpThemeZipFile;->mLastModifyTime:J

    .line 76
    iput-object v1, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 77
    iput-object v1, p0, Landroid/content/res/OpThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 78
    iput-object v1, p0, Landroid/content/res/OpThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 79
    iput-object v1, p0, Landroid/content/res/OpThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Landroid/content/res/OpThemeZipFile;->mPath:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Landroid/content/res/OpThemeZipFile;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    .line 83
    iput-object v1, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 94
    iput-wide v2, p0, Landroid/content/res/OpThemeZipFile;->mLastModifyTime:J

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 97
    iput-object p4, p0, Landroid/content/res/OpThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 98
    iput-object p3, p0, Landroid/content/res/OpThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Landroid/content/res/OpThemeZipFile;->mPath:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Landroid/content/res/OpThemeZipFile;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    .line 101
    return-void
.end method

.method private clean()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    iget-object v0, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 227
    iget-object v0, p0, Landroid/content/res/OpThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 228
    return-void

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getInputStreamInner(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 8
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 149
    invoke-direct {p0, p2}, Landroid/content/res/OpThemeZipFile;->getZipInputStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 150
    .local v5, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/content/res/OpThemeZipFile;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 151
    sget-object v6, Landroid/content/res/OpThemeZipFile;->RESOURCES_PATHS:[Ljava/lang/String;

    aget-object v4, v6, p1

    .line 152
    .local v4, "str2":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 154
    .local v1, "i":I
    if-lez v1, :cond_3

    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "str1":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    sget-object v6, Landroid/content/res/OpThemeZipFile;->sDensities:[I

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 158
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    .line 159
    .local v0, "arrayOfString":[Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v4, v0, v6

    .line 160
    sget-object v6, Landroid/content/res/OpThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    invoke-static {v6}, Landroid/content/res/OpDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    .line 161
    const/4 v6, 0x2

    aput-object v3, v0, v6

    .line 162
    const-string v6, "%s%s%s"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/content/res/OpThemeZipFile;->getZipInputStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v5

    .line 163
    if-nez v5, :cond_1

    .line 157
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    sget-object v6, Landroid/content/res/OpThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    if-le v6, v7, :cond_2

    .line 167
    sget-object v6, Landroid/content/res/OpThemeZipFile;->sDensities:[I

    aget v6, v6, v2

    iput v6, v5, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 169
    :cond_2
    if-eqz v5, :cond_0

    .line 175
    .end local v0    # "arrayOfString":[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "str1":Ljava/lang/String;
    .end local v4    # "str2":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    const-string v0, "hydrongen-framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    const-string p0, "com.hydrongen"

    .line 211
    :cond_1
    :goto_0
    return-object p0

    .line 209
    :cond_2
    const-string p0, "android"

    goto :goto_0
.end method

.method protected static declared-synchronized getThemeZipFile(Landroid/content/res/OpThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Landroid/content/res/OpThemeZipFile;
    .locals 9
    .param p0, "metadata"    # Landroid/content/res/OpThemeResources$MetaData;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 105
    const-class v7, Landroid/content/res/OpThemeZipFile;

    monitor-enter v7

    const/4 v3, 0x0

    .line 106
    .local v3, "themeZipFile":Landroid/content/res/OpThemeZipFile;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/content/res/OpThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "packageFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 111
    const/4 v4, 0x0

    .line 131
    :goto_0
    monitor-exit v7

    return-object v4

    .line 114
    :cond_0
    :try_start_1
    sget-object v6, Landroid/content/res/OpThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 116
    .local v5, "weakreference":Ljava/lang/ref/WeakReference;
    if-eqz v5, :cond_1

    .line 117
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/res/OpThemeZipFile;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .line 122
    .end local v3    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    .local v4, "themeZipFile":Landroid/content/res/OpThemeZipFile;
    :goto_1
    if-eqz v4, :cond_2

    move-object v3, v4

    .line 123
    .end local v4    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    .restart local v3    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    goto :goto_0

    .line 119
    :cond_1
    const/4 v3, 0x0

    move-object v4, v3

    .end local v3    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    .restart local v4    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    goto :goto_1

    .line 125
    :cond_2
    :try_start_2
    new-instance v3, Landroid/content/res/OpThemeZipFile;

    invoke-static {p1}, Landroid/content/res/OpThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, p0, v6, p2}, Landroid/content/res/OpThemeZipFile;-><init>(Ljava/lang/String;Landroid/content/res/OpThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    .end local v4    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    .restart local v3    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    :try_start_3
    new-instance v5, Ljava/lang/ref/WeakReference;

    .end local v5    # "weakreference":Ljava/lang/ref/WeakReference;
    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 128
    .restart local v5    # "weakreference":Ljava/lang/ref/WeakReference;
    sget-object v6, Landroid/content/res/OpThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    .line 131
    goto :goto_0

    .line 105
    .end local v1    # "packageFile":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v5    # "weakreference":Ljava/lang/ref/WeakReference;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7

    throw v6

    .end local v3    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    .restart local v1    # "packageFile":Ljava/io/File;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v4    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    .restart local v5    # "weakreference":Ljava/lang/ref/WeakReference;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    .restart local v3    # "themeZipFile":Landroid/content/res/OpThemeZipFile;
    goto :goto_2
.end method

.method private getZipInputStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    invoke-virtual {p0}, Landroid/content/res/OpThemeZipFile;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, "zipEntry":Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_0

    .line 186
    :try_start_0
    iget-object v4, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 187
    .local v0, "inputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 188
    new-instance v2, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-direct {v2, p0, v0, v4, v5}, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;-><init>(Landroid/content/res/OpThemeZipFile;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .local v2, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 197
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .end local v3    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    return-object v2

    .line 193
    .restart local v1    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .restart local v3    # "zipEntry":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    .end local v3    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_1
    move-object v2, v1

    .line 197
    .local v2, "themeFileInfo":Ljava/lang/Object;
    goto :goto_0

    .end local v1    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .local v2, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .restart local v3    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    move-object v1, v2

    .end local v2    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .restart local v1    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    goto :goto_1
.end method

.method private loadThemeValues(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 287
    sget-object v8, Landroid/content/res/OpThemeZipFile;->sDensities:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 288
    .local v3, "i":I
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 289
    .local v5, "suffix":[Ljava/lang/Object;
    const/4 v8, 0x0

    sget-object v9, Landroid/content/res/OpThemeZipFile;->sDensities:[I

    aget v9, v9, v3

    invoke-static {v9}, Landroid/content/res/OpDisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 290
    sget-object v8, Landroid/content/res/OpThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    aget-object v8, v8, p1

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/content/res/OpThemeZipFile;->getZipInputStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 292
    .local v6, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    if-nez v6, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    const/4 v4, 0x0

    .line 296
    .local v4, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 298
    .local v0, "bufferedinputstream":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v4, v6, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 299
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 300
    .local v7, "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v8, 0x2000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .local v1, "bufferedinputstream":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v7, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, p1, v7}, Landroid/content/res/OpThemeZipFile;->mergeThemeValues(ILorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    if-eqz v1, :cond_2

    .line 310
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 319
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v0, v1

    .line 323
    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 312
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OpThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zll bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 321
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 322
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "OpThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zll in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 324
    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 304
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 305
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_4
    const-string v8, "OpThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zll XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 309
    if-eqz v0, :cond_4

    .line 310
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 318
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_3
    if-eqz v4, :cond_0

    .line 319
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 321
    :catch_3
    move-exception v2

    .line 322
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OpThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zll in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 312
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v2

    .line 313
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "OpThemeZipFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "zll bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 308
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 309
    :goto_4
    if-eqz v0, :cond_5

    .line 310
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 318
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 319
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 323
    :cond_6
    :goto_6
    throw v8

    .line 312
    :catch_5
    move-exception v2

    .line 313
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "OpThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "zll bufferedinputstream IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 321
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 322
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "OpThemeZipFile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "zll in IOException happened when loadThemeValues, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 308
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v7    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 304
    .end local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    .restart local v0    # "bufferedinputstream":Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method private mergeThemeValues(ILorg/xmlpull/v1/XmlPullParser;)V
    .locals 15
    .param p1, "index"    # I
    .param p2, "xmlpullparser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 328
    const/4 v7, 0x0

    .line 329
    .local v7, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 333
    .local v9, "resourceName":Ljava/lang/String;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 334
    .local v4, "eventType":I
    :goto_0
    const/4 v12, 0x1

    if-eq v4, v12, :cond_6

    .line 335
    packed-switch v4, :pswitch_data_0

    .line 414
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 340
    .local v10, "resourceType":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 344
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 345
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 346
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_3

    .line 347
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "attributeName":Ljava/lang/String;
    const-string/jumbo v12, "name"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 349
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 346
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 350
    :cond_2
    const-string/jumbo v12, "package"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 351
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 355
    .end local v1    # "attributeName":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 356
    .local v11, "resourceValue":Ljava/lang/String;
    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 358
    if-nez v7, :cond_4

    .line 359
    if-nez p1, :cond_7

    .line 360
    iget-object v7, p0, Landroid/content/res/OpThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 367
    :cond_4
    :goto_4
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v12, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 370
    .local v8, "resourceId":I
    if-lez v8, :cond_0

    .line 374
    const-string v12, "bool"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 375
    const-string v12, "color"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "integer"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "drawable"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 378
    :cond_5
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    iget-boolean v12, v12, Landroid/content/res/OpThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 380
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 416
    .end local v2    # "count":I
    .end local v4    # "eventType":I
    .end local v5    # "i":I
    .end local v8    # "resourceId":I
    .end local v10    # "resourceType":Ljava/lang/String;
    .end local v11    # "resourceValue":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 417
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v12, "OpThemeZipFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "zll mergeThemeValues XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_6
    :goto_5
    return-void

    .line 361
    .restart local v2    # "count":I
    .restart local v4    # "eventType":I
    .restart local v5    # "i":I
    .restart local v10    # "resourceType":Ljava/lang/String;
    .restart local v11    # "resourceValue":Ljava/lang/String;
    :cond_7
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    .line 362
    :try_start_1
    const-string v7, "android"

    goto :goto_4

    .line 363
    :cond_8
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    .line 364
    const-string v7, "com.hydrongen"

    goto :goto_4

    .line 384
    .restart local v8    # "resourceId":I
    :cond_9
    const-string/jumbo v12, "string"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 385
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    iget-boolean v12, v12, Landroid/content/res/OpThemeResources$MetaData;->supportCharSequence:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 387
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v12, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 420
    .end local v2    # "count":I
    .end local v4    # "eventType":I
    .end local v5    # "i":I
    .end local v8    # "resourceId":I
    .end local v10    # "resourceType":Ljava/lang/String;
    .end local v11    # "resourceValue":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 421
    .local v3, "e":Ljava/io/IOException;
    const-string v12, "OpThemeZipFile"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "zll mergeThemeValues IOException happened when loadThemeValues, msg = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 388
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "count":I
    .restart local v4    # "eventType":I
    .restart local v5    # "i":I
    .restart local v8    # "resourceId":I
    .restart local v10    # "resourceType":Ljava/lang/String;
    .restart local v11    # "resourceValue":Ljava/lang/String;
    :cond_a
    :try_start_2
    const-string v12, "dimen"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    iget-boolean v12, v12, Landroid/content/res/OpThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 390
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/app/OpThemeHelper;->parseDimension(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 392
    .local v6, "integer":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 393
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 396
    .end local v6    # "integer":Ljava/lang/Integer;
    :cond_b
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    iget-boolean v12, v12, Landroid/content/res/OpThemeResources$MetaData;->supportInt:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    if-gez v12, :cond_0

    .line 397
    const-string/jumbo v12, "true"

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 398
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 400
    :cond_c
    iget-object v12, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openZipFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 271
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/res/OpThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/OpThemeZipFile;->mLastModifyTime:J

    .line 274
    iget-wide v2, p0, Landroid/content/res/OpThemeZipFile;->mLastModifyTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 276
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "exception":Ljava/lang/Exception;
    iput-object v6, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0

    .line 282
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    iput-object v6, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 6

    .prologue
    .line 250
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/content/res/OpThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 251
    .local v2, "l":J
    iget-wide v4, p0, Landroid/content/res/OpThemeZipFile;->mLastModifyTime:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 267
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 254
    .end local v0    # "flag":Z
    :cond_0
    invoke-direct {p0}, Landroid/content/res/OpThemeZipFile;->clean()V

    .line 255
    invoke-direct {p0}, Landroid/content/res/OpThemeZipFile;->openZipFile()V

    .line 257
    iget-object v4, p0, Landroid/content/res/OpThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/content/res/OpThemeZipFile;->mPackageName:Ljava/lang/String;

    const-string v5, "com.hydrongen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/content/res/OpThemeZipFile;->loadThemeValues(I)V

    .line 264
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "flag":Z
    goto :goto_0

    .line 260
    .end local v0    # "flag":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Landroid/content/res/OpThemeZipFile;->ASSETS_THEME_VALUE_FILES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 261
    invoke-direct {p0, v1}, Landroid/content/res/OpThemeZipFile;->loadThemeValues(I)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "flag":Z
    invoke-virtual {p0}, Landroid/content/res/OpThemeZipFile;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    .line 432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 438
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/res/OpThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getInputStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v1, p0, Landroid/content/res/OpThemeZipFile;->mMetaData:Landroid/content/res/OpThemeResources$MetaData;

    iget-boolean v1, v1, Landroid/content/res/OpThemeResources$MetaData;->supportFile:Z

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/content/res/OpThemeZipFile;->getInputStreamInner(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 145
    .local v0, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v0

    .line 143
    .end local v0    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    goto :goto_0
.end method

.method public getInputStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/OpThemeZipFile;->getInputStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 231
    iget-object v0, p0, Landroid/content/res/OpThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 235
    iget-object v0, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Landroid/content/res/OpThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/OpThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x1

    .line 245
    .local v0, "flag":Z
    :goto_0
    return v0

    .line 243
    .end local v0    # "flag":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flag":Z
    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/content/res/OpThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
