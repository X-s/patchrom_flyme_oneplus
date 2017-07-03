.class public abstract Lcom/oneplus/base/ListHandlerBaseObject;
.super Lcom/oneplus/base/ListBaseObject;
.source "ListHandlerBaseObject.java"

# interfaces
.implements Lcom/oneplus/base/HandlerObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/base/ListBaseObject",
        "<TT;>;",
        "Lcom/oneplus/base/HandlerObject;"
    }
.end annotation


# instance fields
.field private final m_Handler:Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    .local p0, "this":Lcom/oneplus/base/ListHandlerBaseObject;, "Lcom/oneplus/base/ListHandlerBaseObject<TT;>;"
    invoke-direct {p0}, Lcom/oneplus/base/ListBaseObject;-><init>()V

    .line 50
    new-instance v0, Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;

    invoke-direct {v0, p0}, Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;-><init>(Lcom/oneplus/base/ListHandlerBaseObject;)V

    iput-object v0, p0, Lcom/oneplus/base/ListHandlerBaseObject;->m_Handler:Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;

    .line 51
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/oneplus/base/ListHandlerBaseObject;, "Lcom/oneplus/base/ListHandlerBaseObject<TT;>;"
    iget-object v0, p0, Lcom/oneplus/base/ListHandlerBaseObject;->m_Handler:Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    .local p0, "this":Lcom/oneplus/base/ListHandlerBaseObject;, "Lcom/oneplus/base/ListHandlerBaseObject<TT;>;"
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/oneplus/base/ListHandlerBaseObject;, "Lcom/oneplus/base/ListHandlerBaseObject<TT;>;"
    invoke-super {p0}, Lcom/oneplus/base/ListBaseObject;->release()V

    .line 75
    iget-object v0, p0, Lcom/oneplus/base/ListHandlerBaseObject;->m_Handler:Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;

    invoke-virtual {v0}, Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;->release()V

    .line 76
    return-void
.end method
