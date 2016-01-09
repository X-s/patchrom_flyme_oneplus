.class public Landroid/content/res/OpThemeResourcesSystem;
.super Landroid/content/res/OpThemeResources;
.source "OpThemeResourcesSystem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpThemeResourcesSystem"

.field private static sIcons:Landroid/content/res/OpThemeResources;

.field private static sOppo:Landroid/content/res/OpThemeResources;


# instance fields
.field private final DEBUG:Z


# direct methods
.method public constructor <init>(Landroid/content/res/OpThemeResourcesSystem;Landroid/content/res/Resources;Landroid/content/res/OpThemeResources$MetaData;)V
    .locals 1
    .param p1, "themeResourcesSystem"    # Landroid/content/res/OpThemeResourcesSystem;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "metaData"    # Landroid/content/res/OpThemeResources$MetaData;

    .prologue
    .line 40
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/content/res/OpThemeResources;-><init>(Landroid/content/res/OpThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Landroid/content/res/OpThemeResources$MetaData;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OpThemeResourcesSystem;->DEBUG:Z

    .line 42
    return-void
.end method

.method private getThemeFileStreamOPPO(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeResources;->getThemeFileStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 118
    :cond_0
    return-object v0
.end method

.method private getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    invoke-virtual {p0, p1}, Landroid/content/res/OpThemeResourcesSystem;->getThemeFileStreamInner(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Landroid/content/res/OpThemeResourcesSystem;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 45
    const-string v3, "icons"

    invoke-static {p0, v3}, Landroid/content/res/OpThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/OpThemeResources;

    move-result-object v3

    sput-object v3, Landroid/content/res/OpThemeResourcesSystem;->sIcons:Landroid/content/res/OpThemeResources;

    .line 46
    const-string v3, "hydrongen-framework-res"

    invoke-static {p0, v3}, Landroid/content/res/OpThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/OpThemeResources;

    move-result-object v3

    sput-object v3, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "themeresourcessystem":Landroid/content/res/OpThemeResourcesSystem;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Landroid/content/res/OpThemeResourcesSystem;->THEME_PATHS:[Landroid/content/res/OpThemeResources$MetaData;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 51
    new-instance v1, Landroid/content/res/OpThemeResourcesSystem;

    sget-object v3, Landroid/content/res/OpThemeResourcesSystem;->THEME_PATHS:[Landroid/content/res/OpThemeResources$MetaData;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, p0, v3}, Landroid/content/res/OpThemeResourcesSystem;-><init>(Landroid/content/res/OpThemeResourcesSystem;Landroid/content/res/Resources;Landroid/content/res/OpThemeResources$MetaData;)V

    .line 53
    .local v1, "res":Landroid/content/res/OpThemeResourcesSystem;
    move-object v2, v1

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "res":Landroid/content/res/OpThemeResourcesSystem;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/content/res/OpThemeResourcesSystem;->sIcons:Landroid/content/res/OpThemeResources;

    invoke-virtual {v0}, Landroid/content/res/OpThemeResources;->checkUpdate()Z

    .line 60
    sget-object v0, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    invoke-virtual {v0}, Landroid/content/res/OpThemeResources;->checkUpdate()Z

    .line 61
    invoke-super {p0}, Landroid/content/res/OpThemeResources;->checkUpdate()Z

    move-result v0

    return v0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 67
    .local v3, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x0

    .line 68
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    invoke-virtual {p0, p2, v4}, Landroid/content/res/OpThemeResourcesSystem;->getIconStream(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    :try_start_0
    iget v4, v3, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mDensity:I

    if-lez v4, :cond_0

    .line 72
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    iget v4, v3, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 74
    iget-object v4, v3, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move-object v1, v2

    .line 80
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-eqz v3, :cond_1

    .line 81
    :try_start_2
    iget-object v4, v3, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 86
    :cond_1
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v4

    .line 80
    :goto_1
    if-eqz v3, :cond_1

    .line 81
    :try_start_3
    iget-object v4, v3, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v4

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v4

    .line 80
    :goto_2
    if-eqz v3, :cond_2

    .line 81
    :try_start_4
    iget-object v5, v3, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 84
    :cond_2
    :goto_3
    throw v4

    .line 83
    :catch_2
    move-exception v5

    goto :goto_3

    .line 79
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_2

    .line 77
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v4

    move-object v1, v2

    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    goto :goto_1

    .line 83
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public getIconStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Landroid/content/res/OpThemeResourcesSystem;->sIcons:Landroid/content/res/OpThemeResources;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/OpThemeResources;->getThemeFileStream(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIconStream(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .prologue
    .line 93
    sget-object v0, Landroid/content/res/OpThemeResourcesSystem;->sIcons:Landroid/content/res/OpThemeResources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/OpThemeResources;->getThemeFileStream(Ljava/lang/String;Z)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "lockWallpaperFile":Ljava/io/File;
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "res":Ljava/lang/CharSequence;
    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    :cond_0
    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/res/OpThemeResourcesSystem;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 104
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    if-eqz p2, :cond_0

    .line 124
    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "res":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 126
    invoke-direct {p0, p2, v0}, Landroid/content/res/OpThemeResourcesSystem;->getThemeFileStreamOPPO(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 131
    .end local v0    # "res":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 128
    .restart local v0    # "res":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2, v0}, Landroid/content/res/OpThemeResourcesSystem;->getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "res":Ljava/lang/Integer;
    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 139
    :cond_0
    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0, p1}, Landroid/content/res/OpThemeResourcesSystem;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 142
    :cond_1
    return-object v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "flage":Z
    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sIcons:Landroid/content/res/OpThemeResources;

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sIcons:Landroid/content/res/OpThemeResources;

    invoke-virtual {v1, p1}, Landroid/content/res/OpThemeResources;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 150
    :cond_0
    return v0
.end method

.method public hasValues()Z
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "flage":Z
    invoke-super {p0}, Landroid/content/res/OpThemeResources;->hasValues()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    invoke-virtual {v1}, Landroid/content/res/OpThemeResources;->hasValues()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/res/OpThemeResourcesSystem;->isValidInner()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/content/res/OpThemeResourcesSystem;->sOppo:Landroid/content/res/OpThemeResources;

    invoke-virtual {v0}, Landroid/content/res/OpThemeResources;->isValid()Z

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

.method public resetIcons()V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Landroid/content/res/OpThemeResourcesSystem;->sIcons:Landroid/content/res/OpThemeResources;

    invoke-virtual {v0}, Landroid/content/res/OpThemeResources;->checkUpdate()Z

    .line 169
    return-void
.end method
