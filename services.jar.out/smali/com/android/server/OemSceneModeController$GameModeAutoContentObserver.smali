.class public Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameModeAutoContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    .line 194
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-get2(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get4(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 201
    const-string/jumbo v2, "game_mode_status_auto"

    const/4 v3, -0x2

    .line 200
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->-wrap0(Lcom/android/server/OemSceneModeController;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->-get1(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    invoke-static {}, Lcom/android/server/OemSceneModeController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] Game Auto changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_2
    return-void
.end method
