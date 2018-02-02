.class Lcom/oneplus/camera/ui/CaptureBar$9;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$9;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$9;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap0(Lcom/oneplus/camera/ui/CaptureBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$9;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v0, v1, :cond_1

    .line 356
    :cond_0
    return-void

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$9;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    sget-object v2, Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;->FACE_BEAUTY:Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap32(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ActionButtonType;ZZ)V

    .line 350
    return-void
.end method
