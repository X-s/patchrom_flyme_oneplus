.class final Lcom/oneplus/base/BaseFragment$InternalHandler;
.super Landroid/os/Handler;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# instance fields
.field private volatile m_Owner:Lcom/oneplus/base/BaseFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/base/BaseFragment;)V
    .locals 0
    .param p1, "owner"    # Lcom/oneplus/base/BaseFragment;

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/oneplus/base/BaseFragment$InternalHandler;->m_Owner:Lcom/oneplus/base/BaseFragment;

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/base/BaseFragment$InternalHandler;->m_Owner:Lcom/oneplus/base/BaseFragment;

    .line 119
    .local v0, "owner":Lcom/oneplus/base/BaseFragment;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseFragment;->handleMessage(Landroid/os/Message;)V

    .line 116
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string/jumbo v1, "BaseActivity"

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
    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/base/BaseFragment$InternalHandler;->m_Owner:Lcom/oneplus/base/BaseFragment;

    .line 125
    return-void
.end method
