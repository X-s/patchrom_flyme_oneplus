.class public Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$AppNotFoundDialogFragment;,
        Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;,
        Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UninstallerActivity"

.field private static mAppOpsManager:Landroid/app/AppOpsManager;


# instance fields
.field private mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/app/AppOpsManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;)Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showAppNotFound()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$AppNotFoundDialogFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$AppNotFoundDialogFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;)V

    .line 288
    return-void
.end method

.method private showConfirmationDialog()V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;-><init>()V

    invoke-direct {p0, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;)V

    .line 284
    return-void
.end method

.method private showDialogFragment(Landroid/app/DialogFragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/DialogFragment;

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 294
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 295
    .local v1, "prev":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 298
    :cond_0
    const-string/jumbo v2, "dialog"

    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 292
    return-void
.end method


# virtual methods
.method dispatchAborted()V
    .locals 5

    .prologue
    .line 316
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    .line 317
    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v1

    .line 320
    .local v1, "observer":Landroid/content/pm/IPackageDeleteObserver2;
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    .line 321
    const-string/jumbo v3, "Cancelled by user"

    const/4 v4, -0x5

    .line 320
    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v1    # "observer":Landroid/content/pm/IPackageDeleteObserver2;
    :cond_0
    :goto_0
    return-void

    .line 322
    .restart local v1    # "observer":Landroid/content/pm/IPackageDeleteObserver2;
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    const-string/jumbo v5, "appops"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    sput-object v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 228
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 229
    .local v3, "packageUri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 230
    const-string/jumbo v5, "UninstallerActivity"

    const-string/jumbo v6, "No package URI in intent"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showAppNotFound()V

    .line 232
    return-void

    .line 234
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    .line 235
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 236
    const-string/jumbo v5, "UninstallerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid package name in URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showAppNotFound()V

    .line 238
    return-void

    .line 242
    :cond_1
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 241
    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 244
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    new-instance v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    invoke-direct {v5}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;-><init>()V

    iput-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    .line 246
    iget-object v6, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    const-string/jumbo v5, "android.intent.extra.USER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    iput-object v5, v6, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 247
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "zhuyang--mDialogInfo.user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v7, v7, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v5, v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    if-nez v5, :cond_2

    .line 249
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    iput-object v6, v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 252
    :cond_2
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    const-string/jumbo v6, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    .line 253
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    const-string/jumbo v6, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    .line 256
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v6, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    .line 257
    iget-object v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v7, v7, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const/16 v8, 0x2000

    .line 256
    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v5, v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v5, :cond_3

    .line 263
    const-string/jumbo v5, "UninstallerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showAppNotFound()V

    .line 265
    return-void

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "UninstallerActivity"

    const-string/jumbo v6, "Unable to get packageName. Package manager is dead?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 272
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    .line 273
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v7, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v7, v7, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 273
    const/4 v8, 0x0

    .line 272
    invoke-interface {v4, v6, v8, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, v5, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->showConfirmationDialog()V

    .line 221
    return-void

    .line 275
    :catch_1
    move-exception v1

    .line 276
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "UninstallerActivity"

    const-string/jumbo v6, "Unable to get className. Package manager is dead?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method startUninstallProgress()V
    .locals 4

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.USER"

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 304
    const-string/jumbo v1, "android.intent.extra.UNINSTALL_ALL_USERS"

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-boolean v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const-string/jumbo v1, "android.content.pm.extra.CALLBACK"

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 306
    const-string/jumbo v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->mDialogInfo:Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    iget-object v2, v2, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    const-string/jumbo v1, "android.intent.extra.RETURN_RESULT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    :cond_0
    const-class v1, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    return-void
.end method
