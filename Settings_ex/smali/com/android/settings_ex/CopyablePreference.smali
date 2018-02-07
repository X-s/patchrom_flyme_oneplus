.class public Lcom/android/settings_ex/CopyablePreference;
.super Landroid/support/v7/preference/Preference;
.source "CopyablePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/CopyablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public static copyPreference(Landroid/content/Context;Lcom/android/settings_ex/CopyablePreference;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Lcom/android/settings_ex/CopyablePreference;

    .prologue
    .line 58
    const-string/jumbo v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 59
    .local v0, "cm":Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Lcom/android/settings_ex/CopyablePreference;->getCopyableText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v1, 0x104034e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    return-void
.end method


# virtual methods
.method public getCopyableText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/CopyablePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 40
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 41
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 42
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 43
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings_ex/CopyablePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/CopyablePreference$1;-><init>(Lcom/android/settings_ex/CopyablePreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 38
    return-void
.end method
