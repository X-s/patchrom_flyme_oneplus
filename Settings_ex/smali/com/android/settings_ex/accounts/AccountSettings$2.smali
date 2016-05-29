.class Lcom/android/settings_ex/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/AccountSettings;->newAddOneplusAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
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
    .line 315
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.oneplus.account"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.account.action.info.page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v1, "flag"

    const-string v2, "ONEPLUS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$2;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
