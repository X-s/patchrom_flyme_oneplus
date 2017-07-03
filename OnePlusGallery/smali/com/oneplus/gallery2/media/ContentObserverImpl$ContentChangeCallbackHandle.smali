.class final Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;
.super Lcom/oneplus/base/Handle;
.source "ContentObserverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ContentObserverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentChangeCallbackHandle"
.end annotation


# static fields
.field private static final MSG_CONTENT_CHANGED:I = 0x2710


# instance fields
.field public final contentUri:Landroid/net/Uri;

.field private final m_Callback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

.field private final m_CallbackHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    .line 48
    const-string v0, "ContentChangeCallback"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    .line 50
    iput-object p3, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    .line 51
    if-eqz p4, :cond_0

    .line 53
    new-instance v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle$1;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle$1;-><init>(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;Landroid/os/Looper;Lcom/oneplus/gallery2/media/ContentObserverImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    return-object v0
.end method


# virtual methods
.method public notifyContentChanged(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_0
    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;->onContentChanged(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    # invokes: Lcom/oneplus/gallery2/media/ContentObserverImpl;->isContentObserverThread()Z
    invoke-static {v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->access$100(Lcom/oneplus/gallery2/media/ContentObserverImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    # invokes: Lcom/oneplus/gallery2/media/ContentObserverImpl;->unregisterContentChangedCallback(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->access$200(Lcom/oneplus/gallery2/media/ContentObserverImpl;Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    # getter for: Lcom/oneplus/gallery2/media/ContentObserverImpl;->m_ContentObserverThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->access$300(Lcom/oneplus/gallery2/media/ContentObserverImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271b

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
