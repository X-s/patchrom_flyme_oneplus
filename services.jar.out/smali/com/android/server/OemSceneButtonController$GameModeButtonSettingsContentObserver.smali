.class public Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameModeButtonSettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneButtonController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneButtonController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;->this$0:Lcom/android/server/OemSceneButtonController;

    .line 83
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;->this$0:Lcom/android/server/OemSceneButtonController;

    invoke-static {v0}, Lcom/android/server/OemSceneButtonController;->-get2(Lcom/android/server/OemSceneButtonController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/server/OemSceneButtonController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OemSceneButtonController"

    const-string/jumbo v1, "[scene] Game Mode Button Settings changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;->this$0:Lcom/android/server/OemSceneButtonController;

    invoke-static {v0}, Lcom/android/server/OemSceneButtonController;->-get1(Lcom/android/server/OemSceneButtonController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method
