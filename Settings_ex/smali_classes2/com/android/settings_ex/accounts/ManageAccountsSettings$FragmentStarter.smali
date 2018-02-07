.class Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;
.super Ljava/lang/Object;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/ManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentStarter"
.end annotation


# instance fields
.field private final mClass:Ljava/lang/String;

.field private final mTitleRes:I

.field final synthetic this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/accounts/ManageAccountsSettings;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "title"    # I

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    .line 492
    iput p3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;->mTitleRes:I

    .line 490
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 497
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 498
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;->mTitleRes:I

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 497
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;->mClass:Ljava/lang/String;

    const-class v1, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.settings_ex.accounts.LAUNCHING_LOCATION_SETTINGS"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings$FragmentStarter;->this$0:Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 504
    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 503
    invoke-virtual {v0, v7, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 506
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
