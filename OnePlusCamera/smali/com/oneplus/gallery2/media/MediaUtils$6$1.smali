.class Lcom/oneplus/gallery2/media/MediaUtils$6$1;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/MediaUtils$6;

.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field private final synthetic val$externalDriveUri:Landroid/net/Uri;

.field private final synthetic val$finalMimeType:Ljava/lang/String;

.field private final synthetic val$handle:Lcom/oneplus/base/EmptyHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaUtils$6;Lcom/oneplus/base/EmptyHandle;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->this$1:Lcom/oneplus/gallery2/media/MediaUtils$6;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$handle:Lcom/oneplus/base/EmptyHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$externalDriveUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$finalMimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 588
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$handle:Lcom/oneplus/base/EmptyHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaUtils"

    const-string/jumbo v1, "getMediaFromExternalDriveUri() - MimeType of "

    .line 590
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$externalDriveUri:Landroid/net/Uri;

    const-string/jumbo v3, " is "

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$finalMimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    const-class v1, Lcom/oneplus/gallery2/media/TempMediaSource;

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/TempMediaSource;

    .line 594
    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$externalDriveUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$finalMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/TempMediaSource;->getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-virtual {v0, v1, v2, v5}, Lcom/oneplus/gallery2/media/TempMediaSource;->getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    .line 595
    return-void

    .line 589
    :cond_0
    return-void
.end method
