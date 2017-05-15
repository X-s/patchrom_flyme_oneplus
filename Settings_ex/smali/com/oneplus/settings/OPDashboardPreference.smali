.class public Lcom/oneplus/settings/OPDashboardPreference;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "OPDashboardPreference.java"


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPreferenceKey:Ljava/lang/String;

.field private mRightIcon:Landroid/widget/ImageView;

.field private mShowRightIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lcom/oneplus/settings/OPDashboardPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDashboardPreference$1;-><init>(Lcom/oneplus/settings/OPDashboardPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPDashboardPreference;->initview(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Lcom/oneplus/settings/OPDashboardPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDashboardPreference$1;-><init>(Lcom/oneplus/settings/OPDashboardPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPDashboardPreference;->initview(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance v0, Lcom/oneplus/settings/OPDashboardPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDashboardPreference$1;-><init>(Lcom/oneplus/settings/OPDashboardPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPDashboardPreference;->initview(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    new-instance v0, Lcom/oneplus/settings/OPDashboardPreference$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPDashboardPreference$1;-><init>(Lcom/oneplus/settings/OPDashboardPreference;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPDashboardPreference;->initview(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private initview(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const v0, 0x7f04008f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPDashboardPreference;->setLayoutResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public hideRightIcon()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mRightIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mRightIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f12007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mRightIcon:Landroid/widget/ImageView;

    .line 65
    iget-boolean v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mShowRightIcon:Z

    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardPreference;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/OPDashboardPreference;->showRightIcon(ZLjava/lang/String;)V

    .line 66
    return-void
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :cond_0
    return-void
.end method

.method public showRightIcon()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mRightIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardPreference;->mRightIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public showRightIcon(ZLjava/lang/String;)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/oneplus/settings/OPDashboardPreference;->mShowRightIcon:Z

    .line 70
    iput-object p2, p0, Lcom/oneplus/settings/OPDashboardPreference;->mPreferenceKey:Ljava/lang/String;

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->showRightIcon()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->hideRightIcon()V

    goto :goto_0
.end method

.method public startOneplusActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1, "titleIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    new-instance v2, Landroid/content/Intent;

    const-string v3, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 120
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OPMSimMobileNetworkSubSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "componentName":Landroid/content/ComponentName;
    goto :goto_1

    .line 128
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.OPSimSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 130
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.OPSimSettings"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 139
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.noviceteaching"

    const-string v4, "com.oneplus.noviceteaching.NoViceTeachingActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 145
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CheckUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 147
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.oneplus.opbackup"

    const-string v4, "com.oneplus.opbackup.CheckUpdateActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 154
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/high16 v4, 0x7f050000

    const v5, 0x7f050001

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 157
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.oneplus.notification.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 158
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/Settings$NotificationAppListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, ":settings:show_fragment_as_subsetting"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 162
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/settings/OPDashboardPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
