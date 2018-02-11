.class Lcom/oneplus/settings/better/OPScreenColorMode$1;
.super Landroid/database/ContentObserver;
.source "OPScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPScreenColorMode;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPScreenColorMode;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-wrap0(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "night_display_activated"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_3

    const/4 v1, 0x1

    .line 125
    .local v1, "nightmodeenabled":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-wrap0(Lcom/oneplus/settings/better/OPScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "reading_mode_status_manual"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_4

    const/4 v2, 0x1

    .line 126
    .local v2, "readingmodeenabled":Z
    :goto_1
    if-eqz v1, :cond_5

    move v0, v2

    .line 127
    :goto_2
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get7(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 128
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get5(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 129
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get8(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 130
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get6(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 131
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get4(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 132
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get9(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/android/settings_ex/ui/RadioButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 133
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get10(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/settings/ui/OPSeekBarPreference;->setEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get3(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 135
    if-nez v1, :cond_0

    .line 136
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get3(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v3

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v5, 0x7f0e026f

    invoke-virtual {v4, v5}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    if-nez v2, :cond_1

    .line 139
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get3(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v3

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v5, 0x7f0e03a3

    invoke-virtual {v4, v5}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    :cond_1
    if-nez v0, :cond_6

    .line 142
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get3(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 121
    :cond_2
    :goto_3
    return-void

    .line 124
    .end local v1    # "nightmodeenabled":Z
    .end local v2    # "readingmodeenabled":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "nightmodeenabled":Z
    goto/16 :goto_0

    .line 125
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "readingmodeenabled":Z
    goto/16 :goto_1

    .line 126
    :cond_5
    const/4 v0, 0x0

    .local v0, "enabled":Z
    goto/16 :goto_2

    .line 144
    .end local v0    # "enabled":Z
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPScreenColorMode;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/better/OPScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPScreenColorMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPScreenColorMode;->-get3(Lcom/oneplus/settings/better/OPScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3
.end method
