.class Lcom/oppo/tribune/cache/BitmapDownload$1;
.super Ljava/lang/Object;
.source "BitmapDownload.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/cache/BitmapDownload;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/oppo/tribune/cache/BitmapDownload;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/cache/BitmapDownload;)V
    .locals 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oppo/tribune/cache/BitmapDownload$1;->this$0:Lcom/oppo/tribune/cache/BitmapDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/oppo/tribune/cache/BitmapDownload$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 48
    iget-object v1, p0, Lcom/oppo/tribune/cache/BitmapDownload$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDownload #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/cache/BitmapDownload$1;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 50
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 51
    return-object v0
.end method
