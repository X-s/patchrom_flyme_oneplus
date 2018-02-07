.class Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DarkModeRunnable"
.end annotation


# instance fields
.field dValue:Z

.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->dValue:Z

    .line 1476
    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/DisplaySettings;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/DisplaySettings;
    .param p2, "value"    # Z

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->dValue:Z

    .line 1480
    iput-boolean p2, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->dValue:Z

    .line 1479
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1490
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get2(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_black_mode"

    iget-boolean v1, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->dValue:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1491
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.OEM_THEME_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1493
    const-string/jumbo v1, "oem_black_mode"

    iget-boolean v2, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->dValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1494
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get2(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1488
    return-void

    .line 1490
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1484
    iput-boolean p1, p0, Lcom/android/settings_ex/DisplaySettings$DarkModeRunnable;->dValue:Z

    .line 1483
    return-void
.end method
