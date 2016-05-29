.class public final Lcom/android/settings_ex/voice/VoiceInputPreference;
.super Landroid/preference/Preference;
.source "VoiceInputPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceInputPreference"


# instance fields
.field private final mAlertText:Ljava/lang/CharSequence;

.field private final mAppLabel:Ljava/lang/CharSequence;

.field private final mLabel:Ljava/lang/CharSequence;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mSettingsComponent:Landroid/content/ComponentName;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/voice/VoiceInputHelper$BaseInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/settings_ex/voice/VoiceInputHelper$BaseInfo;
    .param p3, "summary"    # Ljava/lang/CharSequence;
    .param p4, "alertText"    # Ljava/lang/CharSequence;
    .param p5, "state"    # Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings_ex/voice/VoiceInputPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/voice/VoiceInputPreference$1;-><init>(Lcom/android/settings_ex/voice/VoiceInputPreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 73
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->setLayoutResource(I)V

    .line 75
    iput-object p5, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    .line 76
    iget-object v0, p2, Lcom/android/settings_ex/voice/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mLabel:Ljava/lang/CharSequence;

    .line 77
    iget-object v0, p2, Lcom/android/settings_ex/voice/VoiceInputHelper$BaseInfo;->appLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mAppLabel:Ljava/lang/CharSequence;

    .line 78
    iput-object p4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mAlertText:Ljava/lang/CharSequence;

    .line 79
    iget-object v0, p2, Lcom/android/settings_ex/voice/VoiceInputHelper$BaseInfo;->settings:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsComponent:Landroid/content/ComponentName;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mPreventRadioButtonCallbacks:Z

    .line 82
    iget-object v0, p2, Lcom/android/settings_ex/voice/VoiceInputHelper$BaseInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->setKey(Ljava/lang/String;)V

    .line 83
    iget-object v0, p2, Lcom/android/settings_ex/voice/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/voice/VoiceInputPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/voice/VoiceInputPreference;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/voice/VoiceInputPreference;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private displayAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9
    .param p1, "positiveOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeOnClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v8, 0x1

    .line 140
    const-string v3, "VoiceInputPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Displaying data alert for :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mAlertText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "msg":Ljava/lang/String;
    const v3, 0x1040014

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/voice/VoiceInputPreference$4;

    invoke-direct {v4, p0, p2}, Lcom/android/settings_ex/voice/VoiceInputPreference$4;-><init>(Lcom/android/settings_ex/voice/VoiceInputPreference;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 157
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 158
    return-void
.end method

.method private shouldDisplayAlert()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mAlertText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doClick()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->performClick()Z

    .line 162
    return-void
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    iget-object v4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    if-nez v4, :cond_0

    .line 90
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0f01b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 96
    .local v1, "rb":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v5}, Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    .local v0, "isChecked":Z
    if-eqz v0, :cond_1

    .line 100
    iget-object v4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v4, v1}, Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 103
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mPreventRadioButtonCallbacks:Z

    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 105
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mPreventRadioButtonCallbacks:Z

    .line 107
    iput-object v1, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 109
    const v4, 0x7f0f01b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "textLayout":Landroid/view/View;
    new-instance v4, Lcom/android/settings_ex/voice/VoiceInputPreference$2;

    invoke-direct {v4, p0, v1}, Lcom/android/settings_ex/voice/VoiceInputPreference$2;-><init>(Lcom/android/settings_ex/voice/VoiceInputPreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v4, 0x7f0f01b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    .line 120
    iget-object v4, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    new-instance v5, Lcom/android/settings_ex/voice/VoiceInputPreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/voice/VoiceInputPreference$3;-><init>(Lcom/android/settings_ex/voice/VoiceInputPreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->updateCheckedState(Z)V

    .line 130
    return-object v3
.end method

.method makeCurrentChecked(Landroid/widget/Checkable;)V
    .locals 3
    .param p1, "current"    # Landroid/widget/Checkable;

    .prologue
    const/4 v2, 0x1

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/voice/VoiceInputPreference;->updateCheckedState(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {p1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 222
    return-void
.end method

.method onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSharedState:Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/voice/VoiceInputPreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 184
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/voice/VoiceInputPreference;->updateCheckedState(Z)V

    goto :goto_0

    .line 188
    :cond_1
    if-eqz p2, :cond_3

    .line 190
    invoke-direct {p0}, Lcom/android/settings_ex/voice/VoiceInputPreference;->shouldDisplayAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    new-instance v0, Lcom/android/settings_ex/voice/VoiceInputPreference$5;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/voice/VoiceInputPreference$5;-><init>(Lcom/android/settings_ex/voice/VoiceInputPreference;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/android/settings_ex/voice/VoiceInputPreference$6;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/voice/VoiceInputPreference$6;-><init>(Lcom/android/settings_ex/voice/VoiceInputPreference;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/voice/VoiceInputPreference;->displayAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/voice/VoiceInputPreference;->makeCurrentChecked(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/voice/VoiceInputPreference;->updateCheckedState(Z)V

    goto :goto_0
.end method

.method updateCheckedState(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 177
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/voice/VoiceInputPreference;->mSettingsIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
