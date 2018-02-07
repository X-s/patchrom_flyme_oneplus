.class public abstract Lcom/android/settings_ex/applications/AppInfoBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppInfoBase.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/AppInfoBase$1;,
        Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;
    }
.end annotation


# static fields
.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final ARG_PACKAGE_UID:Ljava/lang/String; = "uid"

.field protected static final DLG_BASE:I

.field protected static final TAG:Ljava/lang/String;

.field protected static final localLOGV:Z


# instance fields
.field protected mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

.field protected mAppsControlDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppsControlDisallowedBySystem:Z

.field protected mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected mFinishing:Z

.field protected mListeningToPackageRemove:Z

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageName:Ljava/lang/String;

.field protected final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field protected mState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field protected mUsbManager:Landroid/hardware/usb/IUsbManager;

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings_ex/applications/AppInfoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/AppInfoBase;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 277
    new-instance v0, Lcom/android/settings_ex/applications/AppInfoBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/AppInfoBase$1;-><init>(Lcom/android/settings_ex/applications/AppInfoBase;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Activity;I)V
    .locals 8
    .param p1, "titleRes"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "source"    # Landroid/app/Activity;
    .param p5, "request"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 222
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "package"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v0, "uid"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 227
    const/4 v6, 0x0

    move-object v0, p4

    move v4, p1

    move-object v5, v3

    .line 226
    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 229
    .local v7, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 228
    invoke-virtual {p4, v7, p5, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 221
    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V
    .locals 6
    .param p1, "titleRes"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "source"    # Landroid/app/Fragment;
    .param p5, "request"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/Fragment;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Activity;I)V

    .line 216
    return-void
.end method


# virtual methods
.method protected abstract createDialog(II)Landroid/app/AlertDialog;
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mFinishing:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 87
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 89
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 90
    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserManager:Landroid/os/UserManager;

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    .line 92
    const-string/jumbo v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 93
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->retrieveAppEntry()Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->startListeningToPackageRemove()V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->stopListeningToPackageRemove()V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->release()V

    .line 123
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 120
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->refreshUi()Z

    .line 211
    return-void
.end method

.method protected onPackageRemoved()V
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 273
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 116
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 114
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 104
    const-string/jumbo v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserId:I

    .line 103
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserId:I

    .line 105
    invoke-static {v0, v1, v2}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0, v3, v3}, Lcom/android/settings_ex/applications/AppInfoBase;->setIntentAndFinish(ZZ)V

    .line 100
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 176
    return-void
.end method

.method protected abstract refreshUi()Z
.end method

.method protected retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 129
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 130
    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 132
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 136
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserId:I

    .line 137
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 138
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-eqz v3, :cond_3

    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 142
    const/16 v5, 0x3240

    .line 141
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    return-object v3

    :cond_1
    move-object v3, v4

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    const-string/jumbo v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v2, v3

    goto :goto_1

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/settings_ex/applications/AppInfoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception when retrieving package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 150
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    sget-object v3, Lcom/android/settings_ex/applications/AppInfoBase;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object v4, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method protected setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    .line 162
    .local v1, "sa":Lcom/android/settings_ex/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settings_ex/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mFinishing:Z

    .line 157
    return-void
.end method

.method protected showDialogInner(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 167
    invoke-static {p1, p2}, Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;

    move-result-object v0

    .line 168
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method protected startListeningToPackageRemove()V
    .locals 3

    .prologue
    .line 256
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mListeningToPackageRemove:Z

    if-eqz v1, :cond_0

    .line 257
    return-void

    .line 259
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mListeningToPackageRemove:Z

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    return-void
.end method

.method protected stopListeningToPackageRemove()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mListeningToPackageRemove:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    return-void
.end method
