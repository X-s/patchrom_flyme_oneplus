.class Lcom/oneplus/cache/AsyncLruCache$1;
.super Landroid/os/Handler;
.source "AsyncLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/cache/AsyncLruCache;->checkWorkerThread()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/cache/AsyncLruCache;


# direct methods
.method constructor <init>(Lcom/oneplus/cache/AsyncLruCache;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 83
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache$1;, "Lcom/oneplus/cache/AsyncLruCache.1;"
    iput-object p1, p0, Lcom/oneplus/cache/AsyncLruCache$1;->this$0:Lcom/oneplus/cache/AsyncLruCache;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    .local p0, "this":Lcom/oneplus/cache/AsyncLruCache$1;, "Lcom/oneplus/cache/AsyncLruCache.1;"
    iget-object v0, p0, Lcom/oneplus/cache/AsyncLruCache$1;->this$0:Lcom/oneplus/cache/AsyncLruCache;

    invoke-virtual {v0, p1}, Lcom/oneplus/cache/AsyncLruCache;->handleWorkerThreadMessage(Landroid/os/Message;)V

    .line 88
    return-void
.end method
