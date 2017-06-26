.class Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;
.super Ljava/lang/Object;
.source "OPDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DarkModeRunnable"
.end annotation


# instance fields
.field dValue:Z

.field final synthetic this$0:Lcom/oneplus/settings/OPDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 1

    .prologue
    .line 897
    iput-object p1, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->dValue:Z

    .line 898
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/settings/OPDisplaySettings;Z)V
    .locals 1
    .param p2, "value"    # Z

    .prologue
    .line 900
    iput-object p1, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->dValue:Z

    .line 901
    iput-boolean p2, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->dValue:Z

    .line 902
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 911
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # getter for: Lcom/oneplus/settings/OPDisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/OPDisplaySettings;->access$900(Lcom/oneplus/settings/OPDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_black_mode"

    iget-boolean v1, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->dValue:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 912
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_BLACK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 913
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 914
    const-string v1, "oem_black_mode"

    iget-boolean v2, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->dValue:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 915
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # getter for: Lcom/oneplus/settings/OPDisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/OPDisplaySettings;->access$900(Lcom/oneplus/settings/OPDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 916
    iget-object v1, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # invokes: Lcom/oneplus/settings/OPDisplaySettings;->killSelf()V
    invoke-static {v1}, Lcom/oneplus/settings/OPDisplaySettings;->access$1000(Lcom/oneplus/settings/OPDisplaySettings;)V

    .line 917
    return-void

    .line 911
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/oneplus/settings/OPDisplaySettings$DarkModeRunnable;->dValue:Z

    .line 906
    return-void
.end method
