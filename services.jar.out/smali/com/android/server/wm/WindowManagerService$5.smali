.class Lcom/android/server/wm/WindowManagerService$5;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1070
    const-string/jumbo v0, "persist.sys.powersave.rotate"

    .line 1071
    .local v0, "PROP":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.powersave.rotate"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1073
    .local v1, "flags":I
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "# onLowPowerModeChanged # enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    if-eqz p1, :cond_1

    .line 1076
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1077
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 1078
    const/4 v1, 0x1

    .line 1089
    :cond_0
    :goto_0
    const-string/jumbo v2, "persist.sys.powersave.rotate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    return-void

    .line 1081
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1082
    if-eqz v1, :cond_2

    .line 1083
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$5;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 1086
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
