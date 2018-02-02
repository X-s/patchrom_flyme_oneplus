.class final Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;
.super Ljava/lang/Object;
.source "CaptureBar.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ButtonItem"
.end annotation


# instance fields
.field public iconImageButton:Landroid/widget/ImageView;

.field public isClicked:Z

.field public object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V
    .locals 4
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p2, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 595
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-boolean v3, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->isClicked:Z

    .line 597
    invoke-virtual {p2}, Lcom/oneplus/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/camera/ui/CaptureBar;->-get2(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f03001a

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    .line 598
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem$1;-><init>(Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iput-object p3, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->object:Ljava/lang/Object;

    .line 595
    return-void
.end method
