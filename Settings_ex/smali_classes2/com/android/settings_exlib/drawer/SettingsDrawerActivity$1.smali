.class Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$1;
.super Landroid/os/Handler;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-static {v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->-wrap0(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)V

    goto :goto_0

    .line 104
    :pswitch_1
    new-instance v0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;

    iget-object v1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$1;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$CategoriesUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
