.class public Landroid/support/v7/preference/CheckBoxPreference;
.super Landroid/support/v7/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/CheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Landroid/support/v7/preference/CheckBoxPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    sget v0, Landroid/support/v7/preference/R$attr;->checkBoxPreferenceStyle:I

    .line 83
    const v1, 0x101008f

    .line 82
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    new-instance v1, Landroid/support/v7/preference/CheckBoxPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/preference/CheckBoxPreference$Listener;-><init>(Landroid/support/v7/preference/CheckBoxPreference;Landroid/support/v7/preference/CheckBoxPreference$Listener;)V

    iput-object v1, p0, Landroid/support/v7/preference/CheckBoxPreference;->mListener:Landroid/support/v7/preference/CheckBoxPreference$Listener;

    .line 66
    sget-object v1, Landroid/support/v7/preference/R$styleable;->CheckBoxPreference:[I

    .line 65
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->CheckBoxPreference_summaryOn:I

    .line 69
    sget v2, Landroid/support/v7/preference/R$styleable;->CheckBoxPreference_android_summaryOn:I

    .line 68
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 71
    sget v1, Landroid/support/v7/preference/R$styleable;->CheckBoxPreference_summaryOff:I

    .line 72
    sget v2, Landroid/support/v7/preference/R$styleable;->CheckBoxPreference_android_summaryOff:I

    .line 71
    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 75
    sget v1, Landroid/support/v7/preference/R$styleable;->CheckBoxPreference_disableDependentsState:I

    .line 76
    sget v2, Landroid/support/v7/preference/R$styleable;->CheckBoxPreference_android_disableDependentsState:I

    const/4 v3, 0x0

    .line 74
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setDisableDependentsState(Z)V

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method private syncCheckboxView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 125
    check-cast v0, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    :cond_0
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 128
    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Landroid/support/v7/preference/CheckBoxPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 130
    :cond_1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    .line 131
    check-cast p1, Landroid/widget/CompoundButton;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Landroid/support/v7/preference/CheckBoxPreference;->mListener:Landroid/support/v7/preference/CheckBoxPreference$Listener;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/support/v7/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 112
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    const v3, 0x1020001

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "checkboxView":Landroid/view/View;
    invoke-direct {p0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 119
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/v7/preference/CheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 94
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/preference/CheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->syncSummaryView(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 91
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
    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 106
    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 104
    return-void
.end method
