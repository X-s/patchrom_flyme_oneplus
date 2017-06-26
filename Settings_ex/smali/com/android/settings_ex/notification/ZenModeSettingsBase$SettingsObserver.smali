.class final Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettingsBase;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    .line 130
    # getter for: Lcom/android/settings_ex/notification/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->access$100(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 126
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 127
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettingsBase;Lcom/android/settings_ex/notification/ZenModeSettingsBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/ZenModeSettingsBase;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/ZenModeSettingsBase$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettingsBase;->updateZenMode(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->access$500(Lcom/android/settings_ex/notification/ZenModeSettingsBase;Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettingsBase;->updateZenModeConfig(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->access$600(Lcom/android/settings_ex/notification/ZenModeSettingsBase;Z)V

    .line 151
    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->access$200(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->access$300(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings_ex/notification/ZenModeSettingsBase;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeSettingsBase;->access$400(Lcom/android/settings_ex/notification/ZenModeSettingsBase;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 140
    return-void
.end method
