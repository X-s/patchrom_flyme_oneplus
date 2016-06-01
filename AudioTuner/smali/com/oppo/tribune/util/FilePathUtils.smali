.class public Lcom/oppo/tribune/util/FilePathUtils;
.super Ljava/lang/Object;
.source "FilePathUtils.java"


# static fields
.field public static final HOMEPAGE_BG_SAVE_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_STORAGE_PATH_TEMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "homepage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/util/FilePathUtils;->HOMEPAGE_BG_SAVE_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static idToUserBgLocalPath(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/tribune/util/FilePathUtils;->HOMEPAGE_BG_SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bg_img_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isUrlTribune(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bbs2.wanyol.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bbs2.wanyol.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public static isUrlTribuneOrPaike(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bbs2.wanyol.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bbs2.wanyol.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pai.nearme.com.cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "paifs.nearme.com.cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method public static makeSureHeadDirectoryExists()Z
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_STORAGE_PATH_TEMP_USER_HEAD:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/tribune/util/FileUtils;->makeSureDirectoryExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static uidToHeadLocalPath(J)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # J

    .prologue
    .line 22
    sget-boolean v0, Lcom/oppo/tribune/ui/GprsSaveUrlMatcher;->IS_SDK_SUPPORT_WEBP:Z

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_STORAGE_PATH_TEMP_USER_HEAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_STORAGE_PATH_TEMP_USER_HEAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static urlToCacheLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "pathname":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 106
    .end local v1    # "pathname":Ljava/lang/String;
    .local v2, "pathname":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 101
    .end local v2    # "pathname":Ljava/lang/String;
    .restart local v1    # "pathname":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/oppo/tribune/util/FilePathUtils;->urlToNormalBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "basename":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v2, v1

    .line 103
    .end local v1    # "pathname":Ljava/lang/String;
    .restart local v2    # "pathname":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v2    # "pathname":Ljava/lang/String;
    .restart local v1    # "pathname":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_IMAGECACHE_PATH_TEMP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 106
    .end local v1    # "pathname":Ljava/lang/String;
    .restart local v2    # "pathname":Ljava/lang/String;
    goto :goto_0
.end method

.method public static urlToIconLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "pathname":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 54
    .end local v1    # "pathname":Ljava/lang/String;
    .local v2, "pathname":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 48
    .end local v2    # "pathname":Ljava/lang/String;
    .restart local v1    # "pathname":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/oppo/tribune/util/FileUtils;->basename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "basename":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v2, v1

    .line 50
    .end local v1    # "pathname":Ljava/lang/String;
    .restart local v2    # "pathname":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v2    # "pathname":Ljava/lang/String;
    .restart local v1    # "pathname":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_STORAGE_PATH_TEMP_ICONS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 54
    .end local v1    # "pathname":Ljava/lang/String;
    .restart local v2    # "pathname":Ljava/lang/String;
    goto :goto_0
.end method

.method public static urlToNormalBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p0}, Lcom/oppo/tribune/util/FileUtils;->basename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "picturename":Ljava/lang/String;
    invoke-static {v0}, Lcom/oppo/tribune/util/CommonMethods;->getLegalFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    return-object v0
.end method

.method public static urlToTribuneBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "picturename":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 132
    const/4 v3, 0x0

    .line 150
    :goto_0
    return-object v3

    .line 134
    :cond_0
    const-string v3, "http://bbs2.wanyol.com/forum.php?mod=image"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    const-string v3, "&"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "name":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 138
    aget-object v3, v1, v0

    const-string v4, "aid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    const-string v5, "="

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .end local v0    # "i":I
    .end local v1    # "name":[Ljava/lang/String;
    :cond_1
    const-string v3, "http://bbsfs.myoppo.com/data/attachment/forum/"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://bbsfs.myoppo.com/data/attachment/album/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Lcom/oppo/tribune/util/CommonMethods;->getLegalFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 150
    goto :goto_0

    .line 137
    .restart local v0    # "i":I
    .restart local v1    # "name":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static urlToTribuneLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/oppo/tribune/util/FilePathUtils;->urlToTribuneBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "picturename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oppo/tribune/square/tribune/PostConstant;->TRIBUNE_IMAGECACHE_PATH_TEMP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .end local v0    # "picturename":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static urlToUserBgLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "pathname":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 75
    .end local v1    # "pathname":Ljava/lang/String;
    .local v2, "pathname":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 69
    .end local v2    # "pathname":Ljava/lang/String;
    .restart local v1    # "pathname":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/oppo/tribune/util/FileUtils;->basename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "basename":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v2, v1

    .line 71
    .end local v1    # "pathname":Ljava/lang/String;
    .restart local v2    # "pathname":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v2    # "pathname":Ljava/lang/String;
    .restart local v1    # "pathname":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oppo/tribune/util/FilePathUtils;->HOMEPAGE_BG_SAVE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 75
    .end local v1    # "pathname":Ljava/lang/String;
    .restart local v2    # "pathname":Ljava/lang/String;
    goto :goto_0
.end method
