.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;
.super Landroid/support/v14/preference/SwitchPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wfd/WifiDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-get0(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-set0(Lcom/android/settings_ex/wfd/WifiDisplaySettings;Z)Z

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-get0(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-wrap5(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    .line 380
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-get0(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->setChecked(Z)V

    .line 373
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->-wrap6(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)V

    goto :goto_1
.end method
