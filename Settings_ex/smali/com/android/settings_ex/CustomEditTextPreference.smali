.class public Lcom/android/settings_ex/CustomEditTextPreference;
.super Landroid/support/v7/preference/EditTextPreference;
.source "CustomEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/CustomEditTextPreference;Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CustomEditTextPreference;->setFragment(Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method

.method private setFragment(Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings_ex/CustomEditTextPreference;->mFragment:Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    .line 75
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/settings_ex/CustomEditTextPreference;->mFragment:Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/CustomEditTextPreference;->mFragment:Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/android/settings_ex/CustomEditTextPreference;->mFragment:Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/CustomEditTextPreference;->mFragment:Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/CustomEditTextPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    :cond_0
    return-object v0
.end method

.method public isDialogOpen()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/CustomEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/CustomEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 69
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 66
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 63
    return-void
.end method
