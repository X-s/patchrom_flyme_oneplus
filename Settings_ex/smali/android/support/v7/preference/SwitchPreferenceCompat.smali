.class public Landroid/support/v7/preference/SwitchPreferenceCompat;
.super Landroid/support/v7/preference/TwoStatePreference;
.source "SwitchPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    sget v0, Landroid/support/v7/preference/R$attr;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v1, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;)V

    iput-object v1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mListener:Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;

    .line 82
    sget-object v1, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat:[I

    .line 81
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_summaryOn:I

    .line 85
    sget v2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_summaryOn:I

    .line 84
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 87
    sget v1, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_summaryOff:I

    .line 88
    sget v2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_summaryOff:I

    .line 87
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 91
    sget v1, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_switchTextOn:I

    .line 92
    sget v2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_switchTextOn:I

    .line 90
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 95
    sget v1, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_switchTextOff:I

    .line 96
    sget v2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_switchTextOff:I

    .line 94
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 99
    sget v1, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_disableDependentsState:I

    .line 100
    sget v2, Landroid/support/v7/preference/R$styleable;->SwitchPreferenceCompat_android_disableDependentsState:I

    const/4 v3, 0x0

    .line 98
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setDisableDependentsState(Z)V

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-void
.end method

.method private syncSwitchView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 226
    instance-of v1, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 227
    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 228
    .local v0, "switchView":Landroid/support/v7/widget/SwitchCompat;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 230
    .end local v0    # "switchView":Landroid/support/v7/widget/SwitchCompat;
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 231
    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 233
    :cond_1
    instance-of v1, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 234
    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 235
    .restart local v0    # "switchView":Landroid/support/v7/widget/SwitchCompat;
    iget-object v1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mListener:Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    .end local v0    # "switchView":Landroid/support/v7/widget/SwitchCompat;
    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 214
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    sget v3, Landroid/support/v7/preference/R$id;->switchWidget:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 219
    .local v2, "switchView":Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 221
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 222
    .local v1, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncSummaryView(Landroid/view/View;)V

    .line 211
    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 140
    sget v1, Landroid/support/v7/preference/R$id;->switchWidget:I

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "switchView":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncSummaryView(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 138
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 208
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->notifyChanged()V

    .line 162
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    .line 153
    invoke-virtual {p0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->notifyChanged()V

    .line 151
    return-void
.end method
