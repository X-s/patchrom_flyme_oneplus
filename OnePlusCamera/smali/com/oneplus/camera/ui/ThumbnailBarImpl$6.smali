.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 259
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    const/4 v2, 0x1

    .line 261
    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 262
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v4

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFrameIndex()I

    move-result v5

    invoke-static {v3, v4, v5, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;IZ)Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;

    move-result-object v1

    .line 263
    .local v1, "thumbInfo":Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;
    iput-object v0, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->contentUri:Landroid/net/Uri;

    .line 264
    iget-object v3, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v4, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    iget-boolean v5, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->isPostview:Z

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-static {v3, v0, v4, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    .line 266
    :cond_1
    iget-object v2, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;->isDecodingPostview:Z

    if-eqz v2, :cond_3

    .line 259
    :cond_2
    :goto_0
    return-void

    .line 267
    :cond_3
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$6;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbnailInfo;)Z

    goto :goto_0
.end method
