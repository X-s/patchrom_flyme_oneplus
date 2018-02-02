.class Lcom/oneplus/gallery2/MediaContentThread$1;
.super Ljava/lang/Object;
.source "MediaContentThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaContentThread;->invoke(Ljava/lang/Runnable;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaContentThread;

.field private final synthetic val$r:Ljava/lang/Runnable;

.field private final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaContentThread;Ljava/lang/Runnable;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaContentThread$1;->this$0:Lcom/oneplus/gallery2/MediaContentThread;

    iput-object p2, p0, Lcom/oneplus/gallery2/MediaContentThread$1;->val$r:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/oneplus/gallery2/MediaContentThread$1;->val$result:[Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaContentThread$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaContentThread$1;->val$result:[Z

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaContentThread$1;->val$result:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 68
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaContentThread$1;->val$result:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v1

    .line 70
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
