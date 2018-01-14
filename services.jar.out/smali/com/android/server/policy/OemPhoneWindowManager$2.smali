.class Lcom/android/server/policy/OemPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$2;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$2;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->-get7(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$2;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->-get6(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$2;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->-set5(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 342
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$2;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap4(Lcom/android/server/policy/OemPhoneWindowManager;ILandroid/view/KeyEvent;)V

    goto :goto_0
.end method
