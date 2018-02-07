.class public Lcom/android/settings_ex/WarnedListPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "WarnedListPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public click()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Landroid/support/v7/preference/ListPreference;->onClick()V

    .line 33
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
