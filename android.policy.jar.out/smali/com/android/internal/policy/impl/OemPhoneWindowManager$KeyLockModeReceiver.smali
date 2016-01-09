.class Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyLockModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;->this$0:Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 557
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KeyLockMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 558
    .local v0, "nMode":I
    # getter for: Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyLockModeReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    sput v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    .line 561
    return-void
.end method
