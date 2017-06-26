.class public abstract Lcom/android/settings_ex/applications/AppInfoBase;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AppInfoBase.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.field protected mAppControlRestricted:Z

.field protected mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

.field protected mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected mFinishing:Z

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageName:Ljava/lang/String;

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
    .line 53
    const-class v0, Lcom/android/settings_ex/applications/AppInfoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/AppInfoBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppControlRestricted:Z

    .line 210
    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V
    .locals 8
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
    .local p0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 200
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "package"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "uid"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    invoke-virtual {p4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move v4, p1

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 206
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, p5, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected abstract createDialog(II)Lcom/oneplus/app/OPAlertDialog;
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mFinishing:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 81
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 83
    .local v1, "context":Landroid/content/Context;
    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 84
    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserManager:Landroid/os/UserManager;

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    .line 86
    const-string v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->retrieveAppEntry()Ljava/lang/String;

    .line 90
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->refreshUi()Z

    .line 196
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 106
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 107
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
    .line 166
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppControlRestricted:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0, v2, v2}, Lcom/android/settings_ex/applications/AppInfoBase;->setIntentAndFinish(ZZ)V

    .line 101
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 161
    return-void
.end method

.method protected abstract refreshUi()Z
.end method

.method protected retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 112
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 113
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 119
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserId:I

    .line 120
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v3, v5, v6}, Lcom/android/settings_exlib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 121
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    if-eqz v3, :cond_3

    .line 124
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mAppEntry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2240

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    return-object v3

    :cond_1
    move-object v3, v4

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    const-string v3, "intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v2, v3

    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/settings_ex/applications/AppInfoBase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when retrieving package:"

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

    .line 132
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    sget-object v3, Lcom/android/settings_ex/applications/AppInfoBase;->TAG:Ljava/lang/String;

    const-string v5, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object v4, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method protected setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/SettingsActivity;

    .line 144
    .local v1, "sa":Lcom/android/settings_ex/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settings_ex/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/applications/AppInfoBase;->mFinishing:Z

    .line 146
    return-void
.end method

.method protected showDialogInner(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 149
    invoke-static {p1, p2}, Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings_ex/applications/AppInfoBase$MyAlertDialogFragment;

    move-result-object v0

    .line 150
    .local v0, "newFragment":Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppInfoBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 152
    return-void
.end method
