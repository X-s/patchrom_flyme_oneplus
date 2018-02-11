.class Lcom/android/settings_ex/EditPinPreference;
.super Lcom/android/settings_ex/CustomEditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const v0, 0x7f0400a1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/EditPinPreference;->setDialogLayoutResource(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const v0, 0x7f0400a1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/EditPinPreference;->setDialogLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 69
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 59
    const v1, 0x1020003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 61
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 62
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 56
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomEditTextPreference;->onDialogClosed(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    .line 51
    return-void
.end method

.method public showPinDialog()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 82
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->onClick()V

    goto :goto_0
.end method
