.class Lcom/oneplus/camera/AutoTestService$37;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->startAutoFocus(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$result:[Ljava/lang/Boolean;

.field final synthetic val$touchAUtoFocusUi:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;[Ljava/lang/Boolean;Lcom/oneplus/camera/ui/TouchAutoFocusUI;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$result"    # [Ljava/lang/Boolean;
    .param p3, "val$touchAUtoFocusUi"    # Lcom/oneplus/camera/ui/TouchAutoFocusUI;
    .param p4, "val$x"    # F
    .param p5, "val$y"    # F

    .prologue
    .line 1937
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$37;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$37;->val$result:[Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/oneplus/camera/AutoTestService$37;->val$touchAUtoFocusUi:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    iput p4, p0, Lcom/oneplus/camera/AutoTestService$37;->val$x:F

    iput p5, p0, Lcom/oneplus/camera/AutoTestService$37;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1942
    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService$37;->val$result:[Ljava/lang/Boolean;

    monitor-enter v2

    .line 1944
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$37;->val$touchAUtoFocusUi:Lcom/oneplus/camera/ui/TouchAutoFocusUI;

    iget v3, p0, Lcom/oneplus/camera/AutoTestService$37;->val$x:F

    iget v4, p0, Lcom/oneplus/camera/AutoTestService$37;->val$y:F

    invoke-interface {v1, v3, v4}, Lcom/oneplus/camera/ui/TouchAutoFocusUI;->touchAutoFocus(FF)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 1946
    .local v0, "handle":Lcom/oneplus/base/Handle;
    const-string/jumbo v1, "CameraAutoTestService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "touchAutoFocus() - handle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , Handle.isValid(handle) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$37;->val$result:[Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 1949
    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$37;->val$result:[Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1940
    return-void

    .line 1942
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
