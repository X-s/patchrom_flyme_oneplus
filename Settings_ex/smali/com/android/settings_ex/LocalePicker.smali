.class public Lcom/android/settings_ex/LocalePicker;
.super Lcom/android/settings_ex/inputmethod/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Lcom/android/settings_ex/DialogCreatable;
.implements Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleSelectionListener;


# static fields
.field private static final DLG_SHOW_GLOBAL_WARNING:I = 0x1

.field private static final SAVE_TARGET_LOCALE:Ljava/lang/String; = "locale"

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field private mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/LocalePicker;-><init>()V

    .line 48
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/LocalePicker;->setLocaleSelectionListener(Lcom/android/settings_ex/inputmethod/LocalePicker$LocaleSelectionListener;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LocalePicker;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/LocalePicker;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings_ex/inputmethod/LocalePicker;->onCreate(Landroid/os/Bundle;)V

    .line 54
    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 57
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090a08

    new-instance v2, Lcom/android/settings_ex/LocalePicker$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/LocalePicker$1;-><init>(Lcom/android/settings_ex/LocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/inputmethod/LocalePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 63
    .local v1, "view":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 64
    .local v0, "list":Landroid/widget/ListView;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 65
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 66
    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings_ex/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 67
    return-object v1
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/android/settings_ex/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LocalePicker;->showDialog(I)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 77
    invoke-static {p1}, Lcom/android/settings_ex/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings_ex/inputmethod/LocalePicker;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings_ex/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 118
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 119
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ex/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/LocalePicker;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 96
    return-void
.end method
