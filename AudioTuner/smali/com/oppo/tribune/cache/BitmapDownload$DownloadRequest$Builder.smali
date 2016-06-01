.class public final Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "BitmapDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private callback:Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

.field private final context:Landroid/content/Context;

.field private pathname:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->context:Landroid/content/Context;

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/oppo/tribune/cache/BitmapDownload$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/oppo/tribune/cache/BitmapDownload$1;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->pathname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;)Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->callback:Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;
    .locals 2

    .prologue
    .line 326
    new-instance v0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest;-><init>(Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;Lcom/oppo/tribune/cache/BitmapDownload$1;)V

    return-object v0
.end method

.method public setCallback(Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;)Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;
    .locals 0
    .param p1, "callback"    # Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->callback:Lcom/oppo/tribune/ui/AbsBitmapViewCallBack;

    .line 322
    return-object p0
.end method

.method public setPathname(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;
    .locals 0
    .param p1, "pathname"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->pathname:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/oppo/tribune/cache/BitmapDownload$DownloadRequest$Builder;->url:Ljava/lang/String;

    .line 312
    return-object p0
.end method
