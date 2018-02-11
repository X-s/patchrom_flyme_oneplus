.class Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


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
.method static synthetic -get0(Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings_ex/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/accounts/AccountSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "titleResPackageName"    # Ljava/lang/String;
    .param p5, "titleResId"    # I
    .param p6, "fragment"    # Ljava/lang/String;
    .param p7, "fragmentArguments"    # Landroid/os/Bundle;
    .param p8, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/settings_ex/accounts/AccountSettings;

    .line 615
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 616
    iput-object p3, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    .line 617
    iput-object p4, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    .line 618
    iput p5, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    .line 619
    iput-object p6, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    .line 620
    iput-object p7, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 621
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setWidgetLayoutResource(I)V

    .line 624
    const v0, 0x7f040102

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setLayoutResource(I)V

    .line 635
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 636
    invoke-virtual {p0, p8}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 638
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 614
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 643
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 645
    iget-object v5, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    .line 646
    iget v6, p0, Lcom/android/settings_ex/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    move-object v7, v3

    .line 644
    invoke-static/range {v0 .. v7}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    .line 647
    const/4 v0, 0x1

    return v0

    .line 649
    :cond_0
    return v4
.end method
