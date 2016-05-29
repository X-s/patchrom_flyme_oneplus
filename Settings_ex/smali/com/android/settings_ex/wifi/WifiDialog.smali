.class Lcom/android/settings_ex/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiConfigUiBase;


# static fields
.field static final BUTTON_FORGET:I = -0x3

.field static final BUTTON_SUBMIT:I = -0x1


# instance fields
.field private final mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mController:Lcom/android/settings_ex/wifi/WifiConfigController;

.field private final mEdit:Z

.field private mHideSubmitButton:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    .line 50
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 51
    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "accessPoint"    # Lcom/android/settings_ex/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "hideSubmitButton"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 43
    iput-boolean p5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 44
    return-void
.end method


# virtual methods
.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 103
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lcom/android/settings_ex/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 98
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 74
    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;-><init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    .line 75
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->hideSubmitButton()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 118
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    return-void
.end method
