.class public Lcom/android/settings_ex/fuelgauge/HighPowerDetail;
.super Landroid/app/DialogFragment;
.source "HighPowerDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_DEFAULT_ON:Ljava/lang/String; = "default_on"


# instance fields
.field private final mBackend:Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

.field private mDefaultOn:Z

.field private mIsEnabled:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mOptionOff:Landroid/widget/Checkable;

.field private mOptionOn:Landroid/widget/Checkable;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    .line 38
    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 141
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    .line 148
    .local v0, "powerWhitelist":Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0e0f66

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 149
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0e0f64

    goto :goto_0

    .line 150
    :cond_1
    const v1, 0x7f0e0f65

    goto :goto_0
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;IZ)V
    .locals 4
    .param p0, "caller"    # Landroid/app/Fragment;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "defaultToOn"    # Z

    .prologue
    .line 156
    new-instance v1, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;

    invoke-direct {v1}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;-><init>()V

    .line 157
    .local v1, "fragment":Lcom/android/settings_ex/fuelgauge/HighPowerDetail;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v2, "default_on"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->setArguments(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {v1, p0, p2}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 100
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 119
    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 120
    .local v0, "newValue":Z
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    .line 121
    .local v1, "oldValue":Z
    if-eq v0, v1, :cond_0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->addApp(Ljava/lang/String;)V

    .line 117
    .end local v0    # "newValue":Z
    .end local v1    # "oldValue":Z
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local v0    # "newValue":Z
    .restart local v1    # "oldValue":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->removeApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->updateViews()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 112
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->updateViews()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "default_on"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mDefaultOn:Z

    .line 64
    iget-boolean v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mDefaultOn:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mIsEnabled:Z

    .line 53
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 64
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mLabel:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 84
    const v2, 0x7f0e05c0

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 85
    const v2, 0x7f04009a

    .line 82
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 86
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const v1, 0x7f0e05c5

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 135
    .local v0, "target":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f11017d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mOptionOn:Landroid/widget/Checkable;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f11017c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mOptionOff:Landroid/widget/Checkable;

    .line 97
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->updateViews()V

    .line 93
    return-void
.end method

.method public setup(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    .line 68
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 69
    const v1, 0x7f0e0fa2

    .line 68
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 70
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 71
    const v1, 0x7f0e0fa4

    .line 70
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mBackend:Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    :cond_0
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "view":Landroid/view/View;
    return-object p1

    .line 69
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const v1, 0x7f0e0fa3

    goto :goto_0

    .line 71
    :cond_2
    const v1, 0x7f0e0fa5

    goto :goto_1
.end method
