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
.field public iconImageButton:Landroid/widget/ImageButton;

.field public isClicked:Z

.field public object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/CameraActivity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p2, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x2

    .line 2509
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2508
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->isClicked:Z

    .line 2511
    invoke-virtual {p2}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2512
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2513
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x7f08004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 2514
    invoke-virtual {p2}, Lcom/oneplus/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030016

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageButton;

    .line 2515
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2516
    iget-object v2, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->iconImageButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem$1;-><init>(Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2524
    iput-object p3, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonItem;->object:Ljava/lang/Object;

    .line 2509
    return-void
.end method
