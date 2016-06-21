.class Lcom/android/systemui_ex/volume/VolumePanel$12;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumePanel$12;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1781
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$12;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$2400(Lcom/android/systemui_ex/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$12;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$2400(Lcom/android/systemui_ex/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$12;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumePanel;->access$2400(Lcom/android/systemui_ex/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumePanel$12;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumePanel$12;->this$0:Lcom/android/systemui_ex/volume/VolumePanel;

    # getter for: Lcom/android/systemui_ex/volume/VolumePanel;->mDisplay:Landroid/view/Display;
    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumePanel;->access$2600(Lcom/android/systemui_ex/volume/VolumePanel;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    # setter for: Lcom/android/systemui_ex/volume/VolumePanel;->mRotation:I
    invoke-static {v0, v1}, Lcom/android/systemui_ex/volume/VolumePanel;->access$2502(Lcom/android/systemui_ex/volume/VolumePanel;I)I

    .line 1791
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 1795
    return-void
.end method
