.class Lcom/google/tagmanager/PreviewManager;
.super Ljava/lang/Object;
.source "PreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/PreviewManager$PreviewMode;
    }
.end annotation


# static fields
.field static final BASE_DEBUG_QUERY:Ljava/lang/String; = "&gtm_debug=x"

.field private static final CONTAINER_BASE_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&"

.field private static final CONTAINER_DEBUG_STRING_PATTERN:Ljava/lang/String; = ".*?&gtm_debug=x$"

.field private static final CONTAINER_PREVIEW_EXIT_URL_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

.field private static final CONTAINER_PREVIEW_URL_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

.field static final CTFE_URL_PATH_PREFIX:Ljava/lang/String; = "/r?"

.field private static sInstance:Lcom/google/tagmanager/PreviewManager;


# instance fields
.field private volatile mCTFEUrlPath:Ljava/lang/String;

.field private volatile mCTFEUrlQuery:Ljava/lang/String;

.field private volatile mContainerId:Ljava/lang/String;

.field private volatile mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewManager;->clear()V

    .line 55
    return-void
.end method

.method private getContainerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "&"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    aget-object v0, v0, v1

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static getInstance()Lcom/google/tagmanager/PreviewManager;
    .locals 2

    .prologue
    const-class v1, Lcom/google/tagmanager/PreviewManager;

    .line 58
    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    sget-object v0, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    monitor-exit v1

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/google/tagmanager/PreviewManager;

    invoke-direct {v0}, Lcom/google/tagmanager/PreviewManager;-><init>()V

    sput-object v0, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getQueryWithoutDebugParameter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&gtm_debug=x"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 132
    iput-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    .line 135
    return-void
.end method

.method getCTFEUrlDebugQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    return-object v0
.end method

.method getCTFEUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    return-object v0
.end method

.method declared-synchronized setPreviewData(Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid preview uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 94
    return v3

    .line 74
    :catch_0
    move-exception v0

    monitor-exit p0

    .line 73
    return v3

    .line 76
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Container preview url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    const-string/jumbo v1, ".*?&gtm_debug=x$"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 97
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/tagmanager/PreviewManager;->getQueryWithoutDebugParameter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne v0, v1, :cond_5

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/r?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/PreviewManager;->getContainerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 105
    return v4

    .line 78
    :cond_2
    :try_start_3
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/PreviewManager;->getContainerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    monitor-exit p0

    .line 90
    return v3

    .line 84
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Exit preview mode for container: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 87
    return v4

    .line 99
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    sget-object v1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v0, v1, :cond_1

    goto :goto_1
.end method
