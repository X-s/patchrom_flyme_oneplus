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

    .prologue
    const/4 v1, 0x0

    .line 47
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    const-string/jumbo v0, "ContentChangeCallback"

    .line 48
    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    .line 50
    iput-object p3, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    .line 51
    if-nez p4, :cond_0

    .line 68
    iput-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    .line 69
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle$1;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle$1;-><init>(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    return-object v0
.end method


# virtual methods
.method public notifyContentChanged(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 82
    invoke-static {p0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    if-eqz p1, :cond_2

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;->onContentChanged(Landroid/net/Uri;)V

    .line 90
    :goto_1
    return-void

    .line 83
    :cond_1
    return-void

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->contentUri:Landroid/net/Uri;

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_CallbackHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method protected onClose(I)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->access$0(Lcom/oneplus/gallery2/media/ContentObserverImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    invoke-static {v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->access$2(Lcom/oneplus/gallery2/media/ContentObserverImpl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271b

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/ContentObserverImpl;->access$1(Lcom/oneplus/gallery2/media/ContentObserverImpl;Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)V

    goto :goto_0
.end method
