.class final Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;
.super Landroid/database/ContentObserver;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenAccessSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/ZenAccessSettings;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenAccessSettings;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;->this$0:Lcom/android/settings_ex/notification/ZenAccessSettings;

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenAccessSettings$SettingObserver;->this$0:Lcom/android/settings_ex/notification/ZenAccessSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenAccessSettings;->-wrap1(Lcom/android/settings_ex/notification/ZenAccessSettings;)V

    .line 198
    return-void
.end method
