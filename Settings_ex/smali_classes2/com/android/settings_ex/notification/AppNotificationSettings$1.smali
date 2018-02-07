.class Lcom/android/settings_ex/notification/AppNotificationSettings$1;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/AppNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/AppNotificationSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/AppNotificationSettings;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 160
    .local v0, "ledEnabled":Z
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    iget-object v1, v1, Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    iget-object v2, v2, Lcom/android/settings_ex/notification/AppNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/NotificationBackend;->setLedEnabled(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
