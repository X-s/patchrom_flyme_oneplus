.class public Lcom/android/settings_ex/WarnedPreference;
.super Landroid/support/v7/preference/Preference;
.source "WarnedPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/WarnedPreference$OnPreferenceClickListener;,
        Lcom/android/settings_ex/WarnedPreference$OnPreferenceValueChangeListener;,
        Lcom/android/settings_ex/WarnedPreference$SavedState;
    }
.end annotation


# static fields
.field private static final FILE_FONT_CHOOSE:Ljava/lang/String; = "fontsize_choose"

.field private static final KEY_FONT_CHOOSE_ID:Ljava/lang/String; = "radioButton_checkedId"

.field private static final KEY_FONT_CHOOSE_PRE_ID:Ljava/lang/String; = "radioButton_checked_pre_Id"


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialogFontChoose:Landroid/app/AlertDialog;

.field private mFontDialogView:Landroid/view/View;

.field private mOnPreferenceClickListener:Lcom/android/settings_ex/WarnedPreference$OnPreferenceClickListener;

.field private mPreferenceValueChangeListener:Lcom/android/settings_ex/WarnedPreference$OnPreferenceValueChangeListener;

.field private mSharedPreferenceFontChoose:Landroid/content/SharedPreferences;

.field private mSpFontEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/WarnedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput-object p1, p0, Lcom/android/settings_ex/WarnedPreference;->mContext:Landroid/content/Context;

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/WarnedPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/WarnedPreference;->mFontDialogView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/WarnedPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "fontsize_choose"

    .line 89
    const/4 v3, 0x0

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/WarnedPreference;->mSharedPreferenceFontChoose:Landroid/content/SharedPreferences;

    .line 83
    return-void
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onClick()V

    .line 136
    return-void
.end method

.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getWarnedPreferenceSummary()Ljava/lang/String;
    .locals 7

    .prologue
    .line 145
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mFontDialogView:Landroid/view/View;

    .line 146
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mSharedPreferenceFontChoose:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "radioButton_checkedId"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 145
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 147
    .local v1, "rbSave":Landroid/widget/RadioButton;
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 151
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0e10c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "fontSizeNames":Ljava/lang/String;
    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 161
    .local v1, "radioButtonId":I
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mFontDialogView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 162
    .local v2, "rb":Landroid/widget/RadioButton;
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mSharedPreferenceFontChoose:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mSpFontEditor:Landroid/content/SharedPreferences$Editor;

    .line 164
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "font_waring"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 165
    const-string/jumbo v4, "is_checked"

    .line 164
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 166
    .local v0, "isChecked":Z
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e10c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mSpFontEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "radioButton_checkedId"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mSpFontEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mPreferenceValueChangeListener:Lcom/android/settings_ex/WarnedPreference$OnPreferenceValueChangeListener;

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mPreferenceValueChangeListener:Lcom/android/settings_ex/WarnedPreference$OnPreferenceValueChangeListener;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/android/settings_ex/WarnedPreference$OnPreferenceValueChangeListener;->onPreferenceValueChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)V

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    .line 180
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 159
    :cond_2
    return-void

    .line 170
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/WarnedPreference;->mSpFontEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "radioButton_checked_pre_Id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mOnPreferenceClickListener:Lcom/android/settings_ex/WarnedPreference$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mOnPreferenceClickListener:Lcom/android/settings_ex/WarnedPreference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/WarnedPreference$OnPreferenceClickListener;->onPreferenceClick(Landroid/support/v7/preference/Preference;)V

    .line 97
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WarnedPreference;->showDialog(Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 66
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 208
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/WarnedPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/android/settings_ex/WarnedPreference$SavedState;

    .line 215
    .local v0, "myState":Lcom/android/settings_ex/WarnedPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings_ex/WarnedPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    iget-boolean v1, v0, Lcom/android/settings_ex/WarnedPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, v0, Lcom/android/settings_ex/WarnedPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/WarnedPreference;->showDialog(Landroid/os/Bundle;)V

    .line 207
    :cond_0
    return-void

    .line 210
    .end local v0    # "myState":Lcom/android/settings_ex/WarnedPreference$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 211
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 195
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 196
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    new-instance v0, Lcom/android/settings_ex/WarnedPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/WarnedPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 201
    .local v0, "myState":Lcom/android/settings_ex/WarnedPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings_ex/WarnedPreference$SavedState;->isDialogShowing:Z

    .line 202
    iget-object v2, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ex/WarnedPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 203
    return-object v0

    .line 197
    .end local v0    # "myState":Lcom/android/settings_ex/WarnedPreference$SavedState;
    :cond_0
    return-object v1
.end method

.method public setOnPreferenceClickListener(Lcom/android/settings_ex/WarnedPreference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "OnPreferenceClickListener"    # Lcom/android/settings_ex/WarnedPreference$OnPreferenceClickListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/WarnedPreference;->mOnPreferenceClickListener:Lcom/android/settings_ex/WarnedPreference$OnPreferenceClickListener;

    .line 61
    return-void
.end method

.method public setPreferenceValueChangeListener(Lcom/android/settings_ex/WarnedPreference$OnPreferenceValueChangeListener;)V
    .locals 0
    .param p1, "preferenceValueChangeListener"    # Lcom/android/settings_ex/WarnedPreference$OnPreferenceValueChangeListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/WarnedPreference;->mPreferenceValueChangeListener:Lcom/android/settings_ex/WarnedPreference$OnPreferenceValueChangeListener;

    .line 56
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mFontDialogView:Landroid/view/View;

    const v5, 0x7f110168

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 104
    .local v1, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 106
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings_ex/WarnedPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 107
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mSharedPreferenceFontChoose:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "radioButton_checkedId"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 108
    .local v3, "rbCheckedId":I
    if-eqz v3, :cond_2

    .line 109
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mFontDialogView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 110
    .local v2, "rbChecked":Landroid/widget/RadioButton;
    invoke-virtual {v2, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 111
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .end local v2    # "rbChecked":Landroid/widget/RadioButton;
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings_ex/WarnedPreference;->mFontDialogView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 118
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings_ex/WarnedPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/WarnedPreference$1;-><init>(Lcom/android/settings_ex/WarnedPreference;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    .line 129
    :cond_0
    if-eqz p1, :cond_1

    .line 130
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 131
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mDialogFontChoose:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 101
    :cond_1
    return-void

    .line 113
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/WarnedPreference;->mFontDialogView:Landroid/view/View;

    const v5, 0x7f11016b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 114
    .local v0, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public waringDialogOk()V
    .locals 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mSpFontEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mSharedPreferenceFontChoose:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mSpFontEditor:Landroid/content/SharedPreferences$Editor;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mSpFontEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "radioButton_checkedId"

    .line 189
    iget-object v2, p0, Lcom/android/settings_ex/WarnedPreference;->mSharedPreferenceFontChoose:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "radioButton_checked_pre_Id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 188
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/WarnedPreference;->mSpFontEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    return-void
.end method
