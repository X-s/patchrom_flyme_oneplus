.class Lcom/oneplus/camera/ui/CameraWizardImpl$10;
.super Ljava/lang/Object;
.source "CameraWizardImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraWizardImpl;->showSmileCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraWizardImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraWizardImpl;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 395
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get3(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "Wizard.SmileCapture"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get6(Lcom/oneplus/camera/ui/CameraWizardImpl;)Landroid/view/View;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap4(Lcom/oneplus/camera/ui/CameraWizardImpl;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 397
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get1(Lcom/oneplus/camera/ui/CameraWizardImpl;)Landroid/view/View;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap4(Lcom/oneplus/camera/ui/CameraWizardImpl;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 399
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get5(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$10;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get5(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-set1(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 393
    :cond_0
    return-void
.end method
