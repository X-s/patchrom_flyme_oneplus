.class public Lcom/android/settings_ex/GearPreference;
.super Lcom/android/settings_exlib/RestrictedPreference;
.source "GearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/GearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings_ex/GearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const v0, 0x7f04015d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/GearPreference;->setWidgetLayoutResource(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 46
    const v1, 0x7f11028d

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "gear":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f11028d

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/GearPreference;->mOnGearClickListener:Lcom/android/settings_ex/GearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/GearPreference;->mOnGearClickListener:Lcom/android/settings_ex/GearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/GearPreference$OnGearClickListener;->onGearClick(Lcom/android/settings_ex/GearPreference;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings_ex/GearPreference$OnGearClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings_ex/GearPreference$OnGearClickListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings_ex/GearPreference;->mOnGearClickListener:Lcom/android/settings_ex/GearPreference$OnGearClickListener;

    .line 40
    invoke-virtual {p0}, Lcom/android/settings_ex/GearPreference;->notifyChanged()V

    .line 38
    return-void
.end method
