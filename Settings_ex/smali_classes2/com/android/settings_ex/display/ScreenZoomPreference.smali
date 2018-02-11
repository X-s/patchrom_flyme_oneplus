.class public Lcom/android/settings_ex/display/ScreenZoomPreference;
.super Landroid/support/v7/preference/PreferenceGroup;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 34
    const v4, 0x7f01018a

    .line 35
    const v5, 0x101008b

    .line 33
    invoke-static {p1, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ScreenZoomPreference;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    const-string/jumbo v4, "com.android.settings_ex.display.ScreenZoomSettings"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/display/ScreenZoomPreference;->setFragment(Ljava/lang/String;)V

    .line 41
    :cond_0
    new-instance v2, Lcom/android/settings_exlib/display/DisplayDensityUtils;

    invoke-direct {v2, p1}, Lcom/android/settings_exlib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 42
    .local v2, "density":Lcom/android/settings_exlib/display/DisplayDensityUtils;
    invoke-virtual {v2}, Lcom/android/settings_exlib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v1

    .line 43
    .local v1, "defaultIndex":I
    if-gez v1, :cond_2

    .line 44
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/display/ScreenZoomPreference;->setVisible(Z)V

    .line 45
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/display/ScreenZoomPreference;->setEnabled(Z)V

    .line 32
    :cond_1
    :goto_0
    return-void

    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/display/ScreenZoomPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {v2}, Lcom/android/settings_exlib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "entries":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/settings_exlib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    .line 49
    .local v0, "currentIndex":I
    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/display/ScreenZoomPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
