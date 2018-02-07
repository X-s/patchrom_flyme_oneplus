.class Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;
.super Ljava/lang/Object;
.source "OPNotificationAdvancedSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->initLockscreenNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;->this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 89
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 90
    .local v2, "val":I
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;->this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->-get0(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 91
    return v4

    .line 93
    :cond_0
    const v3, 0x7f0e0e3f

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 94
    .local v0, "enabled":Z
    :goto_0
    const v3, 0x7f0e0e3d

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 96
    .local v1, "show":Z
    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;->this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->-wrap0(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v6

    .line 97
    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    .line 98
    if-eqz v1, :cond_4

    move v3, v4

    .line 95
    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;->this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    invoke-static {v3}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->-wrap0(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 100
    const-string/jumbo v6, "lock_screen_show_notifications"

    .line 101
    if-eqz v0, :cond_1

    move v5, v4

    .line 99
    :cond_1
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$2;->this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    invoke-static {v3, v2}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->-set0(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;I)I

    .line 103
    return v4

    .line 93
    .end local v0    # "enabled":Z
    .end local v1    # "show":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 94
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "show":Z
    goto :goto_1

    :cond_4
    move v3, v5

    .line 98
    goto :goto_2
.end method
