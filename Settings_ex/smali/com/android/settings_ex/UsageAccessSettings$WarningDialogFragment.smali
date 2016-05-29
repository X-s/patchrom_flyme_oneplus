.class public Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "UsageAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/UsageAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarningDialogFragment"
.end annotation


# static fields
.field private static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 366
    new-instance v1, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;-><init>()V

    .line 367
    .local v1, "dialog":Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 368
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 370
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 386
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/UsageAccessSettings;

    invoke-virtual {p0}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/UsageAccessSettings;->allowAccess(Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 375
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/UsageAccessSettings$WarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090868

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090869

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09021b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
