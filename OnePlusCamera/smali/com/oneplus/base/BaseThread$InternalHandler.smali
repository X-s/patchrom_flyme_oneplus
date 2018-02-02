.class final Lcom/oneplus/base/BaseThread$InternalHandler;
.super Landroid/os/Handler;
.source "BaseThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BaseThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# instance fields
.field private volatile m_Owner:Lcom/oneplus/base/BaseThread;


# direct methods
.method public constructor <init>(Lcom/oneplus/base/BaseThread;)V
    .locals 0
    .param p1, "owner"    # Lcom/oneplus/base/BaseThread;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/oneplus/base/BaseThread$InternalHandler;->m_Owner:Lcom/oneplus/base/BaseThread;

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/base/BaseThread$InternalHandler;->m_Owner:Lcom/oneplus/base/BaseThread;

    .line 89
    .local v0, "owner":Lcom/oneplus/base/BaseThread;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseThread;->handleMessage(Landroid/os/Message;)V

    .line 86
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string/jumbo v1, "BaseThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Owner released, drop message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/base/BaseThread$InternalHandler;->m_Owner:Lcom/oneplus/base/BaseThread;

    .line 95
    return-void
.end method
