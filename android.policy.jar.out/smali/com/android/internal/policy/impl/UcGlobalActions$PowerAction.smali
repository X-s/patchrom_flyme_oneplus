.class final Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;
.super Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UcGlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 2

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    .line 467
    const v0, 0x1080030

    const v1, 0x1040142

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/UcGlobalActions$SinglePressAction;-><init>(II)V

    .line 469
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;Lcom/android/internal/policy/impl/UcGlobalActions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/UcGlobalActions;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/UcGlobalActions$1;

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;-><init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    .line 474
    return v1
.end method

.method public onPress()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$200(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_quickboot"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 492
    .local v0, "quickbootEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # invokes: Lcom/android/internal/policy/impl/UcGlobalActions;->startQuickBoot()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$1000(Lcom/android/internal/policy/impl/UcGlobalActions;)V

    .line 498
    :goto_1
    return-void

    .end local v0    # "quickbootEnabled":Z
    :cond_0
    move v0, v1

    .line 489
    goto :goto_0

    .line 497
    .restart local v0    # "quickbootEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcGlobalActions$PowerAction;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$900(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_1
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    return v0
.end method
