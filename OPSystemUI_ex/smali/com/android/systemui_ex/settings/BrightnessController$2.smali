.class Lcom/android/systemui_ex/settings/BrightnessController$2;
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

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/settings/BrightnessController;I)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/systemui_ex/settings/BrightnessController$2;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    iput p2, p0, Lcom/android/systemui_ex/settings/BrightnessController$2;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/settings/BrightnessController$2;->this$0:Lcom/android/systemui_ex/settings/BrightnessController;

    # getter for: Lcom/android/systemui_ex/settings/BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui_ex/settings/BrightnessController;->access$500(Lcom/android/systemui_ex/settings/BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui_ex/settings/BrightnessController$2;->val$val:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 211
    return-void
.end method
