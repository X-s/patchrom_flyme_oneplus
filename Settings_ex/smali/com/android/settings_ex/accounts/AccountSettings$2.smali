.class Lcom/android/settings_ex/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/AccountSettings;->newAddOneplusAccountPreference(Landroid/content/Context;)Lcom/oneplus/widget/preference/OPPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/AccountSettings;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.oneplus.account"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 339
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v1, "come_from"

    const-string v2, "from_settings"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "com.oneplus.account"

    const-string v2, ""

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v5}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 343
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
