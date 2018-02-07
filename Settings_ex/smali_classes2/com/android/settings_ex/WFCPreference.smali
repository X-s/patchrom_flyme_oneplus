.class public Lcom/android/settings_ex/WFCPreference;
.super Landroid/support/v7/preference/Preference;
.source "WFCPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubSummary:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchEnabled:Z

.field private remainSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/WFCPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/WFCPreference;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/WFCPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p1, p0, Lcom/android/settings_ex/WFCPreference;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcom/android/settings_ex/WFCPreference;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 69
    const v0, 0x7f110179

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSubSummary:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSubSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/WFCPreference;->remainSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f1100a5

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSwitch:Landroid/widget/Switch;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-boolean v0, p0, Lcom/android/settings_ex/WFCPreference;->mSwitchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WFCPreference;->setChecked(Z)V

    .line 67
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 78
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/WFCPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 79
    iput-boolean p2, p0, Lcom/android/settings_ex/WFCPreference;->mSwitchEnabled:Z

    .line 77
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings_ex/WFCPreference;->mSwitchEnabled:Z

    .line 90
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSubSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 84
    iput-object p1, p0, Lcom/android/settings_ex/WFCPreference;->remainSummary:Ljava/lang/CharSequence;

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WFCPreference;->mSubSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
