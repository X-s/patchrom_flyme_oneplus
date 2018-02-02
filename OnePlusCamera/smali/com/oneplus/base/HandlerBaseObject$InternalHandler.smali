.class final Lcom/oneplus/base/HandlerBaseObject$InternalHandler;
.super Landroid/os/Handler;
.source "HandlerBaseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/HandlerBaseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# instance fields
.field private volatile m_Owner:Lcom/oneplus/base/HandlerBaseObject;

.field private final m_Tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oneplus/base/HandlerBaseObject;)V
    .locals 1
    .param p1, "owner"    # Lcom/oneplus/base/HandlerBaseObject;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oneplus/base/HandlerBaseObject$InternalHandler;->m_Owner:Lcom/oneplus/base/HandlerBaseObject;

    .line 24
    iget-object v0, p1, Lcom/oneplus/base/HandlerBaseObject;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/base/HandlerBaseObject$InternalHandler;->m_Tag:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/base/HandlerBaseObject$InternalHandler;->m_Owner:Lcom/oneplus/base/HandlerBaseObject;

    .line 31
    .local v0, "owner":Lcom/oneplus/base/HandlerBaseObject;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Lcom/oneplus/base/HandlerBaseObject;->handleMessage(Landroid/os/Message;)V

    .line 28
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/oneplus/base/HandlerBaseObject$InternalHandler;->m_Tag:Ljava/lang/String;

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
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/base/HandlerBaseObject$InternalHandler;->m_Owner:Lcom/oneplus/base/HandlerBaseObject;

    .line 37
    return-void
.end method
