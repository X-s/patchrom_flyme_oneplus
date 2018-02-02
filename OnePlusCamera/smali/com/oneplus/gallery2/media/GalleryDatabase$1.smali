.class Lcom/oneplus/gallery2/media/GalleryDatabase$1;
.super Landroid/database/ContentObserver;
.source "GalleryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/GalleryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 761
    invoke-static {}, Lcom/oneplus/gallery2/MediaContentThread;->current()Lcom/oneplus/gallery2/MediaContentThread;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/media/GalleryDatabase$1$1;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/gallery2/media/GalleryDatabase$1$1;-><init>(Lcom/oneplus/gallery2/media/GalleryDatabase$1;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 768
    if-eqz v0, :cond_0

    .line 772
    :goto_0
    return-void

    .line 770
    :cond_0
    invoke-static {p2}, Lcom/oneplus/gallery2/media/GalleryDatabase;->access$0(Landroid/net/Uri;)V

    goto :goto_0
.end method
