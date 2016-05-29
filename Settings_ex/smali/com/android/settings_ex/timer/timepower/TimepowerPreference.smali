.class public Lcom/android/settings_ex/timer/timepower/TimepowerPreference;
.super Landroid/preference/Preference;
.source "TimepowerPreference.java"


# instance fields
.field private mSettingsViewClicklistener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const v0, 0x7f040080

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->setLayoutResource(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f0137

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "textLayout":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 43
    const v3, 0x7f0f0138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "settingsIcon":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->mSettingsViewClicklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-object v2
.end method

.method public setViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/settings_ex/timer/timepower/TimepowerPreference;->mSettingsViewClicklistener:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method
