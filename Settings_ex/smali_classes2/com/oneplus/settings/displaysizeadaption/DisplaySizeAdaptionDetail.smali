.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;
.super Landroid/app/DialogFragment;
.source "DisplaySizeAdaptionDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_DEFAULT_ON:Ljava/lang/String; = "default_on"

.field private static mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mFullScreen:Landroid/widget/Checkable;

.field private mFullScreenSelected:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mOriginalSize:Landroid/widget/Checkable;

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 131
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->isFullScreenApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const v0, 0x7f0e040e

    .line 135
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    const v0, 0x7f0e040f

    goto :goto_0
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;IZ)V
    .locals 4
    .param p0, "caller"    # Landroid/app/Fragment;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "defaultToOn"    # Z

    .prologue
    .line 140
    new-instance v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;

    invoke-direct {v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;-><init>()V

    .line 141
    .local v1, "fragment":Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setArguments(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {v1, p0, p2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreenSelected:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 101
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    iget-boolean v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreenSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 99
    return-void

    .line 101
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
    .line 116
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 117
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    iget v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mUid:I

    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreenSelected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->setClassApp(ILjava/lang/String;Z)V

    .line 115
    :cond_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreenSelected:Z

    .line 111
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->updateViews()V

    .line 105
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreenSelected:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 60
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    .line 63
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    .line 68
    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->isFullScreenApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreenSelected:Z

    .line 55
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 85
    const v2, 0x7f0e05c0

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 86
    const v2, 0x7f0e05c5

    .line 83
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 87
    const v2, 0x7f0400da

    .line 83
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
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

    .line 123
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 125
    .local v0, "target":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f11017d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f11017c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    .line 96
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->updateViews()V

    .line 92
    return-void
.end method

.method public setup(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "on"    # Z

    .prologue
    .line 72
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 73
    const v1, 0x7f0e040f

    .line 72
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    check-cast p1, Landroid/widget/Checkable;

    .end local p1    # "view":Landroid/view/View;
    return-object p1

    .line 73
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const v1, 0x7f0e040e

    goto :goto_0
.end method
