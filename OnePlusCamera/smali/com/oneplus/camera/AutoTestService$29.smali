.class Lcom/oneplus/camera/AutoTestService$29;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setStringState(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$mode:Lcom/oneplus/camera/capturemode/CaptureMode;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/capturemode/CaptureMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$mode"    # Lcom/oneplus/camera/capturemode/CaptureMode;

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$29;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$29;->val$mode:Lcom/oneplus/camera/capturemode/CaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$29;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get6(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/capturemode/CaptureModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$29;->val$mode:Lcom/oneplus/camera/capturemode/CaptureMode;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/capturemode/CaptureModeManager;->setCaptureMode(Lcom/oneplus/camera/capturemode/CaptureMode;I)Z

    .line 1624
    return-void
.end method
