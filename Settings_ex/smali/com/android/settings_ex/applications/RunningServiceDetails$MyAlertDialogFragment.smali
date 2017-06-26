.class public Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "RunningServiceDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;
    .locals 3
    .param p0, "id"    # I
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 570
    new-instance v1, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;-><init>()V

    .line 571
    .local v1, "frag":Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string v2, "comp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 574
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 575
    return-object v1
.end method


# virtual methods
.method getOwner()Lcom/android/settings_ex/applications/RunningServiceDetails;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningServiceDetails;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 584
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 585
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    .line 608
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "comp"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 588
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings_ex/applications/RunningServiceDetails;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails;->activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings_ex/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v3

    if-nez v3, :cond_0

    .line 592
    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c081e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0c081f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c07c7

    new-instance v5, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment$1;-><init>(Lcom/android/settings_ex/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c07c8

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->create()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v2

    goto :goto_0

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
