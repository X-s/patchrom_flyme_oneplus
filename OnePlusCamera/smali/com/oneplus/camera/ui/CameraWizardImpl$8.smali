.class Lcom/oneplus/camera/ui/CameraWizardImpl$8;
.super Ljava/lang/Object;
.source "CameraWizardImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraWizardImpl;->showSimpleModesSwitch()V
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
    .line 245
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 250
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get0(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 251
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get3(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Wizard.SimpleModesSwitch"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get4(Lcom/oneplus/camera/ui/CameraWizardImpl;)Landroid/view/View;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap4(Lcom/oneplus/camera/ui/CameraWizardImpl;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 253
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get2(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get2(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-set0(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 256
    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get3(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Wizard.SmileCapture"

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    iget-object v2, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-get1(Lcom/oneplus/camera/ui/CameraWizardImpl;)Landroid/view/View;

    move-result-object v2

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap4(Lcom/oneplus/camera/ui/CameraWizardImpl;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 248
    :goto_0
    return-void

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap0(Lcom/oneplus/camera/ui/CameraWizardImpl;)Lcom/oneplus/camera/Camera;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_IS_SMILE_CAPTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 256
    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$8;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap6(Lcom/oneplus/camera/ui/CameraWizardImpl;)V

    goto :goto_0
.end method
