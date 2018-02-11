.class Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;
.super Lcom/android/settings_ex/CustomListPreference;
.source "SpellCheckerPreference.java"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mScis:[Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->onSettingsButtonClicked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scis"    # [Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 47
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/settings_ex/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 49
    const v3, 0x7f04015d

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->setWidgetLayoutResource(I)V

    .line 50
    array-length v3, p2

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 51
    .local v1, "labels":[Ljava/lang/CharSequence;
    array-length v3, p2

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 52
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 53
    aget-object v3, p2, v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v0

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method private onSettingsButtonClicked()V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    .line 122
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 101
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object p1, v0, v1

    .line 102
    .restart local p1    # "newValue":Ljava/lang/Object;
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    move-object p1, v0

    .line 101
    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 108
    const v1, 0x7f11028d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .local v0, "settingsButton":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    new-instance v1, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference$1;-><init>(Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 64
    const v0, 0x7f0e1036

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    return-void
.end method

.method public setSelected(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 3
    .param p1, "currentSci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    const/4 v1, 0x0

    .line 69
    if-nez p1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->setValue(Ljava/lang/String;)V

    .line 71
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->setValueIndex(I)V

    .line 76
    return-void

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings_ex/CustomListPreference;->setValue(Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "index":I
    :goto_0
    if-ne v0, v3, :cond_1

    .line 86
    iput-object v4, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    .line 87
    return-void

    .end local v0    # "index":I
    :cond_0
    move v0, v3

    .line 84
    goto :goto_0

    .line 89
    .restart local v0    # "index":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v1, v3, v0

    .line 90
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "settingsActivity":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    iput-object v4, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    .line 82
    :goto_1
    return-void

    .line 94
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    .line 95
    iget-object v3, p0, Lcom/android/settings_ex/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
