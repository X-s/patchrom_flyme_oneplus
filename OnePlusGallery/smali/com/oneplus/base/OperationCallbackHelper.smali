.class public Lcom/oneplus/base/OperationCallbackHelper;
.super Ljava/lang/Object;
.source "OperationCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TCanceled:",
        "Ljava/lang/Object;",
        "TCompleted:",
        "Ljava/lang/Object;",
        "TStarted:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private m_Callback:Lcom/oneplus/base/OperationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/OperationCallback",
            "<TTCanceled;TTCompleted;TTStarted;>;"
        }
    .end annotation
.end field

.field private m_Handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/oneplus/base/OperationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/OperationCallback",
            "<TTCanceled;TTCompleted;TTStarted;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<TTCanceled;TTCompleted;TTStarted;>;"
    .local p1, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<TTCanceled;TTCompleted;TTStarted;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/base/OperationCallbackHelper;-><init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/base/OperationCallback;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/OperationCallback",
            "<TTCanceled;TTCompleted;TTStarted;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<TTCanceled;TTCompleted;TTStarted;>;"
    .local p1, "callback":Lcom/oneplus/base/OperationCallback;, "Lcom/oneplus/base/OperationCallback<TTCanceled;TTCompleted;TTStarted;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Callback:Lcom/oneplus/base/OperationCallback;

    .line 34
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Callback:Lcom/oneplus/base/OperationCallback;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Operation callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Handler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/base/OperationCallbackHelper;)Lcom/oneplus/base/OperationCallback;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Callback:Lcom/oneplus/base/OperationCallback;

    return-object v0
.end method

.method private isDependencyThread()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<TTCanceled;TTCompleted;TTStarted;>;"
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public callOnCanceled(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTCanceled;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<TTCanceled;TTCompleted;TTStarted;>;"
    .local p1, "arg":Ljava/lang/Object;, "TTCanceled;"
    invoke-direct {p0}, Lcom/oneplus/base/OperationCallbackHelper;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Callback:Lcom/oneplus/base/OperationCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/base/OperationCallback;->onCanceled(Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/base/OperationCallbackHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/base/OperationCallbackHelper$1;-><init>(Lcom/oneplus/base/OperationCallbackHelper;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public callOnCompleted(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTCompleted;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<TTCanceled;TTCompleted;TTStarted;>;"
    .local p1, "arg":Ljava/lang/Object;, "TTCompleted;"
    invoke-direct {p0}, Lcom/oneplus/base/OperationCallbackHelper;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Callback:Lcom/oneplus/base/OperationCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/base/OperationCallbackHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/base/OperationCallbackHelper$2;-><init>(Lcom/oneplus/base/OperationCallbackHelper;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public callOnStarted(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTStarted;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<TTCanceled;TTCompleted;TTStarted;>;"
    .local p1, "arg":Ljava/lang/Object;, "TTStarted;"
    invoke-direct {p0}, Lcom/oneplus/base/OperationCallbackHelper;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Callback:Lcom/oneplus/base/OperationCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/base/OperationCallback;->onStarted(Ljava/lang/Object;)V

    .line 103
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper;->m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/base/OperationCallbackHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/base/OperationCallbackHelper$3;-><init>(Lcom/oneplus/base/OperationCallbackHelper;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
