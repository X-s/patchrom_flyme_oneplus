.class Lcom/android/systemui_ex/volume/VolumeUI$3;
.super Ljava/lang/Object;
.source "VolumeUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/volume/VolumeUI;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VolumeUI$3;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 145
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$3;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    const-class v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/volume/VolumeUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    sget-object v1, Lcom/android/systemui_ex/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui_ex/volume/VolumeUI$3;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mDialogPanel:Lcom/android/systemui_ex/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui_ex/volume/VolumeUI;->access$900(Lcom/android/systemui_ex/volume/VolumeUI;)Lcom/android/systemui_ex/volume/VolumePanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/volume/VolumeUI$3;->this$0:Lcom/android/systemui_ex/volume/VolumeUI;

    # getter for: Lcom/android/systemui_ex/volume/VolumeUI;->mDismissDelay:I
    invoke-static {v1}, Lcom/android/systemui_ex/volume/VolumeUI;->access$800(Lcom/android/systemui_ex/volume/VolumeUI;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/volume/VolumePanel;->postDismiss(J)V

    .line 148
    return-void
.end method
