.class final Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;
.super Lcom/oneplus/base/Handle;
.source "ProxyComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ProxyComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsyncMethodCallHandle"
.end annotation


# instance fields
.field public final args:[Ljava/lang/Object;

.field public callingRunnable:Ljava/lang/Runnable;

.field public final method:Ljava/lang/reflect/Method;

.field public volatile resultHandle:Lcom/oneplus/base/Handle;

.field final synthetic this$0:Lcom/oneplus/camera/ProxyComponent;


# direct methods
.method public varargs constructor <init>(Lcom/oneplus/camera/ProxyComponent;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 68
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>.AsyncMethodCallHandle;"
    iput-object p1, p0, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->this$0:Lcom/oneplus/camera/ProxyComponent;

    .line 69
    const-string v0, "AsyncMethodCall"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p2, p0, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->method:Ljava/lang/reflect/Method;

    .line 71
    iput-object p3, p0, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->args:[Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 77
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>.AsyncMethodCallHandle;"
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->this$0:Lcom/oneplus/camera/ProxyComponent;

    # invokes: Lcom/oneplus/camera/ProxyComponent;->cancelCallingTargetMethod(Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/ProxyComponent;->access$100(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V

    .line 78
    return-void
.end method
