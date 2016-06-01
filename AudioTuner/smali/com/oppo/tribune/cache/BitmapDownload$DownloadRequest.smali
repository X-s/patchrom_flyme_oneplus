.class public final Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;
.super Ljava/lang/Object;
.source "BitmapDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/cache/BitmapDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

.field private mCancel:Z

.field private final mContext:Landroid/content/Context;

.field private final mPathname:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mCancel:Z

    .line 234
    # getter for: Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->access$400(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mContext:Landroid/content/Context;

    .line 235
    # getter for: Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->access$500(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mUrl:Ljava/lang/String;

    .line 236
    # getter for: Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->pathname:Ljava/lang/String;
    invoke-static {p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->access$600(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mPathname:Ljava/lang/String;

    .line 237
    # getter for: Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->callback:Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;
    invoke-static {p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->access$700(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mCallback:Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;Lcom/oppo/tribune/cache/BitmapDownload$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;
    .param p2, "x1"    # Lcom/oppo/tribune/cache/BitmapDownload$1;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;-><init>(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    new-instance v0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;-><init>(Landroid/content/Context;Lcom/oppo/tribune/cache/BitmapDownload$1;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mCancel:Z

    .line 262
    return-void
.end method

.method public execute()Z
    .locals 6

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mPathname:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 289
    :cond_0
    # getter for: Lcom/oppo/tribune/cache/BitmapDownload;->singleton:Lcom/oppo/tribune/cache/BitmapDownload;
    invoke-static {}, Lcom/oppo/tribune/cache/BitmapDownload;->access$800()Lcom/oppo/tribune/cache/BitmapDownload;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    # getter for: Lcom/oppo/tribune/cache/BitmapDownload;->singleton:Lcom/oppo/tribune/cache/BitmapDownload;
    invoke-static {}, Lcom/oppo/tribune/cache/BitmapDownload;->access$800()Lcom/oppo/tribune/cache/BitmapDownload;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oppo/tribune/cache/BitmapDownload;->requestDownload(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;)V

    .line 292
    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 285
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallback()Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mCallback:Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPathname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mPathname:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mCancel:Z

    return v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mCancel:Z

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadRequest [mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPathname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mPathname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;->mCallback:Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
