.class public Lcom/oneplus/settings/RestorePwdDialog;
.super Landroid/app/AlertDialog;
.source "RestorePwdDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final BUTTON_NEGATIVE:I = -0x2

.field static final BUTTON_SUBMIT:I = -0x1

.field private static final MAX_RESTORE_LENGTH:I = 0x8

.field private static final MIN_RESTORE_LENGTH:I = 0x4

.field public static final RESTORE_DIALOG_CONFIRM:I = 0x1

.field public static final RESTORE_DIALOG_MODIFY:I = 0x2


# instance fields
.field private mAgain:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mModify:I

.field private mNewPassword:Landroid/widget/EditText;

.field private mPassword:Landroid/widget/EditText;

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewMode"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "again"    # Z
    .param p5, "modify"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mViewMode:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mModify:I

    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/RestorePwdDialog;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/oneplus/settings/RestorePwdDialog;->mViewMode:I

    .line 47
    iput-object p3, p0, Lcom/oneplus/settings/RestorePwdDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    iput-boolean p4, p0, Lcom/oneplus/settings/RestorePwdDialog;->mAgain:Z

    .line 49
    iput p5, p0, Lcom/oneplus/settings/RestorePwdDialog;->mModify:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/RestorePwdDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/RestorePwdDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/RestorePwdDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/RestorePwdDialog;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private clearTextField()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mModify:I

    .line 138
    return-void
.end method

.method private enableConfirmView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const v1, 0x7f0f0128

    .line 141
    iget v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mViewMode:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onFocusChange(Z)V
    .locals 6
    .param p1, "hasFocus"    # Z

    .prologue
    .line 80
    move v0, p1

    .line 81
    .local v0, "isFocus":Z
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/oneplus/settings/RestorePwdDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/settings/RestorePwdDialog$1;-><init>(Lcom/oneplus/settings/RestorePwdDialog;Z)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method private setHintText(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 110
    const v1, 0x7f0f0126

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, "password_view":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/oneplus/settings/RestorePwdDialog;->mAgain:Z

    if-eqz v1, :cond_1

    .line 112
    iget v1, p0, Lcom/oneplus/settings/RestorePwdDialog;->mViewMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 113
    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :goto_0
    return-void

    .line 115
    :cond_0
    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 118
    :cond_1
    const v1, 0x7f09002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setPasswordVisible(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "textView"    # Landroid/widget/EditText;

    .prologue
    .line 213
    if-nez p2, :cond_0

    .line 226
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 223
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 224
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 225
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    goto :goto_1
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mModify:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 96
    :pswitch_0
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/RestorePwdDialog;->setTitle(I)V

    goto :goto_0

    .line 99
    :pswitch_1
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/RestorePwdDialog;->setTitle(I)V

    goto :goto_0

    .line 102
    :pswitch_2
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/RestorePwdDialog;->setTitle(I)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private validate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, -0x1

    .line 156
    iget v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mViewMode:I

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 159
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/RestorePwdDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/RestorePwdDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 167
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/RestorePwdDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/settings/RestorePwdDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/oneplus/settings/RestorePwdDialog;->validate()V

    .line 180
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 184
    return-void
.end method

.method public getNewPassWord()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/RestorePwdDialog;->setPasswordVisible(Landroid/view/View;Landroid/widget/EditText;)V

    .line 207
    iget v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/RestorePwdDialog;->setPasswordVisible(Landroid/view/View;Landroid/widget/EditText;)V

    .line 210
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0xa

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 55
    .local v6, "factory":Landroid/view/LayoutInflater;
    const v0, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {v6, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "rootView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/oneplus/settings/RestorePwdDialog;->enableConfirmView(Landroid/view/View;)V

    .line 57
    const v0, 0x7f0f0127

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    .line 58
    const v0, 0x7f0f012a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    const v0, 0x7f0f012b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/oneplus/settings/RestorePwdDialog;->setTitle()V

    move-object v0, p0

    move v4, v2

    move v5, v3

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/settings/RestorePwdDialog;->setView(Landroid/view/View;IIII)V

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/RestorePwdDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f09002d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/settings/RestorePwdDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v0, v3}, Lcom/oneplus/settings/RestorePwdDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 73
    const/4 v0, -0x2

    iget-object v3, p0, Lcom/oneplus/settings/RestorePwdDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f09002e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/RestorePwdDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v3, v4}, Lcom/oneplus/settings/RestorePwdDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/RestorePwdDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 125
    invoke-direct {p0}, Lcom/oneplus/settings/RestorePwdDialog;->clearTextField()V

    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 188
    return-void
.end method
