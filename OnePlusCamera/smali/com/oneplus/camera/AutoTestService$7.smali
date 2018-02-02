.class Lcom/oneplus/camera/AutoTestService$7;
.super Lcom/oneplus/camera/IAutoTestService$Stub;
.source "AutoTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/AutoTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-direct {p0}, Lcom/oneplus/camera/IAutoTestService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooleanState(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap0(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloatState(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap10(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getIntState(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap11(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLongState(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/camera/AutoTestService;->-wrap13(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap12(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActivityAttached()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get13(Lcom/oneplus/camera/AutoTestService;)Z

    move-result v0

    return v0
.end method

.method public performAction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap1(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setBooleanState(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap2(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFloatState(Ljava/lang/String;F)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap3(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public setIntState(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap4(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setLongState(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/camera/AutoTestService;->-wrap5(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public setStringState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap6(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap9(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startAutoFocus(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap7(Lcom/oneplus/camera/AutoTestService;FF)Z

    move-result v0

    return v0
.end method

.method public startCameraActivity(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/AutoTestService;->-wrap8(Lcom/oneplus/camera/AutoTestService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$7;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-wrap21(Lcom/oneplus/camera/AutoTestService;)V

    .line 348
    return-void
.end method
