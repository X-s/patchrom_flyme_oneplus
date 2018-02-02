.class Lcom/oneplus/base/OperationCallbackHelper$2;
.super Ljava/lang/Object;
.source "OperationCallbackHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/OperationCallbackHelper;->callOnCompleted(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/OperationCallbackHelper;

.field final synthetic val$arg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/base/OperationCallbackHelper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    .local p1, "this$0":Lcom/oneplus/base/OperationCallbackHelper;, "Lcom/oneplus/base/OperationCallbackHelper<TTCanceled;TTCompleted;TTStarted;>;"
    .local p2, "val$arg":Ljava/lang/Object;, "TTCompleted;"
    iput-object p1, p0, Lcom/oneplus/base/OperationCallbackHelper$2;->this$0:Lcom/oneplus/base/OperationCallbackHelper;

    iput-object p2, p0, Lcom/oneplus/base/OperationCallbackHelper$2;->val$arg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/base/OperationCallbackHelper$2;->this$0:Lcom/oneplus/base/OperationCallbackHelper;

    invoke-static {v0}, Lcom/oneplus/base/OperationCallbackHelper;->-get0(Lcom/oneplus/base/OperationCallbackHelper;)Lcom/oneplus/base/OperationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/OperationCallbackHelper$2;->val$arg:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/oneplus/base/OperationCallback;->onCompleted(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
