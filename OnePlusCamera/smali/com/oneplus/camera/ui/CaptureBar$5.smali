.class Lcom/oneplus/camera/ui/CaptureBar$5;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->onInitialize()V
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
    .line 535
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 540
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap0(Lcom/oneplus/camera/ui/CaptureBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap3(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureBar;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/PhotoCaptureState;->READY:Lcom/oneplus/camera/PhotoCaptureState;

    if-eq v0, v1, :cond_1

    .line 545
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureBar;->-get8(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/ui/OptionsPanel;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/OptionsPanel;->PROP_IS_SECOND_TIER_PANEL_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/OptionsPanel;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get8(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/ui/OptionsPanel;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->GONE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/OptionsPanel;->toggleOptionsPanelVisibilityRequest(Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set4(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 538
    :goto_0
    return-void

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$5;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get8(Lcom/oneplus/camera/ui/CaptureBar;)Lcom/oneplus/camera/ui/OptionsPanel;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;->VISIBLE:Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/ui/OptionsPanel;->toggleOptionsPanelVisibilityRequest(Lcom/oneplus/camera/ui/OptionsPanel$OptionsPanelVisibility;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/CaptureBar;->-set4(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method
