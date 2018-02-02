.class Lcom/oneplus/camera/manual/ManualModeUI$36;
.super Ljava/lang/Object;
.source "ManualModeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/manual/ManualModeUI;->setRawCaptureState(Lcom/oneplus/camera/Camera;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/manual/ManualModeUI;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/manual/ManualModeUI;Lcom/oneplus/camera/Camera;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/manual/ManualModeUI;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$enabled"    # Z

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/oneplus/camera/manual/ManualModeUI$36;->this$0:Lcom/oneplus/camera/manual/ManualModeUI;

    iput-object p2, p0, Lcom/oneplus/camera/manual/ManualModeUI$36;->val$camera:Lcom/oneplus/camera/Camera;

    iput-boolean p3, p0, Lcom/oneplus/camera/manual/ManualModeUI$36;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$36;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_RAW_CAPTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    iget-boolean v2, p0, Lcom/oneplus/camera/manual/ManualModeUI$36;->val$enabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2170
    return-void
.end method
