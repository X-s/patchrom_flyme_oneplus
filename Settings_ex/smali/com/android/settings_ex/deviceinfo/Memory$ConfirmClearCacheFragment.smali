.class public Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;
.super Landroid/app/DialogFragment;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmClearCacheFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings_ex/deviceinfo/Memory;

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;-><init>()V

    .line 601
    .local v0, "dialog":Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 602
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmClearCache"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 609
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 610
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090509

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 611
    const v2, 0x7f09050a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 613
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment$1;-><init>(Lcom/android/settings_ex/deviceinfo/Memory$ConfirmClearCacheFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 628
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
