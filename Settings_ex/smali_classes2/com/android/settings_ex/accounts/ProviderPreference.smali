.class public Lcom/android/settings_ex/accounts/ProviderPreference;
.super Lcom/android/settings_exlib/RestrictedPreference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "providerName"    # Ljava/lang/CharSequence;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f0400fc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 43
    iput-object p2, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->setPersistent(Z)V

    .line 46
    invoke-virtual {p0, p4}, Lcom/android/settings_ex/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->useAdminDisabledSummary(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public checkAccountManagementAndSetDisabled(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ProviderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v1, v2, p1}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 57
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 54
    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method
