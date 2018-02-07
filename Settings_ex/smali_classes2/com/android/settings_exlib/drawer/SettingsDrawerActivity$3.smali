.class Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$3;
.super Ljava/lang/Object;
.source "SettingsDrawerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->openTile(Lcom/android/settings_exlib/drawer/Tile;)Z
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
    .line 401
    iput-object p1, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$3;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity$3;->this$0:Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;

    invoke-static {v0}, Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;->-get1(Lcom/android/settings_exlib/drawer/SettingsDrawerActivity;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const v1, 0x800003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    .line 403
    return-void
.end method
