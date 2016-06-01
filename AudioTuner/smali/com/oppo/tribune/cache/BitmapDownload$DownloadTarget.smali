.class Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;
.super Ljava/lang/Object;
.source "BitmapDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/cache/BitmapDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTarget"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPathname:Ljava/lang/String;

.field private mRequest:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/oppo/tribune/cache/BitmapDownload$State;

.field private final mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/tribune/cache/BitmapDownload;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/cache/BitmapDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "pathname"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->this$0:Lcom/oppo/tribune/cache/BitmapDownload;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mRequest:Ljava/util/Set;

    .line 120
    sget-object v0, Lcom/oppo/tribune/cache/BitmapDownload$State;->PREPARE:Lcom/oppo/tribune/cache/BitmapDownload$State;

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mState:Lcom/oppo/tribune/cache/BitmapDownload$State;

    .line 124
    iput-object p2, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mContext:Landroid/content/Context;

    .line 125
    iput-object p3, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mUrl:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mPathname:Ljava/lang/String;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/cache/BitmapDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oppo/tribune/cache/BitmapDownload$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/oppo/tribune/cache/BitmapDownload$1;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;-><init>(Lcom/oppo/tribune/cache/BitmapDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;
    .param p1, "x1"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->tryAddRequest(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)Z

    move-result v0

    return v0
.end method

.method private downloadImpl()V
    .locals 5

    .prologue
    .line 211
    :try_start_0
    new-instance v0, Lcom/oppo/tribune/util/FileDownload;

    iget-object v2, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mPathname:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/oppo/tribune/util/FileDownload;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v0, "download":Lcom/oppo/tribune/util/FileDownload;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/tribune/util/FileDownload;->setUserTmpFile(Z)Lcom/oppo/tribune/util/FileDownload;

    .line 217
    invoke-virtual {v0}, Lcom/oppo/tribune/util/FileDownload;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "download":Lcom/oppo/tribune/util/FileDownload;
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized hasRequest()Z
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mRequest:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;

    .line 139
    .local v1, "item":Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;
    invoke-virtual {v1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const/4 v2, 0x1

    .line 143
    .end local v1    # "item":Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized onDownloadExit()V
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p0}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->removeTarget(Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;)V

    .line 153
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mRequest:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onDownloadFinish()V
    .locals 8

    .prologue
    .line 163
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mPathname:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 164
    .local v4, "size":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 165
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mPathname:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "btpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    .end local v0    # "btpFile":Ljava/io/File;
    :cond_0
    iget-object v6, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mRequest:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;

    .line 171
    .local v3, "item":Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;
    invoke-virtual {v3}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 175
    invoke-virtual {v3}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->getCallback()Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    move-result-object v1

    .line 176
    .local v1, "callback":Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1}, Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;->checkDownLoadFile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;->isForCurrentRequest()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 179
    iget-object v6, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mPathname:Ljava/lang/String;

    invoke-static {v6}, Lcom/oppo/tribune/cache/BitmapRuntime;->requestEntity(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapEntity;

    .line 181
    :cond_2
    iget-object v6, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->this$0:Lcom/oppo/tribune/cache/BitmapDownload;

    # getter for: Lcom/oppo/tribune/cache/BitmapDownload;->mTarget:Landroid/os/Handler;
    invoke-static {v6}, Lcom/oppo/tribune/cache/BitmapDownload;->access$300(Lcom/oppo/tribune/cache/BitmapDownload;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 184
    .end local v1    # "callback":Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;
    .end local v3    # "item":Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;
    :cond_3
    return-void
.end method

.method private declared-synchronized removeTarget(Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;)V
    .locals 2
    .param p1, "target"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->this$0:Lcom/oppo/tribune/cache/BitmapDownload;

    # getter for: Lcom/oppo/tribune/cache/BitmapDownload;->mMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/oppo/tribune/cache/BitmapDownload;->access$200(Lcom/oppo/tribune/cache/BitmapDownload;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->this$0:Lcom/oppo/tribune/cache/BitmapDownload;

    # getter for: Lcom/oppo/tribune/cache/BitmapDownload;->mMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/oppo/tribune/cache/BitmapDownload;->access$200(Lcom/oppo/tribune/cache/BitmapDownload;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mPathname:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized tryAddRequest(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)Z
    .locals 2
    .param p1, "request"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mState:Lcom/oppo/tribune/cache/BitmapDownload$State;

    sget-object v1, Lcom/oppo/tribune/cache/BitmapDownload$State;->FINISHED:Lcom/oppo/tribune/cache/BitmapDownload$State;

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mRequest:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    sget-object v1, Lcom/oppo/tribune/cache/BitmapDownload$State;->RUNNING:Lcom/oppo/tribune/cache/BitmapDownload$State;

    iput-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mState:Lcom/oppo/tribune/cache/BitmapDownload$State;

    .line 191
    invoke-direct {p0}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->hasRequest()Z

    move-result v0

    .line 193
    .local v0, "download":Z
    if-nez v0, :cond_0

    .line 194
    sget-object v1, Lcom/oppo/tribune/cache/BitmapDownload$State;->FINISHED:Lcom/oppo/tribune/cache/BitmapDownload$State;

    iput-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mState:Lcom/oppo/tribune/cache/BitmapDownload$State;

    .line 196
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mState:Lcom/oppo/tribune/cache/BitmapDownload$State;

    sget-object v2, Lcom/oppo/tribune/cache/BitmapDownload$State;->FINISHED:Lcom/oppo/tribune/cache/BitmapDownload$State;

    if-eq v1, v2, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->downloadImpl()V

    .line 202
    :cond_1
    monitor-enter p0

    .line 203
    :try_start_1
    sget-object v1, Lcom/oppo/tribune/cache/BitmapDownload$State;->FINISHED:Lcom/oppo/tribune/cache/BitmapDownload$State;

    iput-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->mState:Lcom/oppo/tribune/cache/BitmapDownload$State;

    .line 204
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 205
    invoke-direct {p0}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->onDownloadFinish()V

    .line 206
    invoke-direct {p0}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadTarget;->onDownloadExit()V

    .line 207
    return-void

    .line 196
    .end local v0    # "download":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 204
    .restart local v0    # "download":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
