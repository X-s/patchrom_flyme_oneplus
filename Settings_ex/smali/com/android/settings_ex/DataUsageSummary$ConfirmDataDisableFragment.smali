.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataDisableFragment"
.end annotation


# static fields
.field static mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2267
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;I)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "subId"    # I

    .prologue
    .line 2270
    sput p1, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->mSubId:I

    .line 2271
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2276
    :goto_0
    return-void

    .line 2273
    :cond_0
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;-><init>()V

    .line 2274
    .local v0, "dialog":Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2275
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2280
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2282
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2283
    .local v0, "builder":Lcom/oneplus/app/OPAlertDialog$Builder;
    const v2, 0x7f0c0aee

    invoke-virtual {v0, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2285
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2295
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    .line 2297
    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    return-object v2
.end method
