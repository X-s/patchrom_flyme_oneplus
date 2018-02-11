.class public Lcom/android/settings_ex/vpn2/AppManagementFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppManagementFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/vpn2/AppManagementFragment$1;,
        Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;,
        Lcom/android/settings_ex/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;
    }
.end annotation


# static fields
.field private static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static final KEY_ALWAYS_ON_VPN:Ljava/lang/String; = "always_on_vpn"

.field private static final KEY_FORGET_VPN:Ljava/lang/String; = "forget_vpn"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "AppManagementFragment"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mForgetVpnDialogFragmentListener:Lcom/android/settings_ex/vpn2/AppDialogFragment$Listener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private mPackageUid:I

.field private mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mPreferenceForget:Lcom/android/settings_exlib/RestrictedPreference;

.field private mPreferenceVersion:Landroid/support/v7/preference/Preference;

.field private final mUserId:I

.field private mVpnLabel:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/vpn2/AppManagementFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/vpn2/AppManagementFragment;Z)Z
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/vpn2/AppManagementFragment;Z)Z
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->setAlwaysOnVpn(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/vpn2/AppManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->updateUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mUserId:I

    .line 79
    new-instance v0, Lcom/android/settings_ex/vpn2/AppManagementFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment$1;-><init>(Lcom/android/settings_ex/vpn2/AppManagementFragment;)V

    .line 78
    iput-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings_ex/vpn2/AppDialogFragment$Listener;

    .line 50
    return-void
.end method

.method private checkTargetVersion()Z
    .locals 5

    .prologue
    const/16 v4, 0x18

    const/4 v2, 0x1

    .line 204
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 205
    :cond_0
    return v2

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 208
    .local v0, "targetSdk":I
    if-lt v0, v4, :cond_2

    .line 209
    return v2

    .line 211
    :cond_2
    const-string/jumbo v1, "AppManagementFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    const-string/jumbo v1, "AppManagementFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " targets SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; must"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    const-string/jumbo v3, " target at least "

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    const-string/jumbo v3, " to use always-on."

    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getAlwaysOnVpnPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLegacyVpnLockDownOrAnotherPackageAlwaysOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 293
    iget v3, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mUserId:I

    if-nez v3, :cond_0

    .line 294
    invoke-static {}, Lcom/android/settings_ex/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "lockdownKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 296
    return v2

    .line 300
    .end local v0    # "lockdownKey":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getAlwaysOnVpnPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isVpnActivated()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 287
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageUid:I

    .line 288
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    new-array v6, v1, [I

    const/16 v7, 0x2f

    aput v7, v6, v2

    .line 287
    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isVpnAlwaysOn()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getAlwaysOnVpnPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadInfo()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 258
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 259
    const-string/jumbo v2, "AppManagementFragment"

    const-string/jumbo v3, "empty bundle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v5

    .line 263
    :cond_0
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 265
    const-string/jumbo v2, "AppManagementFragment"

    const-string/jumbo v3, "empty package name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v5

    .line 270
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageUid:I

    .line 271
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->isVpnActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    const-string/jumbo v2, "AppManagementFragment"

    const-string/jumbo v3, "package didn\'t register VPN profile"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v5

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "AppManagementFragment"

    const-string/jumbo v3, "package not found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    return v5

    .line 283
    .end local v1    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private onAlwaysOnVpnClick(Z)Z
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->isLegacyVpnLockDownOrAnotherPackageAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment$ReplaceExistingVpnFragment;->show(Lcom/android/settings_ex/vpn2/AppManagementFragment;)V

    .line 176
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->setAlwaysOnVpnByUI(Z)Z

    move-result v0

    return v0
.end method

.method private onForgetVpnClick()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->updateRestrictedViews()V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mForgetVpnDialogFragmentListener:Lcom/android/settings_ex/vpn2/AppDialogFragment$Listener;

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/vpn2/AppDialogFragment;->show(Landroid/app/Fragment;Lcom/android/settings_ex/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    .line 169
    return v4
.end method

.method private setAlwaysOnVpn(Z)Z
    .locals 4
    .param p1, "isEnabled"    # Z

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mUserId:I

    .line 200
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageName:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    .line 199
    invoke-virtual {v1, v2, v0, v3}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z

    move-result v0

    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlwaysOnVpnByUI(Z)Z
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->updateRestrictedViews()V

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    return v2

    .line 188
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mUserId:I

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 191
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->setAlwaysOnVpn(Z)Z

    move-result v0

    .line 192
    .local v0, "success":Z
    if-eqz p1, :cond_2

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    :cond_2
    :goto_0
    return v0

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mVpnLabel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/settings_ex/vpn2/AppManagementFragment$CannotConnectFragment;->show(Lcom/android/settings_ex/vpn2/AppManagementFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Lcom/android/settings_ex/vpn2/AppPreference;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Lcom/android/settings_ex/vpn2/AppPreference;

    .prologue
    .line 97
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "package"

    invoke-virtual {p1}, Lcom/android/settings_ex/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-class v0, Lcom/android/settings_ex/vpn2/AppManagementFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Lcom/android/settings_ex/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/settings_ex/vpn2/AppPreference;->getUserId()I

    move-result v0

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 99
    const/4 v3, -0x1

    .line 100
    const/4 v5, 0x0

    move-object v0, p0

    .line 99
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    .line 96
    return-void
.end method

.method private updateRestrictedViews()V
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const-string/jumbo v1, "no_config_vpn"

    .line 228
    iget v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mUserId:I

    .line 227
    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settings_exlib/RestrictedPreference;

    const-string/jumbo v1, "no_config_vpn"

    .line 230
    iget v2, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mUserId:I

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 232
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->checkTargetVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const v1, 0x7f0e0d1c

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->isVpnAlwaysOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->updateRestrictedViews()V

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x64

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->addPreferencesFromResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 112
    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceVersion:Landroid/support/v7/preference/Preference;

    .line 113
    const-string/jumbo v0, "always_on_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 114
    const-string/jumbo v0, "forget_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/RestrictedPreference;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settings_exlib/RestrictedPreference;

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceAlwaysOn:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceForget:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_exlib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "always_on_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->onAlwaysOnVpnClick(Z)Z

    move-result v0

    return v0

    .line 152
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, "AppManagementFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown key is clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "forget_vpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->onForgetVpnClick()Z

    move-result v1

    return v1

    .line 141
    :cond_0
    const-string/jumbo v1, "AppManagementFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown key is clicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 124
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->loadInfo()Z

    move-result v0

    .line 125
    .local v0, "isInfoLoaded":Z
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPreferenceVersion:Landroid/support/v7/preference/Preference;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/AppManagementFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0e0d0f

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-direct {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->updateUI()V

    .line 121
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/AppManagementFragment;->finish()V

    goto :goto_0
.end method
