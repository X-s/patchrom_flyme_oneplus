.class Lcom/android/settings_ex/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiConfigUiBase;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;
    }
.end annotation


# static fields
.field private static final BUTTON_FORGET:I = -0x3

.field private static final BUTTON_SUBMIT:I = -0x1


# instance fields
.field private final mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mController:Lcom/android/settings_ex/wifi/WifiConfigController;

.field private mHideSubmitButton:Z

.field private final mListener:Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;

.field private final mMode:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings_exlib/wifi/AccessPoint;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;
    .param p3, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p4, "mode"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 57
    iput p4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mMode:I

    .line 58
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;

    .line 59
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings_exlib/wifi/AccessPoint;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;
    .param p3, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p4, "mode"    # I
    .param p5, "hideSubmitButton"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    .line 51
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 49
    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings_ex/wifi/WifiDialog;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->dismiss()V

    .line 95
    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 139
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lcom/android/settings_ex/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 134
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mMode:I

    return v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 129
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    .line 105
    packed-switch p2, :pswitch_data_0

    .line 103
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings_ex/wifi/WifiDialog;)V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_exlib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 114
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/wifi/WifiDialog$WifiDialogListener;->onForget(Lcom/android/settings_ex/wifi/WifiDialog;)V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040214

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 73
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    iget v3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mMode:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;-><init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_exlib/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    .line 74
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->hideSubmitButton()V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->hideForgetButton()V

    .line 69
    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->updatePassword()V

    .line 89
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 154
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 153
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 149
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 143
    return-void
.end method
