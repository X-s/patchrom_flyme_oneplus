.class public Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPNotificationAndNotdisturb.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;
    }
.end annotation


# static fields
.field private static final KEY_RING_SETTINGS:Ljava/lang/String; = "ring_settings"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb$NotificationAndNotdisturbSearchIndexProvider;-><init>()V

    .line 38
    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->addPreferencesFromResource(I)V

    .line 26
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "ring_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 23
    :cond_0
    return-void
.end method
