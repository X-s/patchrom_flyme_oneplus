.class public Lcom/android/settings_ex/CustomDialogPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/CustomDialogPreference;Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CustomDialogPreference;->setFragment(Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    return-void
.end method

.method private setFragment(Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/CustomDialogPreference;->mFragment:Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;

    .line 70
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    iget-object v1, p0, Lcom/android/settings_ex/CustomDialogPreference;->mFragment:Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/CustomDialogPreference;->mFragment:Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/CustomDialogPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isDialogOpen()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/CustomDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/CustomDialogPreference;->getDialog()Landroid/app/Dialog;

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
    .line 67
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 61
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 58
    return-void
.end method
