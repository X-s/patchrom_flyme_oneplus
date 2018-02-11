.class Lcom/android/settings_ex/wifi/WifiEnabler$3;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiEnabler;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

.field final synthetic val$sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiEnabler;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/wifi/WifiEnabler;
    .param p2, "val$sharedpreferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$3;->this$0:Lcom/android/settings_ex/wifi/WifiEnabler;

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiEnabler$3;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiEnabler$3;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "TurnOffWifiShowAgain"

    .line 278
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiEnabler;->-get2()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 277
    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    return-void

    .line 278
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
