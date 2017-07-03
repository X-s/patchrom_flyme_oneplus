.class abstract Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;
.super Lcom/oneplus/base/Handle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CallbackHandle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TCallback:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/base/Handle;"
    }
.end annotation


# instance fields
.field public final callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTCallback;"
        }
    .end annotation
.end field

.field public final callbackHandler:Landroid/os/Handler;

.field public final callbackThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TTCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;, "Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle<TTCallback;>;"
    .local p2, "callback":Ljava/lang/Object;, "TTCallback;"
    invoke-direct {p0, p1}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 657
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;->callback:Ljava/lang/Object;

    .line 658
    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;->callbackHandler:Landroid/os/Handler;

    .line 659
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$CallbackHandle;->callbackThread:Ljava/lang/Thread;

    .line 660
    return-void

    .line 659
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
