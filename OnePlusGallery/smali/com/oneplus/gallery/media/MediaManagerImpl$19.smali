.class Lcom/oneplus/gallery/media/MediaManagerImpl$19;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3261
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;->val$handle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;->val$contentUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 3264
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;->val$handle:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;->val$contentUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;->val$mimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$19;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v6}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v1, v4, v5, v6}, Lcom/oneplus/gallery/media/TempMedia;->create(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)Lcom/oneplus/gallery/media/TempMedia;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V

    .line 3265
    return-void
.end method
