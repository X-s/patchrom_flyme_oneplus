.class public Lcom/android/settings_ex/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectSubscription"

.field public static final PACKAGE:Ljava/lang/String; = "PACKAGE"

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field public static final TARGET_CLASS:Ljava/lang/String; = "TARGET_CLASS"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;

.field private tabLabel:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SUB 1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SUB 2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUB 3"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/SelectSubscription;->tabLabel:[Ljava/lang/String;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v10, "Creating activity"

    invoke-static {v10}, Lcom/android/settings_ex/SelectSubscription;->log(Ljava/lang/String;)V

    .line 74
    const v10, 0x7f0400c7

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/SelectSubscription;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v6

    .line 78
    .local v6, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/android/settings_ex/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 79
    .local v2, "intent":Landroid/content/Intent;
    const-string v10, "PACKAGE"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "pkg":Ljava/lang/String;
    const-string v10, "TARGET_CLASS"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "targetClass":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 84
    .local v3, "numPhones":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 85
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 87
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "displayName":Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating SelectSub activity = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings_ex/SelectSubscription;->log(Ljava/lang/String;)V

    .line 92
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 93
    iget-object v10, p0, Lcom/android/settings_ex/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v10, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 95
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 98
    invoke-static {v2, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 99
    iget-object v10, p0, Lcom/android/settings_ex/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v10, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 100
    iget-object v10, p0, Lcom/android/settings_ex/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v6, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v0, v10, v1

    goto :goto_1

    .line 104
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    .line 105
    .local v7, "tabWidget":Landroid/widget/TabWidget;
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v7}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_2

    .line 106
    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 107
    .local v9, "tv":Landroid/widget/TextView;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 111
    .end local v9    # "tv":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 116
    return-void
.end method
