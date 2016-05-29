.class Lcom/android/settings_ex/PrivacySettings$2;
.super Landroid/os/Handler;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/PrivacySettings;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/settings_ex/PrivacySettings$2;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 682
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 686
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings$2;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ONEPLUS_ACTION_RESET_SETTINGS_INTENT"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 688
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings$2;->this$0:Lcom/android/settings_ex/PrivacySettings;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/PrivacySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 689
    .local v0, "pManager":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings$2;->this$0:Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b90

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 692
    return-void
.end method
