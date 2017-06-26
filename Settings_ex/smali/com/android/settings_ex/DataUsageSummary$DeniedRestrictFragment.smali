.class public Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeniedRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2346
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 2348
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2353
    :goto_0
    return-void

    .line 2350
    :cond_0
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;-><init>()V

    .line 2351
    .local v0, "dialog":Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2352
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deniedRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2357
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2359
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2360
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const v2, 0x7f0c0b00

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2361
    const v2, 0x7f0c0b05

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2362
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2364
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    return-object v2
.end method
