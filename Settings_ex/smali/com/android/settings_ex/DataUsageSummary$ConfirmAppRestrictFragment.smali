.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAppRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2372
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 2374
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2379
    :goto_0
    return-void

    .line 2376
    :cond_0
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;-><init>()V

    .line 2377
    .local v0, "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2378
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAppRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2383
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2385
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2386
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const v2, 0x7f0c0b03

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2387
    const v2, 0x7f0c0b04

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2389
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2398
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2400
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    return-object v2
.end method
