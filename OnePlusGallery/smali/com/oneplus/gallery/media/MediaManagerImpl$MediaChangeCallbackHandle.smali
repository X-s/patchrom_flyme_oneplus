.class final Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;
.super Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaChangeCallbackHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle",
        "<",
        "Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;Landroid/os/Handler;)V
    .locals 1
    .param p2, "callback"    # Lcom/oneplus/gallery/media/MediaManager$MediaChangeCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 670
    const-string v0, "MediaChangeCallback"

    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 671
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 677
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->unregisterMediaChangeCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1700(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$MediaChangeCallbackHandle;)V

    .line 678
    return-void
.end method
