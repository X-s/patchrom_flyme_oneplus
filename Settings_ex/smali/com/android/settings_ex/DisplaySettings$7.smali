.class Lcom/android/settings_ex/DisplaySettings$7;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->saveBrightnessDataBase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;

.field final synthetic val$adj:F


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;F)V
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    iput p2, p0, Lcom/android/settings_ex/DisplaySettings$7;->val$adj:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # getter for: Lcom/android/settings_ex/DisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$700(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    iget v2, p0, Lcom/android/settings_ex/DisplaySettings$7;->val$adj:F

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1239
    return-void
.end method
