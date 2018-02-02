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

.field private final synthetic val$downloadUri:Landroid/net/Uri;

.field private final synthetic val$finalFilePath:Ljava/lang/String;

.field private final synthetic val$flags:I

.field private final synthetic val$handle:Lcom/oneplus/base/CallbackHandle;

.field private final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaUtils$5;Lcom/oneplus/base/CallbackHandle;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->this$1:Lcom/oneplus/gallery2/media/MediaUtils$5;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$handle:Lcom/oneplus/base/CallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$downloadUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$finalFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$mimeType:Ljava/lang/String;

    iput-object p6, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iput p7, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$flags:I

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$handle:Lcom/oneplus/base/CallbackHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MediaUtils"

    const-string/jumbo v2, "getMediaFromDownloadUri() - File path of "

    .line 550
    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$downloadUri:Landroid/net/Uri;

    const-string/jumbo v4, " is "

    iget-object v6, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$finalFilePath:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$downloadUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$mimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$finalFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget v6, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$flags:I

    invoke-static {v0, v2, v3, v4, v6}, Lcom/oneplus/gallery2/media/MediaUtils;->access$1(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    return-void

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$callback:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/MediaUtils$5$1;->val$downloadUri:Landroid/net/Uri;

    move-object v3, v1

    move-object v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V

    goto :goto_0
.end method
