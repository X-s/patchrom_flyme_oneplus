.class Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;
.super Landroid/preference/ListPreference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/preference/PreferenceScreen;)V
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
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 431
    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListenChannel:I
    invoke-static {v0, v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$702(Lcom/android/settings_ex/wfd/WifiDisplaySettings;I)I

    .line 433
    const-string v0, "%1$s"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mListenChannel:I
    invoke-static {v1}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$700(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/settings_ex/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->mOperatingChannel:I
    invoke-static {v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$800(Lcom/android/settings_ex/wfd/WifiDisplaySettings;)I

    move-result v2

    # invokes: Lcom/android/settings_ex/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/wfd/WifiDisplaySettings;->access$900(Lcom/android/settings_ex/wfd/WifiDisplaySettings;II)V

    .line 437
    :cond_0
    return-void
.end method
