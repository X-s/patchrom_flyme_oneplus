.class public Lcom/android/settings_ex/applications/ResetAppsHelper;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final EXTRA_RESET_DIALOG:Ljava/lang/String; = "resetDialog"


# instance fields
.field private final mAom:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mNm:Landroid/app/INotificationManager;

.field private final mNpm:Landroid/net/NetworkPolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mResetDialog:Lcom/oneplus/app/OPAlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 61
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    .line 62
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    .line 64
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    .line 65
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/app/INotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c07b3

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c07b4

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c07b5

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 97
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    if-eq v0, p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ResetAppsHelper$1;-><init>(Lcom/android/settings_ex/applications/ResetAppsHelper;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    if-ne v0, p1, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 104
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    const-string v0, "resetDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ResetAppsHelper;->buildResetDialog()V

    .line 72
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog;->dismiss()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ResetAppsHelper;->mResetDialog:Lcom/oneplus/app/OPAlertDialog;

    .line 85
    :cond_0
    return-void
.end method
