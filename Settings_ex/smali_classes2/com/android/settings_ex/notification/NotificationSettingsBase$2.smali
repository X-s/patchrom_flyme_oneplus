.class Lcom/android/settings_ex/notification/NotificationSettingsBase$2;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettingsBase;->setupImportancePrefs(ZIZ)V
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
    .line 230
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 235
    .local v0, "blocked":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 236
    .local v1, "importance":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget v4, v4, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/settings_ex/notification/NotificationBackend;->setImportance(Ljava/lang/String;II)Z

    .line 237
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$2;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->updateDependents(I)V

    .line 238
    const/4 v2, 0x1

    return v2

    .line 235
    .end local v1    # "importance":I
    :cond_0
    const/16 v1, -0x3e8

    .restart local v1    # "importance":I
    goto :goto_0
.end method
