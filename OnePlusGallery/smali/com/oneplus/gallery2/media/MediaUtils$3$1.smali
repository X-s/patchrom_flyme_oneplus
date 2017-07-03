.class Lcom/oneplus/gallery2/media/MediaUtils$3$1;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

.field final synthetic val$finalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaUtils$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->val$finalFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const-string v0, "MediaUtils"

    const-string v2, "getMediaFromDownloadUri() - File path of "

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget-object v3, v3, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    const-string v4, " is "

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->val$finalFilePath:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget-object v2, v2, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->val$finalFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget-object v4, v4, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget-object v5, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget v5, v5, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$flags:I

    # invokes: Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
    invoke-static {v0, v2, v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaUtils;->access$000(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget-object v0, v0, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$3$1;->this$0:Lcom/oneplus/gallery2/media/MediaUtils$3;

    iget-object v2, v2, Lcom/oneplus/gallery2/media/MediaUtils$3;->val$downloadUri:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v3, v1

    move-object v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method
