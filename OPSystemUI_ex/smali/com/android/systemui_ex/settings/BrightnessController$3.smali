.class Lcom/android/systemui_ex/settings/BrightnessController$3;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/settings/BrightnessController;->onChanged(Lcom/android/systemui_ex/settings/ToggleSlider;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/settings/BrightnessController;

.field final synthetic val$adj:F


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/settings/BrightnessController;F)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui_ex/settings/BrightnessController$3;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    iput p2, p0, Lcom/android/systemui_ex/settings/BrightnessController$3;->val$adj:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController$3;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/BrightnessController;->access$500(Lcom/android/systemui_ex/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    iget v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$3;->val$adj:F

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 223
    return-void
.end method
