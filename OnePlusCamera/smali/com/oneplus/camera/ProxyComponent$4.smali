.class Lcom/oneplus/camera/ProxyComponent$4;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ProxyComponent;->cancelCallingTargetMethod(Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V
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
    .line 261
    .local p1, "this$0":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p2, "val$handle":Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>.AsyncMethodCallHandle;"
    iput-object p1, p0, Lcom/oneplus/camera/ProxyComponent$4;->this$0:Lcom/oneplus/camera/ProxyComponent;

    iput-object p2, p0, Lcom/oneplus/camera/ProxyComponent$4;->val$handle:Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent$4;->val$handle:Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    iget-object v0, v0, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->resultHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 264
    return-void
.end method
