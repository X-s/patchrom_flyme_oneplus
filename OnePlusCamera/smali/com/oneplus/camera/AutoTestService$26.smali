.class Lcom/oneplus/camera/AutoTestService$26;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setLongState(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$manualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/manual/ManualModeUI;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$manualModeUi"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p3, "val$value"    # J

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$26;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$26;->val$manualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    iput-wide p3, p0, Lcom/oneplus/camera/AutoTestService$26;->val$value:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$26;->val$manualModeUi:Lcom/oneplus/camera/manual/ManualModeUI;

    iget-wide v2, p0, Lcom/oneplus/camera/AutoTestService$26;->val$value:J

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/manual/ManualModeUI;->setExposure(J)V

    .line 1560
    return-void
.end method
