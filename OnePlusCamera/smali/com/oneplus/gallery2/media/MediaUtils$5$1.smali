.class Lcom/oneplus/gallery2/media/MediaUtils$5$1;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/MediaUtils$5;

.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

.field private final synthetic val$finalMimeType:Ljava/lang/String;

.field private final synthetic val$googleDriveUri:Landroid/net/Uri;

.field private final synthetic val$handle:Lcom/oneplus/base/EmptyHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaUtils$5;Lcom/oneplus/base/EmptyHandle;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->this$1:Lcom/oneplus/gallery2/media/MediaUtils$5;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$handle:Lcom/oneplus/base/EmptyHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$googleDriveUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$finalMimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 562
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$handle:Lcom/oneplus/base/EmptyHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MediaUtils"

    const-string/jumbo v1, "getMediaFromGoogleDriveUri() - MimeType of "

    .line 564
    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$googleDriveUri:Landroid/net/Uri;

    const-string/jumbo v3, " is "

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$finalMimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$googleDriveUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$finalMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/TempMedia;->create(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/gallery2/media/TempMedia;

    move-result-object v4

    .line 568
    if-nez v4, :cond_2

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    return-void

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getSource()Lcom/oneplus/gallery2/media/MediaSource;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$googleDriveUri:Landroid/net/Uri;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method
