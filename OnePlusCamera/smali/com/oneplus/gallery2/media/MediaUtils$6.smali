.class Lcom/oneplus/gallery2/media/MediaUtils$6;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils;->getMediaFromExternalDriveUri(Landroid/net/Uri;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field private final synthetic val$externalDriveUri:Landroid/net/Uri;

.field private final synthetic val$handle:Lcom/oneplus/base/EmptyHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/base/EmptyHandle;Landroid/net/Uri;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$handle:Lcom/oneplus/base/EmptyHandle;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$externalDriveUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 580
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$handle:Lcom/oneplus/base/EmptyHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$externalDriveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v6

    new-instance v0, Lcom/oneplus/gallery2/media/MediaUtils$6$1;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$handle:Lcom/oneplus/base/EmptyHandle;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$externalDriveUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaUtils$6$1;-><init>(Lcom/oneplus/gallery2/media/MediaUtils$6;Lcom/oneplus/base/EmptyHandle;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)V

    invoke-static {v6, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    .line 596
    if-eqz v0, :cond_1

    .line 600
    :goto_0
    return-void

    .line 581
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "MediaUtils"

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getMediaFromExternalDriveUri() - Fail to post mime type to main thread for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$6;->val$externalDriveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
