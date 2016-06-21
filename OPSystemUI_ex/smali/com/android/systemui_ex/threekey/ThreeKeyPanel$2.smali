.class Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;
.super Ljava/lang/Object;
.source "ThreeKeyPanel.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/threekey/ThreeKeyPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 569
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    # getter for: Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->access$100(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    # getter for: Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->access$100(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    # getter for: Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->access$100(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    # getter for: Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->access$200(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    # invokes: Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->updateDialog(I)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->access$300(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;I)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$2;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    # getter for: Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->access$200(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    # setter for: Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->mDisplayRotation:I
    invoke-static {v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->access$402(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;I)I

    .line 580
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 583
    return-void
.end method
