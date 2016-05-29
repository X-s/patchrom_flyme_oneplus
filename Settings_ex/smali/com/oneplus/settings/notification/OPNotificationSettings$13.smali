.class Lcom/oneplus/settings/notification/OPNotificationSettings$13;
.super Ljava/lang/Object;
.source "OPNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$13;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1012
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1013
    .local v0, "val":Z
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$13;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1700(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_pulse"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
