.class public abstract Lcom/oppo/music/manager/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field protected mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancleRequest()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oppo/music/manager/Request;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/oppo/music/manager/Request;->mFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 42
    :cond_0
    return-void
.end method

.method public abstract execute()V
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lcom/oppo/music/manager/Request;->mFuture:Ljava/util/concurrent/Future;

    .line 36
    return-void
.end method
