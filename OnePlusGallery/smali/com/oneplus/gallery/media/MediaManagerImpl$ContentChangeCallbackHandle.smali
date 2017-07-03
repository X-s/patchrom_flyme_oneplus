.class final Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;
.super Lcom/oneplus/base/Handle;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentChangeCallbackHandle"
.end annotation


# static fields
.field private static final MSG_CONTENT_CHANGED:I = 0x2710


# instance fields
.field public final contentUri:Landroid/net/Uri;

.field private final m_Callback:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

.field private final m_CallbackHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 846
    const-string v0, "ContentChangeCallback"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 847
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    .line 848
    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    .line 849
    if-eqz p4, :cond_0

    .line 851
    new-instance v0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle$1;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;Landroid/os/Looper;Lcom/oneplus/gallery/media/MediaManagerImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    .line 867
    :goto_0
    return-void

    .line 866
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    .prologue
    .line 837
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    return-object v0
.end method


# virtual methods
.method public notifyContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 880
    invoke-static {p0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 882
    :cond_0
    if-nez p1, :cond_1

    .line 883
    iget-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 885
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;->onContentChanged(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 872
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->isContentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->unregisterContentChangedCallback(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1900(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)V

    .line 876
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271b

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
