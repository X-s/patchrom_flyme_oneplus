.class public Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;
.super Landroid/app/DialogFragment;
.source "NoHomeDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 3
    .param p0, "parent"    # Landroid/app/Activity;

    .prologue
    .line 29
    new-instance v0, Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;-><init>()V

    .line 30
    .local v0, "dialog":Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/NoHomeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0b9f

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    return-object v0
.end method
