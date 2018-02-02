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
    .line 870
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 872
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->setRetainInstance(Z)V

    .line 870
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->dismissAllowingStateLoss()V

    .line 878
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    .line 890
    .local v0, "activity":Lcom/oneplus/camera/AdvancedSettingsActivity;
    invoke-static {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-get4(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/BaseActivity$ThemeMode;

    move-result-object v3

    sget-object v4, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    if-ne v3, v4, :cond_0

    const v2, 0x7f0c002c

    .line 891
    .local v2, "styleId":I
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 892
    const v4, 0x7f0d002d

    .line 891
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 893
    new-instance v4, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$1;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;)V

    const v5, 0x104000a

    .line 891
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 906
    new-instance v4, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment$2;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;)V

    const/high16 v5, 0x1040000

    .line 891
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 914
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 890
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "styleId":I
    :cond_0
    const v2, 0x7f0c002a

    .restart local v2    # "styleId":I
    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 920
    return-void
.end method
