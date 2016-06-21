.class public Lcom/android/systemui_ex/threekey/ThreeKeyUI;
.super Lcom/android/systemui_ex/SystemUI;
.source "ThreeKeyUI.java"


# instance fields
.field private mThreeKeyPanel:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/systemui_ex/SystemUI;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyUI;->mThreeKeyPanel:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    .line 13
    return-void
.end method

.method private initPanel()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    iget-object v1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyUI;->mThreeKeyPanel:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    .line 33
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyUI;->mThreeKeyPanel:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->setInitAfterReboot(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/systemui_ex/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 26
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyUI;->mThreeKeyPanel:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyUI;->mThreeKeyPanel:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/threekey/ThreeKeyPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->supportThreekeyFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/android/systemui_ex/threekey/ThreeKeyUI;->initPanel()V

    .line 20
    :cond_0
    return-void
.end method
