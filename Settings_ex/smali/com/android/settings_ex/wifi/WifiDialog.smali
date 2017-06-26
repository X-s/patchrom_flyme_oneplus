.class Lcom/android/settings_ex/wifi/WifiDialog;
.super Lcom/oneplus/app/OPAlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiConfigUiBase;


# static fields
.field static final BUTTON_FORGET:I = -0x3

.field static final BUTTON_SUBMIT:I = -0x1


# instance fields
.field private final mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

.field private mController:Lcom/android/settings_ex/wifi/WifiConfigController;

.field private final mEdit:Z

.field private mHideForgetButton:Z

.field private mHideSubmitButton:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mModify:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_exlib/wifi/AccessPoint;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/oneplus/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    .line 58
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mModify:Z

    .line 59
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 60
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    .line 61
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideForgetButton:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_exlib/wifi/AccessPoint;ZZZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/settings_exlib/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "modify"    # Z
    .param p6, "hideSubmitButton"    # Z
    .param p7, "hideForgetButton"    # Z

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_exlib/wifi/AccessPoint;ZZ)V

    .line 50
    iput-boolean p6, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 51
    iput-boolean p7, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideForgetButton:Z

    .line 52
    return-void
.end method


# virtual methods
.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 117
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lcom/android/settings_ex/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 112
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040151

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 75
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_exlib/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mModify:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiConfigController;-><init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_exlib/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    .line 76
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->isEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->hideSubmitButton()V

    .line 90
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideForgetButton:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->hideForgetButton()V

    .line 93
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/oneplus/app/OPAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->updatePassword()V

    .line 98
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 132
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 133
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 127
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    return-void
.end method
