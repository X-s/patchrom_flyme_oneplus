.class Lcom/oneplus/camera/ui/CameraWizardImpl$6;
.super Ljava/lang/Object;
.source "CameraWizardImpl.java"

# interfaces
.implements Lcom/oneplus/camera/UIComponent$ViewRotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraWizardImpl;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
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
    .line 428
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$6;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraWizardImpl$6;->this$0:Lcom/oneplus/camera/ui/CameraWizardImpl;

    invoke-static {v0, p2}, Lcom/oneplus/camera/ui/CameraWizardImpl;->-wrap2(Lcom/oneplus/camera/ui/CameraWizardImpl;Lcom/oneplus/base/Rotation;)V

    .line 431
    return-void
.end method
