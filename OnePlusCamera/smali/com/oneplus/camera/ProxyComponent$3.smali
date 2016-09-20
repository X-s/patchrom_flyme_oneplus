.class Lcom/oneplus/camera/ProxyComponent$3;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ProxyComponent;->callTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ProxyComponent;

.field final synthetic val$handle:Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V
    .locals 0

    .prologue
    .line 203
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent$3;, "Lcom/oneplus/camera/ProxyComponent.3;"
    iput-object p1, p0, Lcom/oneplus/camera/ProxyComponent$3;->this$0:Lcom/oneplus/camera/ProxyComponent;

    iput-object p2, p0, Lcom/oneplus/camera/ProxyComponent$3;->val$handle:Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 207
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent$3;, "Lcom/oneplus/camera/ProxyComponent.3;"
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent$3;->this$0:Lcom/oneplus/camera/ProxyComponent;

    # getter for: Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ProxyComponent;->access$300(Lcom/oneplus/camera/ProxyComponent;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent$3;->this$0:Lcom/oneplus/camera/ProxyComponent;

    # getter for: Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ProxyComponent;->access$300(Lcom/oneplus/camera/ProxyComponent;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/camera/ProxyComponent$3;->val$handle:Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent$3;->this$0:Lcom/oneplus/camera/ProxyComponent;

    iget-object v1, p0, Lcom/oneplus/camera/ProxyComponent$3;->val$handle:Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    # invokes: Lcom/oneplus/camera/ProxyComponent;->callTargetMethod(Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/ProxyComponent;->access$400(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
