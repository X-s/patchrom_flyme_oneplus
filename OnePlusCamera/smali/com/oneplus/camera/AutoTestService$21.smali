.class Lcom/oneplus/camera/AutoTestService$21;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setFloatState(Ljava/lang/String;F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$manualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/manual/ManualModeUI;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$manualModeUi"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p3, "val$value"    # F

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$21;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$21;->val$manualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    iput p3, p0, Lcom/oneplus/camera/AutoTestService$21;->val$value:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$21;->val$manualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    iget v1, p0, Lcom/oneplus/camera/AutoTestService$21;->val$value:F

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/manual/ManualModeUI;->setFocus(F)V

    .line 1425
    return-void
.end method
