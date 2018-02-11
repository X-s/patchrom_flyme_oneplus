.class public Lcom/android/settings_exlib/RestrictedSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/String;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    sget v0, Landroid/support/v7/preference/R$attr;->switchPreferenceStyle:I

    .line 87
    const v1, 0x101036d

    .line 85
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 39
    iput-boolean v5, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 40
    iput-object v6, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 45
    sget v4, Lcom/android/settings_exlib/R$layout;->restricted_switch_widget:I

    invoke-virtual {p0, v4}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    .line 46
    new-instance v4, Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-direct {v4, p1, p0, p2}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    .line 47
    if-eqz p2, :cond_2

    .line 49
    sget-object v4, Lcom/android/settings_exlib/R$styleable;->RestrictedSwitchPreference:[I

    .line 48
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/settings_exlib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    .line 50
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 52
    .local v3, "useAdditionalSummary":Landroid/util/TypedValue;
    if-eqz v3, :cond_0

    .line 54
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    .line 55
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 53
    :goto_0
    iput-boolean v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    .line 59
    :cond_0
    sget v4, Lcom/android/settings_exlib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    .line 58
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 60
    .local v2, "restrictedSwitchSummary":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 61
    .local v1, "data":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 62
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 63
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_7

    .line 64
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    if-nez v1, :cond_8

    move-object v4, v6

    :goto_2
    iput-object v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 71
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    .end local v2    # "restrictedSwitchSummary":Landroid/util/TypedValue;
    .end local v3    # "useAdditionalSummary":Landroid/util/TypedValue;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 72
    sget v4, Lcom/android/settings_exlib/R$string;->disabled_by_admin:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    .line 74
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_4

    .line 75
    sget v4, Lcom/android/settings_exlib/R$layout;->restricted_switch_preference:I

    invoke-virtual {p0, v4}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->setLayoutResource(I)V

    .line 76
    invoke-virtual {p0, v5}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    .line 43
    :cond_4
    return-void

    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    .restart local v3    # "useAdditionalSummary":Landroid/util/TypedValue;
    :cond_5
    move v4, v5

    .line 55
    goto :goto_0

    :cond_6
    move v4, v5

    .line 54
    goto :goto_0

    .line 66
    .restart local v1    # "data":Ljava/lang/CharSequence;
    .restart local v2    # "restrictedSwitchSummary":Landroid/util/TypedValue;
    :cond_7
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .local v1, "data":Ljava/lang/CharSequence;
    goto :goto_1

    .line 69
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "userRestriction"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public checkRestrictionAndSetDisabled(Ljava/lang/String;I)V
    .locals 1
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/support/v7/preference/PreferenceManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 144
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 142
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 97
    iget-object v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v4, p1}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 98
    sget v4, Lcom/android/settings_exlib/R$id;->restricted_icon:I

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "restrictedIcon":Landroid/view/View;
    const v4, 0x1020040

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "switchWidget":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_0
    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_1
    iget-boolean v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_6

    .line 108
    sget v4, Lcom/android/settings_exlib/R$id;->additional_summary:I

    .line 107
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, "additionalSummaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 111
    iget-object v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    .end local v0    # "additionalSummaryView":Landroid/widget/TextView;
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v4, v6

    .line 101
    goto :goto_0

    :cond_4
    move v4, v5

    .line 104
    goto :goto_1

    .line 114
    .restart local v0    # "additionalSummaryView":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 118
    .end local v0    # "additionalSummaryView":Landroid/widget/TextView;
    :cond_6
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    iget-object v4, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    .line 131
    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->notifyChanged()V

    .line 164
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_exlib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 159
    return-void

    .line 161
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 156
    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 1
    .param p1, "useSummary"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedSwitchPreference;->mHelper:Lcom/android/settings_exlib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings_exlib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    .line 137
    return-void
.end method
