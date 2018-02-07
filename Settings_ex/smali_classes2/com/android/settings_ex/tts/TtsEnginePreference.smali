.class public Lcom/android/settings_ex/tts/TtsEnginePreference;
.super Landroid/support/v7/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/tts/TtsEnginePreference$1;,
        Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field static final FRAGMENT_ARGS_LABEL:Ljava/lang/String; = "label"

.field static final FRAGMENT_ARGS_NAME:Ljava/lang/String; = "name"

.field static final FRAGMENT_ARGS_VOICES:Ljava/lang/String; = "voices"

.field private static final TAG:Ljava/lang/String; = "TtsEnginePreference"


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSettingsActivity:Lcom/android/settings_ex/SettingsActivity;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/SettingsActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsActivity:Lcom/android/settings_ex/SettingsActivity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/android/settings_ex/SettingsActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/speech/tts/TextToSpeech$EngineInfo;
    .param p3, "state"    # Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    .param p4, "prefActivity"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Lcom/android/settings_ex/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V

    .line 88
    iput-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 99
    const v0, 0x7f04014e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 101
    iput-object p3, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 102
    iput-object p4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsActivity:Lcom/android/settings_ex/SettingsActivity;

    .line 103
    iput-object p2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method private displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8
    .param p1, "positiveOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v7, 0x1

    .line 189
    const-string/jumbo v2, "TtsEnginePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Displaying data alert for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 194
    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v5, v5, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0e0089

    .line 193
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 196
    const v3, 0x104000a

    .line 192
    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 197
    const/high16 v3, 0x1040000

    .line 192
    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 200
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void
.end method

.method private makeCurrentEngine(Landroid/widget/Checkable;)V
    .locals 2
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 235
    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 208
    :cond_0
    return-void

    .line 211
    :cond_1
    if-eqz p2, :cond_3

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->shouldDisplayDataAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    .line 219
    new-instance v1, Lcom/android/settings_ex/tts/TtsEnginePreference$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference$4;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    .line 214
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    :goto_0
    return-void

    .line 228
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private shouldDisplayDataAlert()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 114
    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v4, :cond_0

    .line 115
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    const v4, 0x7f11027b

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 120
    .local v1, "rb":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v5}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 124
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 125
    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v4, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 128
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    iput-boolean v3, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 132
    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 134
    const v4, 0x7f11027c

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 137
    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v5, :cond_4

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    if-nez v0, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v3, Lcom/android/settings_ex/tts/TtsEnginePreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    :cond_3
    return-void

    :cond_4
    move v2, v3

    .line 137
    goto :goto_0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
