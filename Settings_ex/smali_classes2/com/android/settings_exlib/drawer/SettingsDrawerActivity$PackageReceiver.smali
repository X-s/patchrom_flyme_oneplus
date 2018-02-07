.class Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 523
    new-instance v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$PackageReceiver;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 522
    return-void
.end method
