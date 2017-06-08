.class Lcom/android/settings_ex/notification/AppNotificationSettings$5;
.super Ljava/lang/Object;
.source "AppNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/AppNotificationSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    iput-object p2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 226
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 227
    .local v0, "ledEnabled":Z
    iget-object v1, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->this$0:Lcom/android/settings_ex/notification/AppNotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/AppNotificationSettings;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;
    invoke-static {v1}, Lcom/android/settings_ex/notification/AppNotificationSettings;->access$100(Lcom/android/settings_ex/notification/AppNotificationSettings;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/notification/AppNotificationSettings$5;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/NotificationBackend;->setLedEnabled(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
