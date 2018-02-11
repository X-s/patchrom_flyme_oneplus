.class final Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModePrioritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModePrioritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrefSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    .line 260
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 259
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 277
    invoke-static {}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-get0()[Lcom/android/settings_ex/notification/SettingPref;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 278
    .local v0, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v0}, Lcom/android/settings_ex/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/SettingPref;->update(Landroid/content/Context;)V

    .line 280
    return-void

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 7
    .param p1, "register"    # Z

    .prologue
    const/4 v3, 0x0

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$PrefSettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-static {v2}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-wrap0(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 266
    invoke-static {}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-get0()[Lcom/android/settings_ex/notification/SettingPref;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 267
    .local v1, "pref":Lcom/android/settings_ex/notification/SettingPref;
    invoke-virtual {v1}, Lcom/android/settings_ex/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "pref":Lcom/android/settings_ex/notification/SettingPref;
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 263
    :cond_1
    return-void
.end method
