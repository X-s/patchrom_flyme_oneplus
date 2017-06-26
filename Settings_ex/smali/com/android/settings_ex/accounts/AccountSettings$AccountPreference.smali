.class Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;
.super Landroid/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountPreference"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "titleResPackageName"    # Ljava/lang/String;
    .param p5, "titleResId"    # I
    .param p6, "fragment"    # Ljava/lang/String;
    .param p7, "fragmentArguments"    # Landroid/os/Bundle;
    .param p8, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    .line 537
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 538
    iput-object p3, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 539
    iput-object p4, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    .line 540
    iput p5, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    .line 541
    iput-object p6, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    .line 542
    iput-object p7, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 543
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setWidgetLayoutResource(I)V

    .line 545
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 546
    invoke-virtual {p0, p8}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 548
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 549
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 553
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    .line 557
    const/4 v4, 0x1

    .line 559
    :cond_0
    return v4
.end method
