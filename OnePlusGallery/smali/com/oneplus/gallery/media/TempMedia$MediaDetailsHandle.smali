.class final Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;
.super Lcom/oneplus/base/Handle;
.source "TempMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/TempMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaDetailsHandle"
.end annotation


# instance fields
.field public final callback:Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;

.field public final callbackHandler:Landroid/os/Handler;

.field public volatile task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oneplus/gallery/media/TempMedia;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/TempMedia;Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)V
    .locals 1
    .param p2, "callback"    # Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->this$0:Lcom/oneplus/gallery/media/TempMedia;

    .line 44
    const-string v0, "GetMediaDetails"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->callback:Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;

    .line 46
    iput-object p3, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->callbackHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->closeDirectly()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/oneplus/gallery/media/MediaDetails;)V
    .locals 2
    .param p1, "details"    # Lcom/oneplus/gallery/media/MediaDetails;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->callbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle$1;-><init>(Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;Lcom/oneplus/gallery/media/MediaDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-static {p0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->callback:Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->this$0:Lcom/oneplus/gallery/media/TempMedia;

    invoke-interface {v0, v1, p0, p1}, Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;->onMediaDetailsRetrieved(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/base/Handle;Lcom/oneplus/gallery/media/MediaDetails;)V

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->closeDirectly()V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery/media/TempMedia$MediaDetailsHandle;->task:Landroid/os/AsyncTask;

    .line 79
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 81
    :cond_0
    return-void
.end method
