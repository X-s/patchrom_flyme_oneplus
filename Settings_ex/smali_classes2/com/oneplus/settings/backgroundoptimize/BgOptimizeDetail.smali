.class public Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;
.super Landroid/app/DialogFragment;
.source "BgOptimizeDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_DEFAULT_ON:Ljava/lang/String; = "default_on"


# instance fields
.field private mCurrentOptimized:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mOptionNoOptimze:Landroid/widget/Checkable;

.field private mOptionOptimze:Landroid/widget/Checkable;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 124
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const v0, 0x7f0e0fa3

    .line 128
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    const v0, 0x7f0e0fa2

    goto :goto_0
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;IZ)V
    .locals 4
    .param p0, "caller"    # Landroid/app/Fragment;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "defaultToOn"    # Z

    .prologue
    .line 133
    new-instance v1, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;

    invoke-direct {v1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;-><init>()V

    .line 134
    .local v1, "fragment":Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->setArguments(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {v1, p0, p2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionOptimze:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 93
    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionNoOptimze:Landroid/widget/Checkable;

    iget-boolean v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 91
    return-void

    .line 93
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
    const/4 v1, 0x0

    .line 108
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    .line 110
    iget-boolean v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 109
    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode(Ljava/lang/String;II)I

    .line 107
    :cond_0
    return-void

    .line 110
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionOptimze:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    .line 103
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->updateViews()V

    .line 97
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionNoOptimze:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 55
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v3

    .line 59
    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    .line 49
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mLabel:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 77
    const v2, 0x7f0e05c0

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 78
    const v2, 0x7f0e05c5

    .line 75
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 79
    const v2, 0x7f04009a

    .line 75
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 118
    .local v0, "target":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f11017d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionNoOptimze:Landroid/widget/Checkable;

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f11017c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionOptimze:Landroid/widget/Checkable;

    .line 88
    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->updateViews()V

    .line 84
    return-void
.end method

.method public setup(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    .line 64
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 65
    const v1, 0x7f0e0fa2

    .line 64
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 67
    const v1, 0x7f0e03c4

    .line 66
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "view":Landroid/view/View;
    return-object p1

    .line 65
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const v1, 0x7f0e0fa3

    goto :goto_0

    .line 67
    :cond_1
    const v1, 0x7f0e03c3

    goto :goto_1
.end method
