.class Lcom/oneplus/camera/AutoTestService$38;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$activity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 2025
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$38;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$38;->val$activity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2030
    const-string/jumbo v0, "CameraAutoTestService"

    const-string/jumbo v1, "stop() - Finish activity by service"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$38;->val$activity:Lcom/oneplus/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->finishAndRemoveTask()V

    .line 2028
    return-void
.end method
