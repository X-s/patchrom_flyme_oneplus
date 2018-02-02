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
    .param p1, "this$0"    # Lcom/oneplus/base/BaseThread;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/oneplus/base/BaseThread$1;->this$0:Lcom/oneplus/base/BaseThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/oneplus/base/BaseThread$1;->this$0:Lcom/oneplus/base/BaseThread;

    invoke-static {v0}, Lcom/oneplus/base/BaseThread;->-get0(Lcom/oneplus/base/BaseThread;)Lcom/oneplus/base/BaseThread$ThreadStartCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseThread$1;->this$0:Lcom/oneplus/base/BaseThread;

    invoke-interface {v0, v1}, Lcom/oneplus/base/BaseThread$ThreadStartCallback;->onThreadStarted(Lcom/oneplus/base/BaseThread;)V

    .line 276
    return-void
.end method
