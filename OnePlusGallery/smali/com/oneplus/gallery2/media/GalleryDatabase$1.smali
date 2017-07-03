.class final Lcom/oneplus/gallery2/media/GalleryDatabase$1;
.super Landroid/database/ContentObserver;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 543
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$1$1;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase$1$1;-><init>(Lcom/oneplus/gallery2/media/GalleryDatabase$1;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    # invokes: Lcom/oneplus/gallery2/media/GalleryDatabase;->onGalleryContentChanged(Landroid/net/Uri;)V
    invoke-static {p2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$100(Landroid/net/Uri;)V

    .line 554
    :cond_0
    return-void
.end method
