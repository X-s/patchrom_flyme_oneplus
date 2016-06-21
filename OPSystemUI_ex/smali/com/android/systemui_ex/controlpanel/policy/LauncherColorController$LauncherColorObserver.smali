.class Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;
.super Landroid/database/ContentObserver;
.source "LauncherColorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherColorObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    .line 77
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/high16 v4, -0x1000000

    .line 82
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mLauncherColorChangeCallbackList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$000(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;

    .line 83
    .local v0, "callback":Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;
    if-eqz v0, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$100(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$100(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_launcher_main_color_key"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;->onLauncherMainColorChange(I)V

    .line 86
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$100(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_launcher_content_color_key"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;->onLauncherContentColorChange(I)V

    goto :goto_0

    .line 88
    :cond_0
    const-string v2, "LauncherColorController"

    const-string v3, "mContentResolver is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    const-string v2, "LauncherColorController"

    const-string v3, "callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v0    # "callback":Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;
    :cond_2
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$100(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$100(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->CONTENT_URI_CONTENT_COLOR:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$200(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$100(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorObserver;->this$0:Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;

    # getter for: Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->CONTENT_URI_MAIN_COLOR:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;->access$300(Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "LauncherColorController"

    const-string v1, "mContentResolver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
