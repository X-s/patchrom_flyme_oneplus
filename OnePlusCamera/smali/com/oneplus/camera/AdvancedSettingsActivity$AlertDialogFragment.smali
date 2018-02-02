.class public Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AdvancedSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/AdvancedSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 719
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 721
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->setRetainInstance(Z)V

    .line 719
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->dismissAllowingStateLoss()V

    .line 727
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 738
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 739
    const v2, 0x7f0b0013

    .line 738
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 740
    new-instance v2, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$1;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;)V

    const v3, 0x104000a

    .line 738
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 753
    new-instance v2, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$2;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;)V

    const/high16 v3, 0x1040000

    .line 738
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 761
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 767
    return-void
.end method
