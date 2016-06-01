.class Lcom/oneplus/base/BaseThread$1;
.super Ljava/lang/Object;
.source "BaseThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/BaseThread;->onStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/BaseThread;


# direct methods
.method constructor <init>(Lcom/oneplus/base/BaseThread;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/oneplus/base/BaseThread$1;->this$0:Lcom/oneplus/base/BaseThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oneplus/base/BaseThread$1;->this$0:Lcom/oneplus/base/BaseThread;

    # getter for: Lcom/oneplus/base/BaseThread;->m_ThreadStartCallback:Lcom/oneplus/base/BaseThread$ThreadStartCallback;
    invoke-static {v0}, Lcom/oneplus/base/BaseThread;->access$000(Lcom/oneplus/base/BaseThread;)Lcom/oneplus/base/BaseThread$ThreadStartCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseThread$1;->this$0:Lcom/oneplus/base/BaseThread;

    invoke-interface {v0, v1}, Lcom/oneplus/base/BaseThread$ThreadStartCallback;->onCameraThreadStarted(Lcom/oneplus/base/BaseThread;)V

    .line 263
    return-void
.end method
