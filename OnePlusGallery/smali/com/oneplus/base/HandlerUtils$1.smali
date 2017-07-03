.class Lcom/oneplus/base/HandlerUtils$1;
.super Ljava/lang/Object;
.source "HandlerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/HandlerUtils;->postAndWait(Landroid/os/Handler;Ljava/lang/Runnable;JJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$r:Ljava/lang/Runnable;

.field private final synthetic val$result:[Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/base/HandlerUtils$1;->val$r:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/oneplus/base/HandlerUtils$1;->val$result:[Z

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oneplus/base/HandlerUtils$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 182
    iget-object v1, p0, Lcom/oneplus/base/HandlerUtils$1;->val$result:[Z

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/base/HandlerUtils$1;->val$result:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 185
    iget-object v0, p0, Lcom/oneplus/base/HandlerUtils$1;->val$result:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 182
    monitor-exit v1

    .line 187
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
