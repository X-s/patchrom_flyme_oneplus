.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2305
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 2307
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2312
    :goto_0
    return-void

    .line 2309
    :cond_0
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;-><init>()V

    .line 2310
    .local v0, "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2311
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2318
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2319
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const v2, 0x7f0c0b11

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2320
    invoke-static {v1}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2321
    const v2, 0x7f0c0b13

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2326
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2335
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2337
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    return-object v2

    .line 2323
    :cond_0
    const v2, 0x7f0c0b12

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    goto :goto_0
.end method
