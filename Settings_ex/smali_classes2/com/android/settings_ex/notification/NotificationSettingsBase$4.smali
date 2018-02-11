.class Lcom/android/settings_ex/notification/NotificationSettingsBase$4;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettingsBase;->setupPriorityPref(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/NotificationSettingsBase;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 263
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 264
    .local v0, "bypassZenMode":Z
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$4;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget v3, v3, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ex/notification/NotificationBackend;->setBypassZenMode(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method
