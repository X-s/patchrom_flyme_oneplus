.class Lcom/android/settings_ex/notification/ConfigureNotificationSettings$2;
.super Ljava/lang/Object;
.source "ConfigureNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->initLockscreenNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 191
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 192
    .local v2, "val":I
    iget-object v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->-get0(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 193
    return v5

    .line 196
    :cond_0
    const v3, 0x7f0e0e6d

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 197
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0e0e6b

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 198
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 199
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    if-eqz v1, :cond_4

    move v3, v4

    .line 198
    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-static {v3}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 201
    const-string/jumbo v6, "lock_screen_show_notifications"

    if-eqz v0, :cond_1

    move v5, v4

    .line 200
    :cond_1
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    iget-object v3, p0, Lcom/android/settings_ex/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-static {v3, v2}, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;->-set0(Lcom/android/settings_ex/notification/ConfigureNotificationSettings;I)I

    .line 203
    return v4

    .line 196
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 197
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_4
    move v3, v5

    .line 199
    goto :goto_2
.end method
