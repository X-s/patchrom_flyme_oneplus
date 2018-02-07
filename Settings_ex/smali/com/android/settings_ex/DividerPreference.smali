.class public Lcom/android/settings_ex/DividerPreference;
.super Landroid/support/v7/preference/Preference;
.source "DividerPreference.java"


# instance fields
.field private mAllowAbove:Ljava/lang/Boolean;

.field private mAllowBelow:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/DividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object v1, Lcom/android/settings_ex/R$styleable;->DividerPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DividerPreference;->mAllowAbove:Ljava/lang/Boolean;

    .line 34
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DividerPreference;->mAllowBelow:Ljava/lang/Boolean;

    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/DividerPreference;->mAllowAbove:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/DividerPreference;->mAllowAbove:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DividerPreference;->mAllowBelow:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/DividerPreference;->mAllowBelow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 54
    :cond_1
    return-void
.end method

.method public setDividerAllowedAbove(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DividerPreference;->mAllowAbove:Ljava/lang/Boolean;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/DividerPreference;->notifyChanged()V

    .line 43
    return-void
.end method

.method public setDividerAllowedBelow(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DividerPreference;->mAllowBelow:Ljava/lang/Boolean;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/DividerPreference;->notifyChanged()V

    .line 48
    return-void
.end method
